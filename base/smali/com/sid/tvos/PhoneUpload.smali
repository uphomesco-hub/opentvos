.class abstract Lcom/sid/tvos/PhoneUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/PhoneUpload$Callback;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static server:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sid/tvos/PhoneUpload;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Ljava/net/ServerSocket;Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/PhoneUpload;->lambda$start$0(Ljava/net/ServerSocket;Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)V

    return-void
.end method

.method public static synthetic b(Lcom/sid/tvos/PhoneUpload$Callback;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/PhoneUpload;->lambda$handle$1(Lcom/sid/tvos/PhoneUpload$Callback;Z)V

    return-void
.end method

.method private static handle(Landroid/content/Context;Ljava/net/Socket;Lcom/sid/tvos/PhoneUpload$Callback;)Z
    .locals 10

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/sid/tvos/PhoneUpload;->line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sid/tvos/PhoneUpload;->line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content-length:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v4, "POST /upload"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "200 OK"

    if-eqz v1, :cond_9

    const-string v1, "text/plain"

    if-lez v3, :cond_8

    const/high16 v5, 0x1e00000

    if-le v3, v5, :cond_3

    goto :goto_7

    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "upload.tmp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x4000

    :try_start_0
    new-array v8, v7, [B

    :goto_1
    if-lez v3, :cond_5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v0, v8, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-gez v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v8, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v3, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p0, v5}, Lcom/sid/tvos/CwBackground;->setPicture(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "415 Unsupported"

    :goto_3
    if-eqz p0, :cond_7

    const-string v0, "ok"

    goto :goto_4

    :cond_7
    const-string v0, "That file isn\'t a picture."

    :goto_4
    invoke-static {p1, v4, v1, v0}, Lcom/sid/tvos/PhoneUpload;->reply(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sid/tvos/PhoneUpload;->MAIN:Landroid/os/Handler;

    new-instance v0, Lcom/sid/tvos/f0;

    invoke-direct {v0, p2, p0}, Lcom/sid/tvos/f0;-><init>(Lcom/sid/tvos/PhoneUpload$Callback;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p0

    :goto_5
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_8
    :goto_7
    const-string p0, "413 Too Large"

    const-string p2, "That picture is too big."

    invoke-static {p1, p0, v1, p2}, Lcom/sid/tvos/PhoneUpload;->reply(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_9
    const-string p0, "text/html; charset=utf-8"

    const-string p2, "<!doctype html><html><head><meta charset=utf-8><meta name=viewport content=\'width=device-width,initial-scale=1\'><title>tvOS Launcher</title><style>body{margin:0;min-height:100vh;display:flex;align-items:center;justify-content:center;font-family:-apple-system,system-ui,sans-serif;background:linear-gradient(135deg,#1c1c1e,#3a3a3c);color:#fff}main{width:min(88vw,420px);text-align:center}h1{font-size:26px;margin:0 0 8px}p{color:#c7c7cc;margin:0 0 28px;line-height:1.4}label{display:block;padding:18px;border-radius:16px;background:#fff;color:#1c1c1e;font-weight:600;font-size:18px}input{display:none}#s{margin-top:22px;font-weight:600;min-height:1.4em}</style></head><body><main><h1>Send a picture to your TV</h1><p>It becomes the Continue Watching background.</p><label>Choose a picture<input id=f type=file accept=\'image/*\'></label><div id=s></div></main><script>f.onchange=async()=>{const x=f.files[0];if(!x)return;s.textContent=\'Sending\u2026\';try{const r=await fetch(\'/upload\',{method:\'POST\',body:x});s.textContent=r.ok?\'Done! Look at your TV.\':await r.text();}catch(e){s.textContent=\'Could not reach the TV. Try again from Settings.\';}};</script></body></html>"

    invoke-static {p1, v4, p0, p2}, Lcom/sid/tvos/PhoneUpload;->reply(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static synthetic lambda$handle$1(Lcom/sid/tvos/PhoneUpload$Callback;Z)V
    .locals 0

    check-cast p0, Lcom/sid/tvos/p;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/p;->b(Z)V

    return-void
.end method

.method private static synthetic lambda$start$0(Ljava/net/ServerSocket;Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x7530

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p1, v0, p2}, Lcom/sid/tvos/PhoneUpload;->handle(Landroid/content/Context;Ljava/net/Socket;Lcom/sid/tvos/PhoneUpload$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sid/tvos/PhoneUpload;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void
.end method

.method private static line(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static localIp()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static reply(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nContent-Type: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nContent-Length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)Ljava/lang/String;
    .locals 8

    const-string v0, ":8765"

    const-string v1, "http://"

    const-string v2, ":8765"

    const-string v3, "http://"

    const-class v4, Lcom/sid/tvos/PhoneUpload;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/sid/tvos/PhoneUpload;->localIp()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-nez v5, :cond_0

    monitor-exit v4

    return-object v6

    :cond_0
    :try_start_1
    sget-object v7, Lcom/sid/tvos/PhoneUpload;->server:Ljava/net/ServerSocket;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x223d

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    sput-object v2, Lcom/sid/tvos/PhoneUpload;->server:Ljava/net/ServerSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/sid/tvos/m;

    const/4 v7, 0x4

    invoke-direct {v6, v2, p0, p1, v7}, Lcom/sid/tvos/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p0, "phone-upload"

    invoke-direct {v3, v6, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    sget-object p0, Lcom/sid/tvos/PhoneUpload;->MAIN:Landroid/os/Handler;

    new-instance p1, Lcom/sid/tvos/e0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object p0

    :catch_0
    monitor-exit v4

    return-object v6

    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcom/sid/tvos/PhoneUpload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sid/tvos/PhoneUpload;->MAIN:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v1, Lcom/sid/tvos/PhoneUpload;->server:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    sput-object v2, Lcom/sid/tvos/PhoneUpload;->server:Ljava/net/ServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
