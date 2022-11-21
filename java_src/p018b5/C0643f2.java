package p018b5;

import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.f2 */
/* loaded from: classes2.dex */
public final class C0643f2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ String f1810p;

    /* renamed from: q */
    public final /* synthetic */ Object f1811q;

    /* renamed from: r */
    public final /* synthetic */ C0966y2 f1812r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0643f2(C0966y2 c0966y2, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(c0966y2, false);
        this.f1812r = c0966y2;
        this.f1810p = str;
        this.f1811q = obj;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1812r.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).logHealthData(5, this.f1810p, BinderC3514b.m18741L0(this.f1811q), BinderC3514b.m18741L0(null), BinderC3514b.m18741L0(null));
    }
}
