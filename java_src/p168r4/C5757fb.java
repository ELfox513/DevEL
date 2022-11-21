package p168r4;

import java.util.Arrays;
/* renamed from: r4.fb */
/* loaded from: classes2.dex */
public final class C5757fb {

    /* renamed from: a */
    public int f23437a;

    /* renamed from: b */
    public long[] f23438b = new long[32];

    public C5757fb(int i) {
    }

    /* renamed from: c */
    public final int m11591c() {
        return this.f23437a;
    }

    /* renamed from: a */
    public final void m11593a(long j) {
        int i = this.f23437a;
        long[] jArr = this.f23438b;
        if (i == jArr.length) {
            this.f23438b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f23438b;
        int i2 = this.f23437a;
        this.f23437a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public final long m11592b(int i) {
        if (i >= 0 && i < this.f23437a) {
            return this.f23438b[i];
        }
        int i2 = this.f23437a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }
}
