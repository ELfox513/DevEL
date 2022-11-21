package p018b5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: b5.l2 */
/* loaded from: classes2.dex */
public final class C0745l2 extends AbstractRunnableC0779n2 {

    /* renamed from: p */
    public final /* synthetic */ Long f1952p;

    /* renamed from: q */
    public final /* synthetic */ String f1953q;

    /* renamed from: r */
    public final /* synthetic */ String f1954r;

    /* renamed from: s */
    public final /* synthetic */ Bundle f1955s;

    /* renamed from: t */
    public final /* synthetic */ boolean f1956t;

    /* renamed from: u */
    public final /* synthetic */ boolean f1957u;

    /* renamed from: v */
    public final /* synthetic */ C0966y2 f1958v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0745l2(C0966y2 c0966y2, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(c0966y2, true);
        this.f1958v = c0966y2;
        this.f1952p = l;
        this.f1953q = str;
        this.f1954r = str2;
        this.f1955s = bundle;
        this.f1956t = z;
        this.f1957u = z2;
    }

    @Override // p018b5.AbstractRunnableC0779n2
    /* renamed from: a */
    public final void mo24898a() {
        long longValue;
        InterfaceC0642f1 interfaceC0642f1;
        Long l = this.f1952p;
        if (l == null) {
            longValue = this.f2052a;
        } else {
            longValue = l.longValue();
        }
        long j = longValue;
        interfaceC0642f1 = this.f1958v.f2434i;
        ((InterfaceC0642f1) C7297q.m1883j(interfaceC0642f1)).logEvent(this.f1953q, this.f1954r, this.f1955s, this.f1956t, this.f1957u, j);
    }
}
