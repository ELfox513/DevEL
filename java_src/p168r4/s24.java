package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.s24 */
/* loaded from: classes2.dex */
public final class s24 {

    /* renamed from: d */
    public static final long[] f31230d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f31231a = new byte[8];

    /* renamed from: b */
    public int f31232b;

    /* renamed from: c */
    public int f31233c;

    /* renamed from: d */
    public static int m7228d(int i) {
        int i2 = 0;
        while (i2 < 8) {
            int i3 = ((f31230d[i2] & i) > 0L ? 1 : ((f31230d[i2] & i) == 0L ? 0 : -1));
            i2++;
            if (i3 != 0) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: e */
    public static long m7227e(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= f31230d[i - 1] ^ (-1);
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    /* renamed from: a */
    public final void m7231a() {
        this.f31232b = 0;
        this.f31233c = 0;
    }

    /* renamed from: c */
    public final int m7229c() {
        return this.f31233c;
    }

    /* renamed from: b */
    public final long m7230b(b04 b04Var, boolean z, boolean z2, int i) {
        if (this.f31232b == 0) {
            if (!b04Var.mo5961f(this.f31231a, 0, 1, z)) {
                return -1L;
            }
            int m7228d = m7228d(this.f31231a[0] & DefaultClassResolver.NAME);
            this.f31233c = m7228d;
            if (m7228d != -1) {
                this.f31232b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f31233c;
        if (i2 > i) {
            this.f31232b = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((vz3) b04Var).mo5961f(this.f31231a, 1, i2 - 1, false);
        }
        this.f31232b = 0;
        return m7227e(this.f31231a, this.f31233c, z2);
    }
}
