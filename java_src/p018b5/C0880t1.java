package p018b5;

import android.app.Activity;
import p060f4.BinderC3514b;
import p220x3.C7297q;
/* renamed from: b5.t1 */
/* loaded from: classes2.dex */
public final class C0880t1 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Activity f2309p;

    /* renamed from: q */
    public final /* synthetic */ String f2310q;

    /* renamed from: r */
    public final /* synthetic */ String f2311r;

    /* renamed from: s */
    public final /* synthetic */ C0966y2 f2312s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0880t1(C0966y2 c0966y2, Activity activity, String str, String str2) {
        super(c0966y2, true);
        this.f2312s = c0966y2;
        this.f2309p = activity;
        this.f2310q = str;
        this.f2311r = str2;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2312s.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).setCurrentScreen(BinderC3514b.m18741L0(this.f2309p), this.f2310q, this.f2311r, this.f2052a);
    }
}
