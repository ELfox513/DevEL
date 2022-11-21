package p111l1;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* renamed from: l1.e */
/* loaded from: classes.dex */
public final class C4558e {
    /* renamed from: a */
    public static boolean m16009a(String str) {
        if (!str.endsWith(".zip") && !str.endsWith(".jar") && !str.endsWith(".apk")) {
            return false;
        }
        return true;
    }

    /* renamed from: b */
    public static byte[] m16008b(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                if (file.canRead()) {
                    long length = file.length();
                    int i = (int) length;
                    if (i == length) {
                        byte[] bArr = new byte[i];
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            int i2 = 0;
                            while (i > 0) {
                                int read = fileInputStream.read(bArr, i2, i);
                                if (read != -1) {
                                    i2 += read;
                                    i -= read;
                                } else {
                                    throw new RuntimeException(file + ": unexpected EOF");
                                }
                            }
                            fileInputStream.close();
                            return bArr;
                        } catch (IOException e) {
                            throw new RuntimeException(file + ": trouble reading", e);
                        }
                    }
                    throw new RuntimeException(file + ": file too long");
                }
                throw new RuntimeException(file + ": file not readable");
            }
            throw new RuntimeException(file + ": not a file");
        }
        throw new RuntimeException(file + ": file not found");
    }
}
