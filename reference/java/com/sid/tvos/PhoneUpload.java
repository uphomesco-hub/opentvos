package com.sid.tvos;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class PhoneUpload {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static ServerSocket server;

    public interface Callback {
    }

    private static boolean handle(Context context, Socket socket, final Callback callback) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(socket.getInputStream());
        String strLine = line(bufferedInputStream);
        if (strLine == null) {
            return false;
        }
        int i2 = 0;
        while (true) {
            String strLine2 = line(bufferedInputStream);
            if (strLine2 == null || strLine2.isEmpty()) {
                break;
            }
            if (strLine2.toLowerCase(Locale.ROOT).startsWith("content-length:")) {
                i2 = Integer.parseInt(strLine2.substring(15).trim());
            }
        }
        OutputStream outputStream = socket.getOutputStream();
        if (!strLine.startsWith("POST /upload")) {
            reply(outputStream, "200 OK", "text/html; charset=utf-8", "<!doctype html><html><head><meta charset=utf-8><meta name=viewport content='width=device-width,initial-scale=1'><title>tvOS Launcher</title><style>body{margin:0;min-height:100vh;display:flex;align-items:center;justify-content:center;font-family:-apple-system,system-ui,sans-serif;background:linear-gradient(135deg,#1c1c1e,#3a3a3c);color:#fff}main{width:min(88vw,420px);text-align:center}h1{font-size:26px;margin:0 0 8px}p{color:#c7c7cc;margin:0 0 28px;line-height:1.4}label{display:block;padding:18px;border-radius:16px;background:#fff;color:#1c1c1e;font-weight:600;font-size:18px}input{display:none}#s{margin-top:22px;font-weight:600;min-height:1.4em}</style></head><body><main><h1>Send a picture to your TV</h1><p>It becomes the Continue Watching background.</p><label>Choose a picture<input id=f type=file accept='image/*'></label><div id=s></div></main><script>f.onchange=async()=>{const x=f.files[0];if(!x)return;s.textContent='Sending…';try{const r=await fetch('/upload',{method:'POST',body:x});s.textContent=r.ok?'Done! Look at your TV.':await r.text();}catch(e){s.textContent='Could not reach the TV. Try again from Settings.';}};</script></body></html>");
            return false;
        }
        if (i2 <= 0 || i2 > 31457280) {
            reply(outputStream, "413 Too Large", "text/plain", "That picture is too big.");
            return false;
        }
        File file = new File(context.getCacheDir(), "upload.tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            byte[] bArr = new byte[16384];
            while (i2 > 0) {
                int i3 = bufferedInputStream.read(bArr, 0, Math.min(16384, i2));
                if (i3 < 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i3);
                i2 -= i3;
            }
            fileOutputStream.close();
            final boolean picture = CwBackground.setPicture(context, file);
            file.delete();
            reply(outputStream, picture ? "200 OK" : "415 Unsupported", "text/plain", picture ? "ok" : "That file isn't a picture.");
            MAIN.post(new Runnable() { // from class: com.sid.tvos.f0
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneUpload.lambda$handle$1(callback, picture);
                }
            });
            return picture;
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handle$1(Callback callback, boolean z2) {
        ((C0015p) callback).b(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$start$0(ServerSocket serverSocket, Context context, Callback callback) {
        while (!serverSocket.isClosed()) {
            try {
                Socket socketAccept = serverSocket.accept();
                try {
                    socketAccept.setSoTimeout(30000);
                    if (handle(context, socketAccept, callback)) {
                        stop();
                    }
                    socketAccept.close();
                } catch (Throwable th) {
                    if (socketAccept != null) {
                        try {
                            socketAccept.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Exception unused) {
            }
        }
    }

    private static String line(InputStream inputStream) throws IOException {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            i2 = inputStream.read();
            if (i2 == -1 || i2 == 10) {
                break;
            }
            if (i2 != 13) {
                byteArrayOutputStream.write(i2);
            }
        }
        if (i2 == -1 && byteArrayOutputStream.size() == 0) {
            return null;
        }
        return byteArrayOutputStream.toString("UTF-8");
    }

    private static String localIp() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.isUp() && !networkInterface.isLoopback()) {
                    for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                        if ((inetAddress instanceof Inet4Address) && inetAddress.isSiteLocalAddress()) {
                            return inetAddress.getHostAddress();
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void reply(OutputStream outputStream, String str, String str2, String str3) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = str3.getBytes(charset);
        outputStream.write(("HTTP/1.1 " + str + "\r\nContent-Type: " + str2 + "\r\nContent-Length: " + bytes.length + "\r\nConnection: close\r\n\r\n").getBytes(charset));
        outputStream.write(bytes);
        outputStream.flush();
    }

    public static synchronized String start(Context context, Callback callback) {
        String strLocalIp = localIp();
        if (strLocalIp == null) {
            return null;
        }
        ServerSocket serverSocket = server;
        if (serverSocket != null && !serverSocket.isClosed()) {
            return "http://" + strLocalIp + ":8765";
        }
        try {
            ServerSocket serverSocket2 = new ServerSocket(8765);
            server = serverSocket2;
            new Thread(new RunnableC0012m(serverSocket2, context.getApplicationContext(), callback, 4), "phone-upload").start();
            MAIN.postDelayed(new e0(), 600000L);
            return "http://" + strLocalIp + ":8765";
        } catch (Exception unused) {
            return null;
        }
    }

    public static synchronized void stop() {
        MAIN.removeCallbacksAndMessages(null);
        ServerSocket serverSocket = server;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Exception unused) {
            }
            server = null;
        }
    }
}
