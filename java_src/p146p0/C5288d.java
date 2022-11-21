package p146p0;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
/* renamed from: p0.d */
/* loaded from: classes.dex */
public class C5288d {
    @SuppressLint({"LambdaLast"})
    /* renamed from: a */
    public static void m13635a(ReadableByteChannel readableByteChannel, FileChannel fileChannel) {
        try {
            if (Build.VERSION.SDK_INT > 23) {
                fileChannel.transferFrom(readableByteChannel, 0L, Long.MAX_VALUE);
            } else {
                InputStream newInputStream = Channels.newInputStream(readableByteChannel);
                OutputStream newOutputStream = Channels.newOutputStream(fileChannel);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = newInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    newOutputStream.write(bArr, 0, read);
                }
            }
            fileChannel.force(false);
        } finally {
            readableByteChannel.close();
            fileChannel.close();
        }
    }
}
