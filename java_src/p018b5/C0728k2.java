package p018b5;

import p220x3.C7297q;
/* renamed from: b5.k2 */
/* loaded from: classes2.dex */
public final class C0728k2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ BinderC0796o2 f1928p;

    /* renamed from: q */
    public final /* synthetic */ C0966y2 f1929q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0728k2(C0966y2 c0966y2, BinderC0796o2 binderC0796o2) {
        super(c0966y2, true);
        this.f1929q = c0966y2;
        this.f1928p = binderC0796o2;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1929q.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).registerOnMeasurementEventListener(this.f1928p);
    }
}
