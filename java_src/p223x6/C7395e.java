package p223x6;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import p058f2.InterfaceC3508g;
import p124m5.C4638c;
import p126m7.C4669p;
import p161q6.InterfaceC5434b;
import p170r6.InterfaceC6538g;
import p171r7.InterfaceC6549a;
import p239z6.C7873a;
/* renamed from: x6.e */
/* loaded from: classes2.dex */
public final class C7395e implements InterfaceC6549a {

    /* renamed from: a */
    public final InterfaceC6549a<C4638c> f36996a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5434b<C4669p>> f36997b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC6538g> f36998c;

    /* renamed from: d */
    public final InterfaceC6549a<InterfaceC5434b<InterfaceC3508g>> f36999d;

    /* renamed from: e */
    public final InterfaceC6549a<RemoteConfigManager> f37000e;

    /* renamed from: f */
    public final InterfaceC6549a<C7873a> f37001f;

    /* renamed from: g */
    public final InterfaceC6549a<GaugeManager> f37002g;

    /* renamed from: a */
    public static C7395e m1583a(InterfaceC6549a<C4638c> interfaceC6549a, InterfaceC6549a<InterfaceC5434b<C4669p>> interfaceC6549a2, InterfaceC6549a<InterfaceC6538g> interfaceC6549a3, InterfaceC6549a<InterfaceC5434b<InterfaceC3508g>> interfaceC6549a4, InterfaceC6549a<RemoteConfigManager> interfaceC6549a5, InterfaceC6549a<C7873a> interfaceC6549a6, InterfaceC6549a<GaugeManager> interfaceC6549a7) {
        return new C7395e(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4, interfaceC6549a5, interfaceC6549a6, interfaceC6549a7);
    }

    /* renamed from: c */
    public static C7393c m1581c(C4638c c4638c, InterfaceC5434b<C4669p> interfaceC5434b, InterfaceC6538g interfaceC6538g, InterfaceC5434b<InterfaceC3508g> interfaceC5434b2, RemoteConfigManager remoteConfigManager, C7873a c7873a, GaugeManager gaugeManager) {
        return new C7393c(c4638c, interfaceC5434b, interfaceC6538g, interfaceC5434b2, remoteConfigManager, c7873a, gaugeManager);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C7393c get() {
        return m1581c(this.f36996a.get(), this.f36997b.get(), this.f36998c.get(), this.f36999d.get(), this.f37000e.get(), this.f37001f.get(), this.f37002g.get());
    }

    public C7395e(InterfaceC6549a<C4638c> interfaceC6549a, InterfaceC6549a<InterfaceC5434b<C4669p>> interfaceC6549a2, InterfaceC6549a<InterfaceC6538g> interfaceC6549a3, InterfaceC6549a<InterfaceC5434b<InterfaceC3508g>> interfaceC6549a4, InterfaceC6549a<RemoteConfigManager> interfaceC6549a5, InterfaceC6549a<C7873a> interfaceC6549a6, InterfaceC6549a<GaugeManager> interfaceC6549a7) {
        this.f36996a = interfaceC6549a;
        this.f36997b = interfaceC6549a2;
        this.f36998c = interfaceC6549a3;
        this.f36999d = interfaceC6549a4;
        this.f37000e = interfaceC6549a5;
        this.f37001f = interfaceC6549a6;
        this.f37002g = interfaceC6549a7;
    }
}
