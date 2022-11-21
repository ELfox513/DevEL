package p168r4;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.on1 */
/* loaded from: classes2.dex */
public final class on1 extends i40 {

    /* renamed from: a */
    public final String f29080a;

    /* renamed from: b */
    public final zi1 f29081b;

    /* renamed from: d */
    public final ej1 f29082d;

    public on1(String str, zi1 zi1Var, ej1 ej1Var) {
        this.f29080a = str;
        this.f29081b = zi1Var;
        this.f29082d = ej1Var;
    }

    @Override // p168r4.j40
    /* renamed from: B */
    public final void mo8752B() {
        this.f29081b.m4225O();
    }

    @Override // p168r4.j40
    /* renamed from: E */
    public final InterfaceC3512a mo8751E() {
        return this.f29082d.m11752j();
    }

    @Override // p168r4.j40
    /* renamed from: E3 */
    public final void mo8750E3(Bundle bundle) {
        this.f29081b.m4235E(bundle);
    }

    @Override // p168r4.j40
    /* renamed from: G */
    public final m20 mo8749G() {
        return this.f29081b.m4210p().m12769a();
    }

    @Override // p168r4.j40
    /* renamed from: J */
    public final boolean mo8747J() {
        return this.f29081b.m4218h();
    }

    @Override // p168r4.j40
    /* renamed from: K */
    public final Bundle mo8746K() {
        return this.f29082d.m11759f();
    }

    @Override // p168r4.j40
    /* renamed from: L */
    public final void mo8745L() {
        this.f29081b.m4222R();
    }

    @Override // p168r4.j40
    /* renamed from: N */
    public final void mo8744N() {
        this.f29081b.m4219g();
    }

    @Override // p168r4.j40
    /* renamed from: c */
    public final String mo8743c() {
        return this.f29082d.m11754h0();
    }

    @Override // p168r4.j40
    /* renamed from: d */
    public final List<?> mo8742d() {
        return this.f29082d.m11769a();
    }

    @Override // p168r4.j40
    /* renamed from: f */
    public final p20 mo8741f() {
        return this.f29082d.m11748n();
    }

    @Override // p168r4.j40
    /* renamed from: g */
    public final String mo8740g() {
        return this.f29082d.m11761e();
    }

    @Override // p168r4.j40
    /* renamed from: h */
    public final String mo8739h() {
        return this.f29082d.m11747o();
    }

    @Override // p168r4.j40
    /* renamed from: i */
    public final double mo8738i() {
        return this.f29082d.m11749m();
    }

    @Override // p168r4.j40
    /* renamed from: j */
    public final String mo8737j() {
        return this.f29082d.m11757g();
    }

    @Override // p168r4.j40
    /* renamed from: k */
    public final String mo8736k() {
        return this.f29082d.m11751k();
    }

    @Override // p168r4.j40
    /* renamed from: k1 */
    public final void mo8735k1(g40 g40Var) {
        this.f29081b.m4226N(g40Var);
    }

    @Override // p168r4.j40
    /* renamed from: l */
    public final String mo8734l() {
        return this.f29082d.m11750l();
    }

    @Override // p168r4.j40
    /* renamed from: m */
    public final h20 mo8733m() {
        return this.f29082d.m11758f0();
    }

    @Override // p168r4.j40
    /* renamed from: o */
    public final void mo8732o() {
        this.f29081b.mo4220b();
    }

    @Override // p168r4.j40
    /* renamed from: p */
    public final InterfaceC6000lx mo8731p() {
        return this.f29082d.m11760e0();
    }

    @Override // p168r4.j40
    /* renamed from: p4 */
    public final void mo8730p4(InterfaceC6222rw interfaceC6222rw) {
        this.f29081b.m4223Q(interfaceC6222rw);
    }

    @Override // p168r4.j40
    /* renamed from: q */
    public final String mo8729q() {
        return this.f29080a;
    }

    @Override // p168r4.j40
    /* renamed from: r5 */
    public final void mo8728r5(Bundle bundle) {
        this.f29081b.m4237C(bundle);
    }

    @Override // p168r4.j40
    /* renamed from: s3 */
    public final void mo8727s3(InterfaceC5742ex interfaceC5742ex) {
        this.f29081b.m4209q(interfaceC5742ex);
    }

    @Override // p168r4.j40
    /* renamed from: t */
    public final InterfaceC3512a mo8726t() {
        return BinderC3514b.m18741L0(this.f29081b);
    }

    @Override // p168r4.j40
    /* renamed from: v3 */
    public final void mo8724v3(InterfaceC6333uw interfaceC6333uw) {
        this.f29081b.m4224P(interfaceC6333uw);
    }

    @Override // p168r4.j40
    /* renamed from: x4 */
    public final boolean mo8723x4(Bundle bundle) {
        return this.f29081b.m4236D(bundle);
    }

    @Override // p168r4.j40
    /* renamed from: I */
    public final InterfaceC5853hx mo8748I() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue()) {
            return null;
        }
        return this.f29081b.m10732d();
    }

    @Override // p168r4.j40
    /* renamed from: z */
    public final boolean mo8722z() {
        if (!this.f29082d.m11765c().isEmpty() && this.f29082d.m11763d() != null) {
            return true;
        }
        return false;
    }

    @Override // p168r4.j40
    /* renamed from: v */
    public final List<?> mo8725v() {
        if (mo8722z()) {
            return this.f29082d.m11765c();
        }
        return Collections.emptyList();
    }
}
