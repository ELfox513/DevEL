package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* renamed from: r4.yi3 */
/* loaded from: classes2.dex */
public abstract class yi3 implements uj3 {

    /* renamed from: c */
    public static final int[] f34099c = m4682i(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a */
    public int[] f34100a;

    /* renamed from: b */
    public final int f34101b;

    @Override // p168r4.uj3
    /* renamed from: a */
    public final byte[] mo4690a(byte[] bArr) {
        int length = bArr.length;
        if (length <= Integer.MAX_VALUE - mo4688c()) {
            ByteBuffer allocate = ByteBuffer.allocate(mo4688c() + length);
            m4687d(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: b */
    public abstract int[] mo4689b(int[] iArr, int i);

    /* renamed from: c */
    public abstract int mo4688c();

    /* renamed from: f */
    public static void m4685f(int[] iArr, int[] iArr2) {
        int[] iArr3 = f34099c;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    /* renamed from: g */
    public static void m4684g(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m4683h(iArr, 0, 4, 8, 12);
            m4683h(iArr, 1, 5, 9, 13);
            m4683h(iArr, 2, 6, 10, 14);
            m4683h(iArr, 3, 7, 11, 15);
            m4683h(iArr, 0, 5, 10, 15);
            m4683h(iArr, 1, 6, 11, 12);
            m4683h(iArr, 2, 7, 8, 13);
            m4683h(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: h */
    public static void m4683h(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = iArr[i] + iArr[i2];
        iArr[i] = i5;
        int i6 = i5 ^ iArr[i4];
        int i7 = (i6 >>> (-16)) | (i6 << 16);
        iArr[i4] = i7;
        int i8 = iArr[i3] + i7;
        iArr[i3] = i8;
        int i9 = iArr[i2] ^ i8;
        int i10 = (i9 >>> (-12)) | (i9 << 12);
        iArr[i2] = i10;
        int i11 = iArr[i] + i10;
        iArr[i] = i11;
        int i12 = iArr[i4] ^ i11;
        int i13 = (i12 >>> (-8)) | (i12 << 8);
        iArr[i4] = i13;
        int i14 = iArr[i3] + i13;
        iArr[i3] = i14;
        int i15 = iArr[i2] ^ i14;
        iArr[i2] = (i15 >>> (-7)) | (i15 << 7);
    }

    public yi3(byte[] bArr, int i) {
        if (bArr.length == 32) {
            this.f34100a = m4682i(bArr);
            this.f34101b = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    /* renamed from: i */
    public static int[] m4682i(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* renamed from: d */
    public final void m4687d(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - mo4688c() >= bArr.length) {
            byte[] m12766a = bk3.m12766a(mo4688c());
            byteBuffer.put(m12766a);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer m4686e = m4686e(m12766a, this.f34101b + i2);
                if (i2 == i - 1) {
                    wi3.m5713c(byteBuffer, wrap, m4686e, remaining % 64);
                } else {
                    wi3.m5713c(byteBuffer, wrap, m4686e, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    /* renamed from: e */
    public final ByteBuffer m4686e(byte[] bArr, int i) {
        int[] mo4689b = mo4689b(m4682i(bArr), i);
        int[] iArr = (int[]) mo4689b.clone();
        m4684g(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            mo4689b[i2] = mo4689b[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(mo4689b, 0, 16);
        return order;
    }
}
