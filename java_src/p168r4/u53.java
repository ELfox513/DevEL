package p168r4;

import com.esotericsoftware.kryo.util.Util;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: r4.u53 */
/* loaded from: classes2.dex */
public final class u53 {

    /* renamed from: a */
    public static final OutputStream f32185a = new t53();

    /* renamed from: b */
    public static byte[] m6635b(Queue<byte[]> queue, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] remove = queue.remove();
            int min = Math.min(i2, remove.length);
            System.arraycopy(remove, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m6636a(InputStream inputStream) {
        inputStream.getClass();
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        while (i2 < 2147483639) {
            int min = Math.min(i, Util.maxArraySize - i2);
            byte[] bArr = new byte[min];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < min) {
                int read = inputStream.read(bArr, i3, min - i3);
                if (read == -1) {
                    return m6635b(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            long j = i;
            long j2 = j + j;
            if (j2 > 2147483647L) {
                i = Integer.MAX_VALUE;
            } else if (j2 < -2147483648L) {
                i = Integer.MIN_VALUE;
            } else {
                i = (int) j2;
            }
        }
        if (inputStream.read() == -1) {
            return m6635b(arrayDeque, Util.maxArraySize);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
