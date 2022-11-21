package p168r4;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* renamed from: r4.wi3 */
/* loaded from: classes2.dex */
public final class wi3 {
    /* renamed from: a */
    public static byte[] m5715a(byte[]... bArr) {
        int i = 0;
        for (byte[] bArr2 : bArr) {
            int length = bArr2.length;
            if (i <= Integer.MAX_VALUE - length) {
                i += length;
            } else {
                throw new GeneralSecurityException("exceeded size limit");
            }
        }
        byte[] bArr3 = new byte[i];
        int i2 = 0;
        for (byte[] bArr4 : bArr) {
            int length2 = bArr4.length;
            System.arraycopy(bArr4, 0, bArr3, i2, length2);
            i2 += length2;
        }
        return bArr3;
    }

    /* renamed from: b */
    public static final byte[] m5714b(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr.length - i3 >= i && bArr2.length - i3 >= i2) {
            byte[] bArr3 = new byte[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                bArr3[i4] = (byte) (bArr[i4 + i] ^ bArr2[i4 + i2]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
    }

    /* renamed from: d */
    public static final byte[] m5712d(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length == bArr2.length) {
            return m5714b(bArr, 0, bArr2, 0, length);
        }
        throw new IllegalArgumentException("The lengths of x and y should match.");
    }

    /* renamed from: c */
    public static final void m5713c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i) {
        if (i >= 0 && byteBuffer2.remaining() >= i && byteBuffer3.remaining() >= i && byteBuffer.remaining() >= i) {
            for (int i2 = 0; i2 < i; i2++) {
                byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
            }
            return;
        }
        throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
    }
}
