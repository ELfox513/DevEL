package p018b5;

import p220x3.C7297q;
/* renamed from: b5.j2 */
/* loaded from: classes2.dex */
public final class C0711j2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ boolean f1913p;

    /* renamed from: q */
    public final /* synthetic */ C0966y2 f1914q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0711j2(C0966y2 c0966y2, boolean z) {
        super(c0966y2, true);
        this.f1914q = c0966y2;
        this.f1913p = z;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1914q.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).setDataCollectionEnabled(this.f1913p);
    }
}
