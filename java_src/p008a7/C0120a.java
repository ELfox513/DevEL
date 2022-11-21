package p008a7;

import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import p020b7.C1000a;
import p020b7.C1001b;
import p020b7.C1002c;
import p020b7.C1003d;
import p020b7.C1004e;
import p020b7.C1005f;
import p020b7.C1006g;
import p020b7.C1007h;
import p058f2.InterfaceC3508g;
import p124m5.C4638c;
import p126m7.C4669p;
import p161q6.InterfaceC5434b;
import p162q7.C5435a;
import p162q7.C5436b;
import p170r6.InterfaceC6538g;
import p171r7.InterfaceC6549a;
import p223x6.C7393c;
import p223x6.C7395e;
import p239z6.C7873a;
/* renamed from: a7.a */
/* loaded from: classes2.dex */
public final class C0120a implements InterfaceC0123b {

    /* renamed from: a */
    public InterfaceC6549a<C4638c> f177a;

    /* renamed from: b */
    public InterfaceC6549a<InterfaceC5434b<C4669p>> f178b;

    /* renamed from: c */
    public InterfaceC6549a<InterfaceC6538g> f179c;

    /* renamed from: d */
    public InterfaceC6549a<InterfaceC5434b<InterfaceC3508g>> f180d;

    /* renamed from: e */
    public InterfaceC6549a<RemoteConfigManager> f181e;

    /* renamed from: f */
    public InterfaceC6549a<C7873a> f182f;

    /* renamed from: g */
    public InterfaceC6549a<GaugeManager> f183g;

    /* renamed from: h */
    public InterfaceC6549a<C7393c> f184h;

    /* renamed from: a7.a$b */
    /* loaded from: classes2.dex */
    public static final class C0122b {

        /* renamed from: a */
        public C1000a f185a;

        /* renamed from: b */
        public C0122b m27632b(C1000a c1000a) {
            this.f185a = (C1000a) C5436b.m13302b(c1000a);
            return this;
        }

        public C0122b() {
        }

        /* renamed from: a */
        public InterfaceC0123b m27633a() {
            C5436b.m13303a(this.f185a, C1000a.class);
            return new C0120a(this.f185a);
        }
    }

    /* renamed from: b */
    public static C0122b m27635b() {
        return new C0122b();
    }

    @Override // p008a7.InterfaceC0123b
    /* renamed from: a */
    public C7393c mo27631a() {
        return this.f184h.get();
    }

    public C0120a(C1000a c1000a) {
        m27634c(c1000a);
    }

    /* renamed from: c */
    public final void m27634c(C1000a c1000a) {
        this.f177a = C1002c.m24834a(c1000a);
        this.f178b = C1005f.m24825a(c1000a);
        this.f179c = C1003d.m24831a(c1000a);
        this.f180d = C1007h.m24819a(c1000a);
        this.f181e = C1006g.m24822a(c1000a);
        this.f182f = C1001b.m24837a(c1000a);
        C1004e m24828a = C1004e.m24828a(c1000a);
        this.f183g = m24828a;
        this.f184h = C5435a.m13305a(C7395e.m1583a(this.f177a, this.f178b, this.f179c, this.f180d, this.f181e, this.f182f, m24828a));
    }
}
