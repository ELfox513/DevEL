package p168r4;

import android.content.Context;
/* renamed from: r4.pq1 */
/* loaded from: classes2.dex */
public final class pq1 implements vr3<C5882ip> {

    /* renamed from: a */
    public final is3<Context> f29556a;

    /* renamed from: b */
    public final is3<String> f29557b;

    /* renamed from: c */
    public final is3<im0> f29558c;

    /* renamed from: d */
    public final is3<EnumC6178qp> f29559d;

    /* renamed from: e */
    public final is3<String> f29560e;

    public pq1(is3<Context> is3Var, is3<String> is3Var2, is3<im0> is3Var3, is3<EnumC6178qp> is3Var4, is3<String> is3Var5) {
        this.f29556a = is3Var;
        this.f29557b = is3Var2;
        this.f29558c = is3Var3;
        this.f29559d = is3Var4;
        this.f29560e = is3Var5;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        int i;
        Context m11050b = ((gu0) this.f29556a).m11050b();
        final String mo4079a = ((lw1) this.f29557b).mo4079a();
        im0 m8207b = ((pu0) this.f29558c).m8207b();
        final EnumC6178qp mo4079a2 = this.f29559d.mo4079a();
        final String mo4079a3 = this.f29560e.mo4079a();
        C5882ip c5882ip = new C5882ip(new C6029mp(m11050b));
        C5885is m10203C = C5921js.m10203C();
        m10203C.m10552v(m8207b.f25172b);
        m10203C.m10551x(m8207b.f25173d);
        if (true != m8207b.f25174k) {
            i = 2;
        } else {
            i = 0;
        }
        m10203C.m10550z(i);
        final C5921js m9614o = m10203C.m9614o();
        c5882ip.m10582b(new InterfaceC5845hp(mo4079a2, mo4079a, m9614o, mo4079a3) { // from class: r4.oq1

            /* renamed from: a */
            public final EnumC6178qp f29108a;

            /* renamed from: b */
            public final String f29109b;

            /* renamed from: c */
            public final C5921js f29110c;

            /* renamed from: d */
            public final String f29111d;

            {
                this.f29108a = mo4079a2;
                this.f29109b = mo4079a;
                this.f29110c = m9614o;
                this.f29111d = mo4079a3;
            }

            @Override // p168r4.InterfaceC5845hp
            /* renamed from: a */
            public final void mo6727a(C6438xq c6438xq) {
                EnumC6178qp enumC6178qp = this.f29108a;
                String str = this.f29109b;
                C5921js c5921js = this.f29110c;
                String str2 = this.f29111d;
                C6215rp m8250x = c6438xq.m5177D().m8250x();
                m8250x.m7403v(enumC6178qp);
                c6438xq.m5176E(m8250x);
                C6142pq m8250x2 = c6438xq.m5179B().m8250x();
                m8250x2.m8224v(str);
                m8250x2.m8223x(c5921js);
                c6438xq.m5178C(m8250x2);
                c6438xq.m5171x(str2);
            }
        });
        return c5882ip;
    }
}
