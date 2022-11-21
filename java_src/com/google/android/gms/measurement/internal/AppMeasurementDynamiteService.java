package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import java.util.Map;
import p018b5.AbstractBinderC0625e1;
import p018b5.C0795o1;
import p018b5.InterfaceC0693i1;
import p018b5.InterfaceC0744l1;
import p018b5.InterfaceC0778n1;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p070g5.C3611b5;
import p070g5.C3673g7;
import p070g5.C3697i7;
import p070g5.C3700ia;
import p070g5.C3760na;
import p070g5.C3769o7;
import p070g5.C3772oa;
import p070g5.C3809s;
import p070g5.C3833u;
import p070g5.InterfaceC3636d6;
import p070g5.RunnableC3684h6;
import p070g5.RunnableC3685h7;
import p070g5.RunnableC3686h8;
import p070g5.RunnableC3699i9;
import p070g5.RunnableC3712ja;
import p070g5.RunnableC3720k6;
import p070g5.RunnableC3744m6;
import p070g5.RunnableC3748ma;
import p145p.C5270a;
import p220x3.C7297q;
@DynamiteApi
/* loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends AbstractBinderC0625e1 {

    /* renamed from: a */
    public C3611b5 f7838a = null;

    /* renamed from: b */
    public final Map<Integer, InterfaceC3636d6> f7839b = new C5270a();

    /* renamed from: a */
    public final void m22975a() {
        if (this.f7838a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void initForTests(Map map) {
        m22975a();
    }

    @Override // p018b5.InterfaceC0642f1
    public void setInstanceIdProvider(InterfaceC0778n1 interfaceC0778n1) {
        m22975a();
    }

    @Override // p018b5.InterfaceC0642f1
    public void setMinimumSessionDuration(long j) {
        m22975a();
    }

    @Override // p018b5.InterfaceC0642f1
    public void initialize(InterfaceC3512a interfaceC3512a, C0795o1 c0795o1, long j) {
        C3611b5 c3611b5 = this.f7838a;
        if (c3611b5 == null) {
            this.f7838a = C3611b5.m18544C((Context) C7297q.m1883j((Context) BinderC3514b.m18740t0(interfaceC3512a)), c0795o1, Long.valueOf(j));
        } else {
            c3611b5.mo17858F().m18013r().m18042a("Attempting to initialize multiple times");
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void beginAdUnitExposure(String str, long j) {
        m22975a();
        this.f7838a.m18514t().m18429g(str, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        m22975a();
        this.f7838a.m18543D().m18223h0(str, str2, bundle);
    }

    @Override // p018b5.InterfaceC0642f1
    public void clearMeasurementEnabled(long j) {
        m22975a();
        this.f7838a.m18543D().m18247E(null);
    }

    @Override // p018b5.InterfaceC0642f1
    public void endAdUnitExposure(String str, long j) {
        m22975a();
        this.f7838a.m18514t().m18428h(str, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void generateEventId(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        long m18158r0 = this.f7838a.m18538K().m18158r0();
        m22975a();
        this.f7838a.m18538K().m18203C(interfaceC0693i1, m18158r0);
    }

    @Override // p018b5.InterfaceC0642f1
    public void getAppInstanceId(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        this.f7838a.mo17855P().m17826u(new RunnableC3684h6(this, interfaceC0693i1));
    }

    @Override // p018b5.InterfaceC0642f1
    public void getCachedAppInstanceId(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        m22974o0(interfaceC0693i1, this.f7838a.m18543D().m18233X());
    }

    @Override // p018b5.InterfaceC0642f1
    public void getConditionalUserProperties(String str, String str2, InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        this.f7838a.mo17855P().m17826u(new RunnableC3712ja(this, interfaceC0693i1, str, str2));
    }

    @Override // p018b5.InterfaceC0642f1
    public void getCurrentScreenClass(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        m22974o0(interfaceC0693i1, this.f7838a.m18543D().m18232Y());
    }

    @Override // p018b5.InterfaceC0642f1
    public void getCurrentScreenName(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        m22974o0(interfaceC0693i1, this.f7838a.m18543D().m18231Z());
    }

    @Override // p018b5.InterfaceC0642f1
    public void getGmpAppId(InterfaceC0693i1 interfaceC0693i1) {
        String str;
        m22975a();
        C3697i7 m18543D = this.f7838a.m18543D();
        if (m18543D.f17008a.m18537L() != null) {
            str = m18543D.f17008a.m18537L();
        } else {
            try {
                str = C3769o7.m18036c(m18543D.f17008a.mo17856O(), "google_app_id", m18543D.f17008a.m18534R());
            } catch (IllegalStateException e) {
                m18543D.f17008a.mo17858F().m18018m().m18041b("getGoogleAppId failed with exception", e);
                str = null;
            }
        }
        m22974o0(interfaceC0693i1, str);
    }

    @Override // p018b5.InterfaceC0642f1
    public void getMaxUserProperties(String str, InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        this.f7838a.m18543D().m18238S(str);
        m22975a();
        this.f7838a.m18538K().m18204B(interfaceC0693i1, 25);
    }

    @Override // p018b5.InterfaceC0642f1
    public void getTestFlag(InterfaceC0693i1 interfaceC0693i1, int i) {
        m22975a();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return;
                        }
                        this.f7838a.m18538K().m18147x(interfaceC0693i1, this.f7838a.m18543D().m18237T().booleanValue());
                        return;
                    }
                    this.f7838a.m18538K().m18204B(interfaceC0693i1, this.f7838a.m18543D().m18235V().intValue());
                    return;
                }
                C3700ia m18538K = this.f7838a.m18538K();
                double doubleValue = this.f7838a.m18543D().m18236U().doubleValue();
                Bundle bundle = new Bundle();
                bundle.putDouble("r", doubleValue);
                try {
                    interfaceC0693i1.mo25817C0(bundle);
                    return;
                } catch (RemoteException e) {
                    m18538K.f17008a.mo17858F().m18013r().m18041b("Error returning double value to wrapper", e);
                    return;
                }
            }
            this.f7838a.m18538K().m18203C(interfaceC0693i1, this.f7838a.m18543D().m18234W().longValue());
            return;
        }
        this.f7838a.m18538K().m18202D(interfaceC0693i1, this.f7838a.m18543D().m18230a0());
    }

    @Override // p018b5.InterfaceC0642f1
    public void getUserProperties(String str, String str2, boolean z, InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        this.f7838a.mo17855P().m17826u(new RunnableC3686h8(this, interfaceC0693i1, str, str2, z));
    }

    @Override // p018b5.InterfaceC0642f1
    public void isDataCollectionEnabled(InterfaceC0693i1 interfaceC0693i1) {
        m22975a();
        this.f7838a.mo17855P().m17826u(new RunnableC3748ma(this, interfaceC0693i1));
    }

    @Override // p018b5.InterfaceC0642f1
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        m22975a();
        this.f7838a.m18543D().m18218n(str, str2, bundle, z, z2, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC0693i1 interfaceC0693i1, long j) {
        Bundle bundle2;
        m22975a();
        C7297q.m1887f(str2);
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        bundle2.putString("_o", "app");
        this.f7838a.mo17855P().m17826u(new RunnableC3685h7(this, interfaceC0693i1, new C3833u(str2, new C3809s(bundle), "app", j), str));
    }

    @Override // p018b5.InterfaceC0642f1
    public void logHealthData(int i, String str, InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2, InterfaceC3512a interfaceC3512a3) {
        Object m18740t0;
        Object m18740t02;
        m22975a();
        Object obj = null;
        if (interfaceC3512a == null) {
            m18740t0 = null;
        } else {
            m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
        }
        if (interfaceC3512a2 == null) {
            m18740t02 = null;
        } else {
            m18740t02 = BinderC3514b.m18740t0(interfaceC3512a2);
        }
        if (interfaceC3512a3 != null) {
            obj = BinderC3514b.m18740t0(interfaceC3512a3);
        }
        this.f7838a.mo17858F().m18023A(i, true, false, str, m18740t0, m18740t02, obj);
    }

    /* renamed from: o0 */
    public final void m22974o0(InterfaceC0693i1 interfaceC0693i1, String str) {
        m22975a();
        this.f7838a.m18538K().m18202D(interfaceC0693i1, str);
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityCreated(InterfaceC3512a interfaceC3512a, Bundle bundle, long j) {
        m22975a();
        C3673g7 c3673g7 = this.f7838a.m18543D().f16618c;
        if (c3673g7 != null) {
            this.f7838a.m18543D().m18222j();
            c3673g7.onActivityCreated((Activity) BinderC3514b.m18740t0(interfaceC3512a), bundle);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityDestroyed(InterfaceC3512a interfaceC3512a, long j) {
        m22975a();
        C3673g7 c3673g7 = this.f7838a.m18543D().f16618c;
        if (c3673g7 != null) {
            this.f7838a.m18543D().m18222j();
            c3673g7.onActivityDestroyed((Activity) BinderC3514b.m18740t0(interfaceC3512a));
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityPaused(InterfaceC3512a interfaceC3512a, long j) {
        m22975a();
        C3673g7 c3673g7 = this.f7838a.m18543D().f16618c;
        if (c3673g7 != null) {
            this.f7838a.m18543D().m18222j();
            c3673g7.onActivityPaused((Activity) BinderC3514b.m18740t0(interfaceC3512a));
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityResumed(InterfaceC3512a interfaceC3512a, long j) {
        m22975a();
        C3673g7 c3673g7 = this.f7838a.m18543D().f16618c;
        if (c3673g7 != null) {
            this.f7838a.m18543D().m18222j();
            c3673g7.onActivityResumed((Activity) BinderC3514b.m18740t0(interfaceC3512a));
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivitySaveInstanceState(InterfaceC3512a interfaceC3512a, InterfaceC0693i1 interfaceC0693i1, long j) {
        m22975a();
        C3673g7 c3673g7 = this.f7838a.m18543D().f16618c;
        Bundle bundle = new Bundle();
        if (c3673g7 != null) {
            this.f7838a.m18543D().m18222j();
            c3673g7.onActivitySaveInstanceState((Activity) BinderC3514b.m18740t0(interfaceC3512a), bundle);
        }
        try {
            interfaceC0693i1.mo25817C0(bundle);
        } catch (RemoteException e) {
            this.f7838a.mo17858F().m18013r().m18041b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityStarted(InterfaceC3512a interfaceC3512a, long j) {
        m22975a();
        if (this.f7838a.m18543D().f16618c != null) {
            this.f7838a.m18543D().m18222j();
            Activity activity = (Activity) BinderC3514b.m18740t0(interfaceC3512a);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void onActivityStopped(InterfaceC3512a interfaceC3512a, long j) {
        m22975a();
        if (this.f7838a.m18543D().f16618c != null) {
            this.f7838a.m18543D().m18222j();
            Activity activity = (Activity) BinderC3514b.m18740t0(interfaceC3512a);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void performAction(Bundle bundle, InterfaceC0693i1 interfaceC0693i1, long j) {
        m22975a();
        interfaceC0693i1.mo25817C0(null);
    }

    @Override // p018b5.InterfaceC0642f1
    public void registerOnMeasurementEventListener(InterfaceC0744l1 interfaceC0744l1) {
        InterfaceC3636d6 interfaceC3636d6;
        m22975a();
        synchronized (this.f7839b) {
            interfaceC3636d6 = this.f7839b.get(Integer.valueOf(interfaceC0744l1.mo25561e()));
            if (interfaceC3636d6 == null) {
                interfaceC3636d6 = new C3772oa(this, interfaceC0744l1);
                this.f7839b.put(Integer.valueOf(interfaceC0744l1.mo25561e()), interfaceC3636d6);
            }
        }
        this.f7838a.m18543D().m18213s(interfaceC3636d6);
    }

    @Override // p018b5.InterfaceC0642f1
    public void resetAnalyticsData(long j) {
        m22975a();
        this.f7838a.m18543D().m18212t(j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void setConditionalUserProperty(Bundle bundle, long j) {
        m22975a();
        if (bundle == null) {
            this.f7838a.mo17858F().m18018m().m18042a("Conditional user property must not be null");
        } else {
            this.f7838a.m18543D().m18206z(bundle, j);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void setConsent(Bundle bundle, long j) {
        m22975a();
        this.f7838a.m18543D().m18249C(bundle, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void setConsentThirdParty(Bundle bundle, long j) {
        m22975a();
        this.f7838a.m18543D().m18251A(bundle, -20, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void setCurrentScreen(InterfaceC3512a interfaceC3512a, String str, String str2, long j) {
        m22975a();
        this.f7838a.m18541H().m17899z((Activity) BinderC3514b.m18740t0(interfaceC3512a), str, str2);
    }

    @Override // p018b5.InterfaceC0642f1
    public void setDataCollectionEnabled(boolean z) {
        m22975a();
        C3697i7 m18543D = this.f7838a.m18543D();
        m18543D.m18384d();
        m18543D.f17008a.mo17855P().m17826u(new RunnableC3720k6(m18543D, z));
    }

    @Override // p018b5.InterfaceC0642f1
    public void setDefaultEventParameters(Bundle bundle) {
        final Bundle bundle2;
        m22975a();
        final C3697i7 m18543D = this.f7838a.m18543D();
        if (bundle == null) {
            bundle2 = null;
        } else {
            bundle2 = new Bundle(bundle);
        }
        m18543D.f17008a.mo17855P().m17826u(new Runnable() { // from class: g5.i6
            @Override // java.lang.Runnable
            public final void run() {
                C3697i7.this.m18220l(bundle2);
            }
        });
    }

    @Override // p018b5.InterfaceC0642f1
    public void setEventInterceptor(InterfaceC0744l1 interfaceC0744l1) {
        m22975a();
        C3760na c3760na = new C3760na(this, interfaceC0744l1);
        if (this.f7838a.mo17855P().m17823x()) {
            this.f7838a.m18543D().m18248D(c3760na);
        } else {
            this.f7838a.mo17855P().m17826u(new RunnableC3699i9(this, c3760na));
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void setMeasurementEnabled(boolean z, long j) {
        m22975a();
        this.f7838a.m18543D().m18247E(Boolean.valueOf(z));
    }

    @Override // p018b5.InterfaceC0642f1
    public void setSessionTimeoutDuration(long j) {
        m22975a();
        C3697i7 m18543D = this.f7838a.m18543D();
        m18543D.f17008a.mo17855P().m17826u(new RunnableC3744m6(m18543D, j));
    }

    @Override // p018b5.InterfaceC0642f1
    public void setUserId(String str, long j) {
        m22975a();
        if (str != null && str.length() == 0) {
            this.f7838a.mo17858F().m18013r().m18042a("User ID must be non-empty");
        } else {
            this.f7838a.m18543D().m18244J(null, "_id", str, true, j);
        }
    }

    @Override // p018b5.InterfaceC0642f1
    public void setUserProperty(String str, String str2, InterfaceC3512a interfaceC3512a, boolean z, long j) {
        m22975a();
        this.f7838a.m18543D().m18244J(str, str2, BinderC3514b.m18740t0(interfaceC3512a), z, j);
    }

    @Override // p018b5.InterfaceC0642f1
    public void unregisterOnMeasurementEventListener(InterfaceC0744l1 interfaceC0744l1) {
        InterfaceC3636d6 remove;
        m22975a();
        synchronized (this.f7839b) {
            remove = this.f7839b.remove(Integer.valueOf(interfaceC0744l1.mo25561e()));
        }
        if (remove == null) {
            remove = new C3772oa(this, interfaceC0744l1);
        }
        this.f7838a.m18543D().m18242L(remove);
    }
}
