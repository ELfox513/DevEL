package p018b5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: b5.r1 */
/* loaded from: classes2.dex */
public final class C0846r1 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ String f2233p;

    /* renamed from: q */
    public final /* synthetic */ String f2234q;

    /* renamed from: r */
    public final /* synthetic */ Bundle f2235r;

    /* renamed from: s */
    public final /* synthetic */ C0966y2 f2236s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0846r1(C0966y2 c0966y2, String str, String str2, Bundle bundle) {
        super(c0966y2, true);
        this.f2236s = c0966y2;
        this.f2233p = str;
        this.f2234q = str2;
        this.f2235r = bundle;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        InterfaceC0642f1 interfaceC0642f1;
        interfaceC0642f1 = this.f2236s.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).clearConditionalUserProperty(this.f2233p, this.f2234q, this.f2235r);
    }
}
