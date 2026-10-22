import java.io.*;
import java.nio.file.*;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.writer.builder.DexBuilder;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;
import brut.androlib.smali.SmaliBuilder;
import brut.androlib.smali.SmaliDecoder;
class DexTools {
 public static void main(String[] a) throws Exception {
  if (a[0].equals("assemble")) {
   DexBuilder dex=new DexBuilder(new Opcodes(30));
   SmaliBuilder builder=new SmaliBuilder(30);
   try (java.util.stream.Stream<Path> paths=Files.walk(Path.of(a[1]))) {
    for (Path p : (Iterable<Path>)paths.filter(p->p.toString().endsWith(".smali")).sorted()::iterator)
     if(!builder.buildFile(p.toFile(),dex))throw new IllegalStateException("Cannot assemble "+p);
   }
   FileDataStore store=new FileDataStore(new File(a[2]));
   try {dex.writeTo(store);}finally {store.raf.close();}
  } else {
   byte[] bytes=Files.readAllBytes(Path.of(a[1]));
   new File(a[2]).mkdirs();
   Path carrier=Files.createTempFile("yash-dex-", ".zip");
   try {
    try(java.util.zip.ZipOutputStream z=new java.util.zip.ZipOutputStream(Files.newOutputStream(carrier))) {
     z.putNextEntry(new java.util.zip.ZipEntry("classes.dex"));z.write(bytes);z.closeEntry();
    }
    new SmaliDecoder(carrier.toFile(),true).decodeFile(new DexBackedDexFile(bytes,0),new File(a[2]));
   } finally {Files.deleteIfExists(carrier);}
  }
 }
}
