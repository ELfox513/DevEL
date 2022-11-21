package p168r4;

import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.nz1 */
/* loaded from: classes2.dex */
public final class nz1 implements ie1 {

    /* renamed from: d */
    public final String f28744d;

    /* renamed from: k */
    public final xt2 f28745k;

    /* renamed from: a */
    public boolean f28742a = false;

    /* renamed from: b */
    public boolean f28743b = false;

    /* renamed from: p */
    public final InterfaceC0549y1 f28746p = C7601t.m935h().m9051p();

    public nz1(String str, xt2 xt2Var) {
        this.f28744d = str;
        this.f28745k = xt2Var;
    }

    @Override // p168r4.ie1
    /* renamed from: c */
    public final synchronized void mo8958c() {
        if (this.f28743b) {
            return;
        }
        this.f28745k.mo4985a(m8960a("init_finished"));
        this.f28743b = true;
    }

    @Override // p168r4.ie1
    /* renamed from: e */
    public final synchronized void mo8957e() {
        if (this.f28742a) {
            return;
        }
        this.f28745k.mo4985a(m8960a("init_started"));
        this.f28742a = true;
    }

    /* renamed from: a */
    public final wt2 m8960a(String str) {
        String str2;
        if (this.f28746p.mo26190y()) {
            str2 = "";
        } else {
            str2 = this.f28744d;
        }
        wt2 m5590a = wt2.m5590a(str);
        m5590a.m5588c("tms", Long.toString(C7601t.m932k().mo24762b(), 10));
        m5590a.m5588c("tid", str2);
        return m5590a;
    }

    @Override // p168r4.ie1
    /* renamed from: b0 */
    public final void mo8959b0(String str, String str2) {
        xt2 xt2Var = this.f28745k;
        wt2 m8960a = m8960a("adapter_init_finished");
        m8960a.m5588c("ancn", str);
        m8960a.m5588c("rqe", str2);
        xt2Var.mo4985a(m8960a);
    }

    @Override // p168r4.ie1
    /* renamed from: q */
    public final void mo8956q(String str) {
        xt2 xt2Var = this.f28745k;
        wt2 m8960a = m8960a("adapter_init_started");
        m8960a.m5588c("ancn", str);
        xt2Var.mo4985a(m8960a);
    }

    @Override // p168r4.ie1
    /* renamed from: u */
    public final void mo8955u(String str) {
        xt2 xt2Var = this.f28745k;
        wt2 m8960a = m8960a("adapter_init_finished");
        m8960a.m5588c("ancn", str);
        xt2Var.mo4985a(m8960a);
    }
}
