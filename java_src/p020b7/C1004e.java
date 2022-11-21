package p020b7;

import com.google.firebase.perf.session.gauges.GaugeManager;
import p162q7.C5436b;
import p171r7.InterfaceC6549a;
/* renamed from: b7.e */
/* loaded from: classes2.dex */
public final class C1004e implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2489a;

    /* renamed from: a */
    public static C1004e m24828a(C1000a c1000a) {
        return new C1004e(c1000a);
    }

    /* renamed from: c */
    public static GaugeManager m24826c(C1000a c1000a) {
        return (GaugeManager) C5436b.m13301c(c1000a.m24841d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public GaugeManager get() {
        return m24826c(this.f2489a);
    }

    public C1004e(C1000a c1000a) {
        this.f2489a = c1000a;
    }
}
