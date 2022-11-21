package p168r4;

import java.util.Arrays;
/* renamed from: r4.yk */
/* loaded from: classes2.dex */
public final class C6469yk {

    /* renamed from: a */
    public int f34116a;

    /* renamed from: b */
    public long[] f34117b = new long[32];

    public C6469yk(int i) {
    }

    /* renamed from: c */
    public final int m4658c() {
        return this.f34116a;
    }

    /* renamed from: a */
    public final void m4660a(long j) {
        int i = this.f34116a;
        long[] jArr = this.f34117b;
        if (i == jArr.length) {
            this.f34117b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.f34117b;
        int i2 = this.f34116a;
        this.f34116a = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: b */
    public final long m4659b(int i) {
        if (i >= 0 && i < this.f34116a) {
            return this.f34117b[i];
        }
        int i2 = this.f34116a;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i);
        sb.append(", size is ");
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }
}
