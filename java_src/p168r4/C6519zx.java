package p168r4;

import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p060f4.BinderC3514b;
import p184t2.C6723t;
import p184t2.InterfaceC6719p;
import p220x3.C7297q;
import p227y2.EnumC7405a;
import p227y2.InterfaceC7406b;
import p227y2.InterfaceC7407c;
/* renamed from: r4.zx */
/* loaded from: classes2.dex */
public final class C6519zx {

    /* renamed from: i */
    public static C6519zx f34763i;

    /* renamed from: c */
    public InterfaceC6074nw f34766c;

    /* renamed from: h */
    public InterfaceC7406b f34771h;

    /* renamed from: b */
    public final Object f34765b = new Object();

    /* renamed from: d */
    public boolean f34767d = false;

    /* renamed from: e */
    public boolean f34768e = false;

    /* renamed from: f */
    public InterfaceC6719p f34769f = null;

    /* renamed from: g */
    public C6723t f34770g = new C6723t.C6724a().m3553a();

    /* renamed from: a */
    public final ArrayList<InterfaceC7407c> f34764a = new ArrayList<>();

    /* renamed from: i */
    public final C6723t m4048i() {
        return this.f34770g;
    }

    /* renamed from: k */
    public final /* synthetic */ void m4046k(InterfaceC7407c interfaceC7407c) {
        interfaceC7407c.onInitializationComplete(this.f34771h);
    }

    /* renamed from: d */
    public static C6519zx m4053d() {
        C6519zx c6519zx;
        synchronized (C6519zx.class) {
            if (f34763i == null) {
                f34763i = new C6519zx();
            }
            c6519zx = f34763i;
        }
        return c6519zx;
    }

    /* renamed from: n */
    public static final InterfaceC7406b m4043n(List<g70> list) {
        EnumC7405a enumC7405a;
        HashMap hashMap = new HashMap();
        for (g70 g70Var : list) {
            String str = g70Var.f23921a;
            if (g70Var.f23922b) {
                enumC7405a = EnumC7405a.READY;
            } else {
                enumC7405a = EnumC7405a.NOT_READY;
            }
            hashMap.put(str, new o70(enumC7405a, g70Var.f23924k, g70Var.f23923d));
        }
        return new p70(hashMap);
    }

    /* renamed from: e */
    public final void m4052e(Context context, String str, InterfaceC7407c interfaceC7407c) {
        synchronized (this.f34765b) {
            if (this.f34767d) {
                if (interfaceC7407c != null) {
                    m4053d().f34764a.add(interfaceC7407c);
                }
            } else if (this.f34768e) {
                if (interfaceC7407c != null) {
                    interfaceC7407c.onInitializationComplete(m4050g());
                }
            } else {
                this.f34767d = true;
                if (interfaceC7407c != null) {
                    m4053d().f34764a.add(interfaceC7407c);
                }
                if (context != null) {
                    try {
                        xa0.m5430a().m5429b(context, null);
                        m4044m(context);
                        if (interfaceC7407c != null) {
                            this.f34766c.mo8565Y0(new BinderC6482yx(this, null));
                        }
                        this.f34766c.mo8555s1(new cb0());
                        this.f34766c.mo8563c();
                        this.f34766c.mo8557p5(null, BinderC3514b.m18741L0(null));
                        if (this.f34770g.m3556b() != -1 || this.f34770g.m3555c() != -1) {
                            m4045l(this.f34770g);
                        }
                        C6225rz.m7278a(context);
                        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30826I3)).booleanValue() && !m4051f().endsWith("0")) {
                            cm0.m12440c("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                            this.f34771h = new C6408wx(this);
                            if (interfaceC7407c != null) {
                                vl0.f32748b.post(new Runnable(this, interfaceC7407c) { // from class: r4.vx

                                    /* renamed from: a */
                                    public final C6519zx f32964a;

                                    /* renamed from: b */
                                    public final InterfaceC7407c f32965b;

                                    {
                                        this.f32964a = this;
                                        this.f32965b = interfaceC7407c;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f32964a.m4046k(this.f32965b);
                                    }
                                });
                            }
                        }
                    } catch (RemoteException e) {
                        cm0.m12436g("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    /* renamed from: f */
    public final String m4051f() {
        boolean z;
        String m9811a;
        synchronized (this.f34765b) {
            if (this.f34766c != null) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1879n(z, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                m9811a = l13.m9811a(this.f34766c.mo8559l());
            } catch (RemoteException e) {
                cm0.m12439d("Unable to get version string.", e);
                return "";
            }
        }
        return m9811a;
    }

    /* renamed from: g */
    public final InterfaceC7406b m4050g() {
        boolean z;
        synchronized (this.f34765b) {
            if (this.f34766c != null) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1879n(z, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InterfaceC7406b interfaceC7406b = this.f34771h;
                if (interfaceC7406b != null) {
                    return interfaceC7406b;
                }
                return m4043n(this.f34766c.mo8558m());
            } catch (RemoteException unused) {
                cm0.m12440c("Unable to get Initialization status.");
                return new C6408wx(this);
            }
        }
    }

    /* renamed from: j */
    public final void m4047j(C6723t c6723t) {
        boolean z;
        if (c6723t != null) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1891b(z, "Null passed to setRequestConfiguration.");
        synchronized (this.f34765b) {
            C6723t c6723t2 = this.f34770g;
            this.f34770g = c6723t;
            if (this.f34766c == null) {
                return;
            }
            if (c6723t2.m3556b() != c6723t.m3556b() || c6723t2.m3555c() != c6723t.m3555c()) {
                m4045l(c6723t);
            }
        }
    }

    /* renamed from: l */
    public final void m4045l(C6723t c6723t) {
        try {
            this.f34766c.mo8566S2(new C6261sy(c6723t));
        } catch (RemoteException e) {
            cm0.m12439d("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: m */
    public final void m4044m(Context context) {
        if (this.f34766c == null) {
            this.f34766c = new C6331uu(C6479yu.m4567b(), context).m4974d(context, false);
        }
    }
}
