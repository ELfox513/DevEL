package p026c4;

import androidx.annotation.RecentlyNonNull;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* renamed from: c4.m */
/* loaded from: classes.dex */
public final class C1052m {
    /* renamed from: a */
    public static void m24745a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    public static long m24744b(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream) {
        return m24743c(inputStream, outputStream, false, 1024);
    }

    @Deprecated
    /* renamed from: c */
    public static long m24743c(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream, boolean z, int i) {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                j += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    m24745a(inputStream);
                    m24745a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            m24745a(inputStream);
            m24745a(outputStream);
        }
        return j;
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: d */
    public static byte[] m24742d(@RecentlyNonNull InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m24743c(inputStream, byteArrayOutputStream, z, 1024);
        return byteArrayOutputStream.toByteArray();
    }
}
