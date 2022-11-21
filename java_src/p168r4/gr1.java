package p168r4;
/* renamed from: r4.gr1 */
/* loaded from: classes2.dex */
public final class gr1 implements ga1, y81, m71, d81, InterfaceC5812gt, vc1 {

    /* renamed from: a */
    public final C5882ip f24199a;

    /* renamed from: b */
    public boolean f24200b = false;

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(final bp2 bp2Var) {
        this.f24199a.m10582b(new InterfaceC5845hp(bp2Var) { // from class: r4.cr1

            /* renamed from: a */
            public final bp2 f21662a;

            {
                this.f21662a = bp2Var;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                bp2 bp2Var2 = this.f21662a;
                C6215rp m8250x = c6438xq.m5177D().m8250x();
                C5993lq m8250x2 = c6438xq.m5177D().m7075C().m8250x();
                m8250x2.m9585v(bp2Var2.f21154b.f20574b.f31426b);
                m8250x.m7402x(m8250x2);
                c6438xq.m5176E(m8250x);
            }
        });
    }

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final synchronized void mo3609F0() {
        if (!this.f24200b) {
            this.f24199a.m10581c(7);
            this.f24200b = true;
            return;
        }
        this.f24199a.m10581c(8);
    }

    @Override // p168r4.vc1
    /* renamed from: M0 */
    public final void mo5886M0(boolean z) {
        this.f24199a.m10581c(true != z ? 1108 : 1107);
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        this.f24199a.m10581c(3);
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final synchronized void mo5385g() {
        this.f24199a.m10581c(6);
    }

    @Override // p168r4.vc1
    /* renamed from: o */
    public final void mo5882o() {
        this.f24199a.m10581c(1109);
    }

    @Override // p168r4.vc1
    /* renamed from: p */
    public final void mo5881p(boolean z) {
        this.f24199a.m10581c(true != z ? 1106 : 1105);
    }

    @Override // p168r4.vc1
    /* renamed from: A */
    public final void mo5887A(final C5624bq c5624bq) {
        this.f24199a.m10582b(new InterfaceC5845hp(c5624bq) { // from class: r4.er1

            /* renamed from: a */
            public final C5624bq f23127a;

            {
                this.f23127a = c5624bq;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                c6438xq.m5173K(this.f23127a);
            }
        });
        this.f24199a.m10581c(1102);
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        switch (c5996lt.f27361a) {
            case 1:
                this.f24199a.m10581c(101);
                return;
            case 2:
                this.f24199a.m10581c(102);
                return;
            case 3:
                this.f24199a.m10581c(5);
                return;
            case 4:
                this.f24199a.m10581c(103);
                return;
            case 5:
                this.f24199a.m10581c(104);
                return;
            case 6:
                this.f24199a.m10581c(105);
                return;
            case 7:
                this.f24199a.m10581c(106);
                return;
            default:
                this.f24199a.m10581c(4);
                return;
        }
    }

    @Override // p168r4.vc1
    /* renamed from: m0 */
    public final void mo5883m0(final C5624bq c5624bq) {
        this.f24199a.m10582b(new InterfaceC5845hp(c5624bq) { // from class: r4.fr1

            /* renamed from: a */
            public final C5624bq f23650a;

            {
                this.f23650a = c5624bq;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                c6438xq.m5173K(this.f23650a);
            }
        });
        this.f24199a.m10581c(1104);
    }

    @Override // p168r4.vc1
    /* renamed from: v */
    public final void mo5880v(final C5624bq c5624bq) {
        this.f24199a.m10582b(new InterfaceC5845hp(c5624bq) { // from class: r4.dr1

            /* renamed from: a */
            public final C5624bq f22409a;

            {
                this.f22409a = c5624bq;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                c6438xq.m5173K(this.f22409a);
            }
        });
        this.f24199a.m10581c(1103);
    }

    public gr1(C5882ip c5882ip, gm2 gm2Var) {
        this.f24199a = c5882ip;
        c5882ip.m10581c(2);
        if (gm2Var != null) {
            c5882ip.m10581c(1101);
        }
    }
}
