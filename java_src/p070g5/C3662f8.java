package p070g5;
/* renamed from: g5.f8 */
/* loaded from: classes2.dex */
public final class C3662f8 extends AbstractC3749n {

    /* renamed from: e */
    public final /* synthetic */ C3866w8 f16487e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3662f8(C3866w8 c3866w8, InterfaceC3875x5 interfaceC3875x5) {
        super(interfaceC3875x5);
        this.f16487e = c3866w8;
    }

    @Override // p070g5.AbstractC3749n
    /* renamed from: c */
    public final void mo18035c() {
        C3866w8 c3866w8 = this.f16487e;
        c3866w8.mo17839c();
        if (!c3866w8.m17868u()) {
            return;
        }
        c3866w8.f17008a.mo17858F().m18014q().m18042a("Inactivity, disconnecting from the service");
        c3866w8.m17887N();
    }
}
