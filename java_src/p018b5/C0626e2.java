package p018b5;

import p220x3.C7297q;
/* renamed from: b5.e2 */
/* loaded from: classes2.dex */
public final class C0626e2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ String f1795p;

    /* renamed from: q */
    public final /* synthetic */ String f1796q;

    /* renamed from: r */
    public final /* synthetic */ boolean f1797r;

    /* renamed from: s */
    public final /* synthetic */ BinderC0574b1 f1798s;

    /* renamed from: t */
    public final /* synthetic */ C0966y2 f1799t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0626e2(C0966y2 c0966y2, String str, String str2, boolean z, BinderC0574b1 binderC0574b1) {
        super(c0966y2, true);
        this.f1799t = c0966y2;
        this.f1795p = str;
        this.f1796q = str2;
        this.f1797r = z;
        this.f1798s = binderC0574b1;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: b */
    public final void mo24897b() {
        this.f1798s.mo25817C0(null);
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f1799t.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).getUserProperties(this.f1795p, this.f1796q, this.f1797r, this.f1798s);
    }
}
