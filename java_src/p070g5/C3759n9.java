package p070g5;

import p026c4.InterfaceC1045f;
import p220x3.C7297q;
/* renamed from: g5.n9 */
/* loaded from: classes2.dex */
public final class C3759n9 {

    /* renamed from: a */
    public final InterfaceC1045f f16773a;

    /* renamed from: b */
    public long f16774b;

    public C3759n9(InterfaceC1045f interfaceC1045f) {
        C7297q.m1883j(interfaceC1045f);
        this.f16773a = interfaceC1045f;
    }

    /* renamed from: a */
    public final void m18051a() {
        this.f16774b = 0L;
    }

    /* renamed from: b */
    public final void m18050b() {
        this.f16774b = this.f16773a.mo24762b();
    }

    /* renamed from: c */
    public final boolean m18049c(long j) {
        return this.f16774b == 0 || this.f16773a.mo24762b() - this.f16774b >= 3600000;
    }
}
