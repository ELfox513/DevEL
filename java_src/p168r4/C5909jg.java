package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.jg */
/* loaded from: classes2.dex */
public final class C5909jg {

    /* renamed from: d */
    public static final long[] f26017d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f26018a = new byte[8];

    /* renamed from: b */
    public int f26019b;

    /* renamed from: c */
    public int f26020c;

    /* renamed from: c */
    public static int m10291c(int i) {
        int i2 = 0;
        while (i2 < 8) {
            int i3 = ((f26017d[i2] & i) > 0L ? 1 : ((f26017d[i2] & i) == 0L ? 0 : -1));
            i2++;
            if (i3 != 0) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static long m10290d(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= f26017d[i - 1] ^ (-1);
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    /* renamed from: a */
    public final void m10293a() {
        this.f26019b = 0;
        this.f26020c = 0;
    }

    /* renamed from: b */
    public final int m10292b() {
        return this.f26020c;
    }

    /* renamed from: e */
    public final long m10289e(C6094of c6094of, boolean z, boolean z2, int i) {
        if (this.f26019b == 0) {
            if (!c6094of.m8817b(this.f26018a, 0, 1, z)) {
                return -1L;
            }
            int m10291c = m10291c(this.f26018a[0] & DefaultClassResolver.NAME);
            this.f26020c = m10291c;
            if (m10291c != -1) {
                this.f26019b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f26020c;
        if (i2 > i) {
            this.f26019b = 0;
            return -2L;
        }
        if (i2 != 1) {
            c6094of.m8817b(this.f26018a, 1, i2 - 1, false);
        }
        this.f26019b = 0;
        return m10290d(this.f26018a, this.f26020c, z2);
    }
}
