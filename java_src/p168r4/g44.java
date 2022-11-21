package p168r4;
/* renamed from: r4.g44 */
/* loaded from: classes2.dex */
public final class g44 {

    /* renamed from: a */
    public final d44 f23876a;

    /* renamed from: b */
    public final int f23877b;

    /* renamed from: c */
    public final long[] f23878c;

    /* renamed from: d */
    public final int[] f23879d;

    /* renamed from: e */
    public final int f23880e;

    /* renamed from: f */
    public final long[] f23881f;

    /* renamed from: g */
    public final int[] f23882g;

    /* renamed from: h */
    public final long f23883h;

    /* renamed from: a */
    public final int m11293a(long j) {
        for (int m9704d = C5979lc.m9704d(this.f23881f, j, true, false); m9704d >= 0; m9704d--) {
            if ((this.f23882g[m9704d] & 1) != 0) {
                return m9704d;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m11292b(long j) {
        for (int m9702e = C5979lc.m9702e(this.f23881f, j, true, false); m9702e < this.f23881f.length; m9702e++) {
            if ((this.f23882g[m9702e] & 1) != 0) {
                return m9702e;
            }
        }
        return -1;
    }

    public g44(d44 d44Var, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z;
        boolean z2;
        int length = iArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        int length3 = jArr.length;
        if (length3 == length2) {
            z2 = true;
        } else {
            z2 = false;
        }
        C5903ja.m10374a(z2);
        int length4 = iArr2.length;
        C5903ja.m10374a(length4 == length2);
        this.f23876a = d44Var;
        this.f23878c = jArr;
        this.f23879d = iArr;
        this.f23880e = i;
        this.f23881f = jArr2;
        this.f23882g = iArr2;
        this.f23883h = j;
        this.f23877b = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | 536870912;
        }
    }
}
