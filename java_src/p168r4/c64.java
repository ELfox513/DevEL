package p168r4;
/* renamed from: r4.c64 */
/* loaded from: classes2.dex */
public final class c64 implements m64 {

    /* renamed from: a */
    public C5713e5 f21419a;

    /* renamed from: b */
    public C5758fc f21420b;

    /* renamed from: c */
    public d14 f21421c;

    public c64(String str) {
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n(str);
        this.f21419a = c5639c5.m12603I();
    }

    @Override // p168r4.m64
    /* renamed from: b */
    public final void mo6603b(C5758fc c5758fc, d04 d04Var, z64 z64Var) {
        this.f21420b = c5758fc;
        z64Var.m4416a();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 5);
        this.f21421c = mo10795r;
        mo10795r.mo4004f(this.f21419a);
    }

    @Override // p168r4.m64
    /* renamed from: c */
    public final void mo6602c(C6423xb c6423xb) {
        C5903ja.m10370e(this.f21420b);
        int i = C5979lc.f27164a;
        long m11583b = this.f21420b.m11583b();
        long m11582c = this.f21420b.m11582c();
        if (m11583b != -9223372036854775807L && m11582c != -9223372036854775807L) {
            C5713e5 c5713e5 = this.f21419a;
            if (m11582c != c5713e5.f22818p) {
                C5639c5 m11856a = c5713e5.m11856a();
                m11856a.m12560r(m11582c);
                C5713e5 m12603I = m11856a.m12603I();
                this.f21419a = m12603I;
                this.f21421c.mo4004f(m12603I);
            }
            int m5407l = c6423xb.m5407l();
            b14.m12888b(this.f21421c, c6423xb, m5407l);
            this.f21421c.mo4005e(m11583b, 1, m5407l, 0, null);
        }
    }
}
