package p018b5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: b5.u1 */
/* loaded from: classes2.dex */
public final class C0897u1 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Bundle f2326p;

    /* renamed from: q */
    public final /* synthetic */ C0966y2 f2327q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0897u1(C0966y2 c0966y2, Bundle bundle) {
        super(c0966y2, true);
        this.f2327q = c0966y2;
        this.f2326p = bundle;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2327q.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).setConsent(this.f2326p, this.f2052a);
    }
}
