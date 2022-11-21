package p222x5;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* renamed from: x5.b0 */
/* loaded from: classes2.dex */
public class C7332b0 {
    /* renamed from: a */
    public static void m1830a(InputStream inputStream, File file) {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream2.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream2.finish();
                        C7341g.m1790f(gZIPOutputStream2);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    C7341g.m1790f(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    public static void m1829b(File file, List<InterfaceC7330a0> list) {
        for (InterfaceC7330a0 interfaceC7330a0 : list) {
            InputStream inputStream = null;
            try {
                inputStream = interfaceC7330a0.mo1617b();
                if (inputStream != null) {
                    m1830a(inputStream, new File(file, interfaceC7330a0.mo1618a()));
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                C7341g.m1790f(null);
                throw th;
            }
            C7341g.m1790f(inputStream);
        }
    }
}
