package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
/* renamed from: r4.da4 */
/* loaded from: classes2.dex */
public final class da4 {
    /* renamed from: a */
    public static long m12184a(ByteBuffer byteBuffer) {
        long j = byteBuffer.getInt();
        return j < 0 ? j + 4294967296L : j;
    }

    /* renamed from: c */
    public static int m12182c(byte b) {
        return b < 0 ? b + 256 : b;
    }

    /* renamed from: e */
    public static double m12180e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & DefaultClassResolver.NAME);
        Double.isNaN(d);
        return d / 65536.0d;
    }

    /* renamed from: f */
    public static double m12179f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & DefaultClassResolver.NAME);
        Double.isNaN(d);
        return d / 1.073741824E9d;
    }

    /* renamed from: b */
    public static int m12183b(ByteBuffer byteBuffer) {
        return (m12182c(byteBuffer.get()) << 8) + m12182c(byteBuffer.get());
    }

    /* renamed from: d */
    public static long m12181d(ByteBuffer byteBuffer) {
        long m12184a = m12184a(byteBuffer) << 32;
        if (m12184a >= 0) {
            return m12184a + m12184a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
}
