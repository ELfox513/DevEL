package p168r4;
/* renamed from: r4.s04 */
/* loaded from: classes2.dex */
public final class s04 implements z04 {

    /* renamed from: a */
    public final long[] f31204a;

    /* renamed from: b */
    public final long[] f31205b;

    /* renamed from: c */
    public final long f31206c;

    /* renamed from: d */
    public final boolean f31207d;

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return this.f31207d;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f31206c;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        if (!this.f31207d) {
            a14 a14Var = a14.f20341c;
            return new x04(a14Var, a14Var);
        }
        int m9704d = C5979lc.m9704d(this.f31205b, j, true, true);
        a14 a14Var2 = new a14(this.f31205b[m9704d], this.f31204a[m9704d]);
        if (a14Var2.f20342a != j) {
            long[] jArr = this.f31205b;
            if (m9704d != jArr.length - 1) {
                int i = m9704d + 1;
                return new x04(a14Var2, new a14(jArr[i], this.f31204a[i]));
            }
        }
        return new x04(a14Var2, a14Var2);
    }

    public s04(long[] jArr, long[] jArr2, long j) {
        boolean z;
        boolean z2;
        int length = jArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        if (length2 > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f31207d = z2;
        if (z2 && jArr2[0] > 0) {
            int i = length2 + 1;
            long[] jArr3 = new long[i];
            this.f31204a = jArr3;
            long[] jArr4 = new long[i];
            this.f31205b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        } else {
            this.f31204a = jArr;
            this.f31205b = jArr2;
        }
        this.f31206c = j;
    }
}
