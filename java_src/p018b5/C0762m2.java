package p018b5;

import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.m2 */
/* loaded from: classes2.dex */
public final class C0762m2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ String f1965p;

    /* renamed from: q */
    public final /* synthetic */ String f1966q;

    /* renamed from: r */
    public final /* synthetic */ Object f1967r;

    /* renamed from: s */
    public final /* synthetic */ boolean f1968s;

    /* renamed from: t */
    public final /* synthetic */ C0966y2 f1969t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0762m2(C0966y2 c0966y2, String str, String str2, Object obj, boolean z) {
        super(c0966y2, true);
        this.f1969t = c0966y2;
        this.f1965p = str;
        this.f1966q = str2;
        this.f1967r = obj;
        this.f1968s = z;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1969t.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).setUserProperty(this.f1965p, this.f1966q, BinderC3514b.m18741L0(this.f1967r), this.f1968s, this.f2052a);
    }
}
