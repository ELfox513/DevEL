package p168r4;

import android.util.Pair;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: r4.w74 */
/* loaded from: classes2.dex */
public final class w74 {
    /* renamed from: g */
    public static long m5805g(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    /* renamed from: a */
    public static Pair<ByteBuffer, Long> m5811a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> m5807e = m5807e(randomAccessFile, 0);
        if (m5807e != null) {
            return m5807e;
        }
        return m5807e(randomAccessFile, MeshBuilder.MAX_INDEX);
    }

    /* renamed from: b */
    public static long m5810b(ByteBuffer byteBuffer) {
        m5806f(byteBuffer);
        return m5805g(byteBuffer, byteBuffer.position() + 16);
    }

    /* renamed from: c */
    public static void m5809c(ByteBuffer byteBuffer, long j) {
        m5806f(byteBuffer);
        int position = byteBuffer.position() + 16;
        if (j >= 0 && j <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position, (int) j);
            return;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("uint32 value of out range: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: d */
    public static long m5808d(ByteBuffer byteBuffer) {
        m5806f(byteBuffer);
        return m5805g(byteBuffer, byteBuffer.position() + 12);
    }

    /* renamed from: e */
    public static Pair<ByteBuffer, Long> m5807e(RandomAccessFile randomAccessFile, int i) {
        int i2;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        m5806f(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, (int) MeshBuilder.MAX_INDEX);
            for (int i4 = 0; i4 < min; i4++) {
                i2 = i3 - i4;
                if (allocate.getInt(i2) == 101010256 && ((char) allocate.getShort(i2 + 20)) == i4) {
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    /* renamed from: f */
    public static void m5806f(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            return;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
}
