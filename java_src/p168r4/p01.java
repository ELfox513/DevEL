package p168r4;

import android.view.View;
/* renamed from: r4.p01 */
/* loaded from: classes2.dex */
public final class p01 extends i31 {

    /* renamed from: i */
    public final View f29296i;

    /* renamed from: j */
    public final cs0 f29297j;

    /* renamed from: k */
    public final qo2 f29298k;

    /* renamed from: l */
    public final int f29299l;

    /* renamed from: m */
    public final boolean f29300m;

    /* renamed from: n */
    public final boolean f29301n;

    /* renamed from: o */
    public final h01 f29302o;

    /* renamed from: p */
    public C5881io f29303p;

    public p01(h31 h31Var, View view, cs0 cs0Var, qo2 qo2Var, int i, boolean z, boolean z2, h01 h01Var) {
        super(h31Var);
        this.f29296i = view;
        this.f29297j = cs0Var;
        this.f29298k = qo2Var;
        this.f29299l = i;
        this.f29300m = z;
        this.f29301n = z2;
        this.f29302o = h01Var;
    }

    /* renamed from: g */
    public final qo2 m8537g() {
        return lp2.m9588a(this.f24946b.f28431r, this.f29298k);
    }

    /* renamed from: h */
    public final View m8536h() {
        return this.f29296i;
    }

    /* renamed from: i */
    public final int m8535i() {
        return this.f29299l;
    }

    /* renamed from: j */
    public final boolean m8534j() {
        return this.f29300m;
    }

    /* renamed from: k */
    public final boolean m8533k() {
        return this.f29301n;
    }

    /* renamed from: m */
    public final boolean m8531m() {
        return this.f29297j.mo5114O0();
    }

    /* renamed from: n */
    public final void m8530n(InterfaceC5622bo interfaceC5622bo) {
        this.f29297j.mo5029z0(interfaceC5622bo);
    }

    /* renamed from: o */
    public final void m8529o(long j, int i) {
        this.f29302o.m11021a(j, i);
    }

    /* renamed from: p */
    public final void m8528p(C5881io c5881io) {
        this.f29303p = c5881io;
    }

    /* renamed from: q */
    public final C5881io m8527q() {
        return this.f29303p;
    }

    /* renamed from: l */
    public final boolean m8532l() {
        if (this.f29297j.mo5057o0() != null && this.f29297j.mo5057o0().mo7007e()) {
            return true;
        }
        return false;
    }
}
