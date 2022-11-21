package p168r4;

import android.os.Bundle;
import java.util.List;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.jn1 */
/* loaded from: classes2.dex */
public final class jn1 extends b30 {

    /* renamed from: a */
    public final String f26081a;

    /* renamed from: b */
    public final zi1 f26082b;

    /* renamed from: d */
    public final ej1 f26083d;

    public jn1(String str, zi1 zi1Var, ej1 ej1Var) {
        this.f26081a = str;
        this.f26082b = zi1Var;
        this.f26083d = ej1Var;
    }

    @Override // p168r4.c30
    /* renamed from: B3 */
    public final boolean mo10246B3(Bundle bundle) {
        return this.f26082b.m4236D(bundle);
    }

    @Override // p168r4.c30
    /* renamed from: U3 */
    public final void mo10245U3(Bundle bundle) {
        this.f26082b.m4237C(bundle);
    }

    @Override // p168r4.c30
    /* renamed from: a */
    public final InterfaceC3512a mo10244a() {
        return BinderC3514b.m18741L0(this.f26082b);
    }

    @Override // p168r4.c30
    /* renamed from: b */
    public final String mo10243b() {
        return this.f26083d.m11754h0();
    }

    @Override // p168r4.c30
    /* renamed from: c */
    public final String mo10242c() {
        return this.f26083d.m11761e();
    }

    @Override // p168r4.c30
    /* renamed from: d */
    public final p20 mo10241d() {
        return this.f26083d.m11746p();
    }

    @Override // p168r4.c30
    /* renamed from: e */
    public final List<?> mo10240e() {
        return this.f26083d.m11769a();
    }

    @Override // p168r4.c30
    /* renamed from: e0 */
    public final void mo10239e0(Bundle bundle) {
        this.f26082b.m4235E(bundle);
    }

    @Override // p168r4.c30
    /* renamed from: f */
    public final String mo10238f() {
        return this.f26083d.m11747o();
    }

    @Override // p168r4.c30
    /* renamed from: g */
    public final String mo10237g() {
        return this.f26083d.m11757g();
    }

    @Override // p168r4.c30
    /* renamed from: h */
    public final void mo10236h() {
        this.f26082b.mo4220b();
    }

    @Override // p168r4.c30
    /* renamed from: i */
    public final InterfaceC6000lx mo10235i() {
        return this.f26083d.m11760e0();
    }

    @Override // p168r4.c30
    /* renamed from: j */
    public final Bundle mo10234j() {
        return this.f26083d.m11759f();
    }

    @Override // p168r4.c30
    /* renamed from: m */
    public final String mo10233m() {
        return this.f26081a;
    }

    @Override // p168r4.c30
    /* renamed from: o */
    public final InterfaceC3512a mo10232o() {
        return this.f26083d.m11752j();
    }

    @Override // p168r4.c30
    /* renamed from: q */
    public final h20 mo10231q() {
        return this.f26083d.m11758f0();
    }
}
