package p168r4;
/* renamed from: r4.g74 */
/* loaded from: classes2.dex */
public final class g74 implements f74 {

    /* renamed from: a */
    public final d04 f23931a;

    /* renamed from: b */
    public final d14 f23932b;

    /* renamed from: c */
    public final i74 f23933c;

    /* renamed from: d */
    public final C5713e5 f23934d;

    /* renamed from: e */
    public final int f23935e;

    /* renamed from: f */
    public long f23936f;

    /* renamed from: g */
    public int f23937g;

    /* renamed from: h */
    public long f23938h;

    @Override // p168r4.f74
    /* renamed from: V */
    public final void mo11255V(long j) {
        this.f23936f = j;
        this.f23937g = 0;
        this.f23938h = 0L;
    }

    @Override // p168r4.f74
    /* renamed from: a */
    public final void mo11254a(int i, long j) {
        this.f23931a.mo10798j(new l74(this.f23933c, 1, i, j));
        this.f23932b.mo4004f(this.f23934d);
    }

    @Override // p168r4.f74
    /* renamed from: b */
    public final boolean mo11253b(b04 b04Var, long j) {
        i74 i74Var;
        long j2;
        int i;
        int i2;
        long j3 = j;
        while (j3 > 0 && (i = this.f23937g) < (i2 = this.f23935e)) {
            int m12889a = b14.m12889a(this.f23932b, b04Var, (int) Math.min(i2 - i, j3), true);
            if (m12889a == -1) {
                j3 = 0;
            } else {
                this.f23937g += m12889a;
                j3 -= m12889a;
            }
        }
        int i3 = this.f23933c.f25002d;
        int i4 = this.f23937g / i3;
        if (i4 > 0) {
            long j4 = this.f23936f;
            long m9698h = C5979lc.m9698h(this.f23938h, 1000000L, i74Var.f25001c);
            int i5 = i4 * i3;
            int i6 = this.f23937g - i5;
            this.f23932b.mo4005e(j4 + m9698h, 1, i5, i6, null);
            this.f23938h += i4;
            this.f23937g = i6;
            j2 = 0;
        } else {
            j2 = 0;
        }
        if (j3 <= j2) {
            return true;
        }
        return false;
    }

    public g74(d04 d04Var, d14 d14Var, i74 i74Var, String str, int i) {
        this.f23931a = d04Var;
        this.f23932b = d14Var;
        this.f23933c = i74Var;
        int i2 = (i74Var.f25000b * i74Var.f25003e) / 8;
        int i3 = i74Var.f25002d;
        if (i3 == i2) {
            int i4 = i74Var.f25001c * i2;
            int i5 = i4 * 8;
            int max = Math.max(i2, i4 / 10);
            this.f23935e = max;
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n(str);
            c5639c5.m12569i(i5);
            c5639c5.m12568j(i5);
            c5639c5.m12563o(max);
            c5639c5.m12610B(i74Var.f25000b);
            c5639c5.m12609C(i74Var.f25001c);
            c5639c5.m12608D(i);
            this.f23934d = c5639c5.m12603I();
            return;
        }
        StringBuilder sb = new StringBuilder(50);
        sb.append("Expected block size: ");
        sb.append(i2);
        sb.append("; got: ");
        sb.append(i3);
        throw C5973l6.m9787b(sb.toString(), null);
    }
}
