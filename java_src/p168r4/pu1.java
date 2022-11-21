package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.pu1 */
/* loaded from: classes2.dex */
public final class pu1 {

    /* renamed from: f */
    public final Context f29585f;

    /* renamed from: g */
    public final WeakReference<Context> f29586g;

    /* renamed from: h */
    public final gq1 f29587h;

    /* renamed from: i */
    public final Executor f29588i;

    /* renamed from: j */
    public final Executor f29589j;

    /* renamed from: k */
    public final ScheduledExecutorService f29590k;

    /* renamed from: l */
    public final us1 f29591l;

    /* renamed from: m */
    public final im0 f29592m;

    /* renamed from: o */
    public final ge1 f29594o;

    /* renamed from: a */
    public boolean f29580a = false;

    /* renamed from: b */
    public boolean f29581b = false;

    /* renamed from: c */
    public boolean f29582c = false;

    /* renamed from: e */
    public final vm0<Boolean> f29584e = new vm0<>();

    /* renamed from: n */
    public final Map<String, g70> f29593n = new ConcurrentHashMap();

    /* renamed from: p */
    public boolean f29595p = true;

    /* renamed from: d */
    public final long f29583d = C7601t.m932k().mo24762b();

    /* renamed from: g */
    public final void m8200g() {
        this.f29595p = false;
    }

    /* renamed from: h */
    public final void m8199h(final n70 n70Var) {
        this.f29584e.mo6087c(new Runnable(this, n70Var) { // from class: r4.du1

            /* renamed from: a */
            public final pu1 f22430a;

            /* renamed from: b */
            public final n70 f22431b;

            {
                this.f22430a = this;
                this.f22431b = n70Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                pu1 pu1Var = this.f22430a;
                try {
                    this.f22431b.mo4540c5(pu1Var.m8197j());
                } catch (RemoteException e) {
                    cm0.m12439d("", e);
                }
            }
        }, this.f29589j);
    }

    /* renamed from: m */
    public final boolean m8194m() {
        return this.f29581b;
    }

    /* renamed from: o */
    public final /* synthetic */ Object m8192o() {
        this.f29584e.m6086e(Boolean.TRUE);
        return null;
    }

    /* renamed from: p */
    public final /* synthetic */ void m8191p(Object obj, vm0 vm0Var, String str, long j) {
        synchronized (obj) {
            if (!vm0Var.isDone()) {
                m8186u(str, false, "Timeout.", (int) (C7601t.m932k().mo24762b() - j));
                this.f29591l.m6387c(str, "timeout");
                this.f29594o.mo8959b0(str, "timeout");
                vm0Var.m6086e(Boolean.FALSE);
            }
        }
    }

    /* renamed from: q */
    public final /* synthetic */ void m8190q() {
        synchronized (this) {
            if (this.f29582c) {
                return;
            }
            m8186u("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (C7601t.m932k().mo24762b() - this.f29583d));
            this.f29584e.m6085f(new Exception());
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m8189r(final vm0 vm0Var) {
        this.f29588i.execute(new Runnable(this, vm0Var) { // from class: r4.lu1

            /* renamed from: a */
            public final pu1 f27377a;

            /* renamed from: b */
            public final vm0 f27378b;

            {
                this.f27377a = this;
                this.f27378b = vm0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                vm0 vm0Var2 = this.f27378b;
                String m10887d = C7601t.m935h().m9051p().mo26194p().m10887d();
                if (!TextUtils.isEmpty(m10887d)) {
                    vm0Var2.m6086e(m10887d);
                } else {
                    vm0Var2.m6085f(new Exception());
                }
            }
        });
    }

    /* renamed from: t */
    public final synchronized h83<String> m8187t() {
        String m10887d = C7601t.m935h().m9051p().mo26194p().m10887d();
        if (!TextUtils.isEmpty(m10887d)) {
            return y73.m4814a(m10887d);
        }
        final vm0 vm0Var = new vm0();
        C7601t.m935h().m9051p().mo26216T0(new Runnable(this, vm0Var) { // from class: r4.gu1

            /* renamed from: a */
            public final pu1 f24239a;

            /* renamed from: b */
            public final vm0 f24240b;

            {
                this.f24239a = this;
                this.f24240b = vm0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24239a.m8189r(this.f24240b);
            }
        });
        return vm0Var;
    }

    /* renamed from: u */
    public final void m8186u(String str, boolean z, String str2, int i) {
        this.f29593n.put(str, new g70(str, z, i, str2));
    }

    /* renamed from: k */
    public static /* synthetic */ void m8196k(final pu1 pu1Var, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final vm0 vm0Var = new vm0();
                h83 m4807h = y73.m4807h(vm0Var, ((Long) C5592av.m12935c().m8098c(C6225rz.f31043j1)).longValue(), TimeUnit.SECONDS, pu1Var.f29590k);
                pu1Var.f29591l.m6389a(next);
                pu1Var.f29594o.mo8956q(next);
                final long mo24762b = C7601t.m932k().mo24762b();
                Iterator<String> it = keys;
                m4807h.mo6087c(new Runnable(pu1Var, obj, vm0Var, next, mo24762b) { // from class: r4.iu1

                    /* renamed from: a */
                    public final pu1 f25276a;

                    /* renamed from: b */
                    public final Object f25277b;

                    /* renamed from: d */
                    public final vm0 f25278d;

                    /* renamed from: k */
                    public final String f25279k;

                    /* renamed from: p */
                    public final long f25280p;

                    {
                        this.f25276a = pu1Var;
                        this.f25277b = obj;
                        this.f25278d = vm0Var;
                        this.f25279k = next;
                        this.f25280p = mo24762b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25276a.m8191p(this.f25277b, this.f25278d, this.f25279k, this.f25280p);
                    }
                }, pu1Var.f29588i);
                arrayList.add(m4807h);
                final ou1 ou1Var = new ou1(pu1Var, obj, next, mo24762b, vm0Var);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new q70(optString, bundle));
                        }
                    } catch (JSONException unused) {
                    }
                }
                pu1Var.m8186u(next, false, "", 0);
                try {
                    try {
                        final zp2 m11063b = pu1Var.f29587h.m11063b(next, new JSONObject());
                        pu1Var.f29589j.execute(new Runnable(pu1Var, m11063b, ou1Var, arrayList2, next) { // from class: r4.ku1

                            /* renamed from: a */
                            public final pu1 f26556a;

                            /* renamed from: b */
                            public final zp2 f26557b;

                            /* renamed from: d */
                            public final k70 f26558d;

                            /* renamed from: k */
                            public final List f26559k;

                            /* renamed from: p */
                            public final String f26560p;

                            {
                                this.f26556a = pu1Var;
                                this.f26557b = m11063b;
                                this.f26558d = ou1Var;
                                this.f26559k = arrayList2;
                                this.f26560p = next;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f26556a.m8193n(this.f26557b, this.f26558d, this.f26559k, this.f26560p);
                            }
                        });
                    } catch (RemoteException e) {
                        cm0.m12439d("", e);
                    }
                } catch (mp2 unused2) {
                    ou1Var.mo8683s("Failed to create Adapter.");
                }
                keys = it;
            }
            y73.m4802m(arrayList).m5812a(new Callable(pu1Var) { // from class: r4.ju1

                /* renamed from: a */
                public final pu1 f26153a;

                {
                    this.f26153a = pu1Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.f26153a.m8192o();
                    return null;
                }
            }, pu1Var.f29588i);
        } catch (JSONException e2) {
            C0543w1.m26250l("Malformed CLD response", e2);
        }
    }

    /* renamed from: i */
    public final void m8198i() {
        if (!k10.f26207a.m6673e().booleanValue()) {
            if (this.f29592m.f25173d >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f31035i1)).intValue() && this.f29595p) {
                if (this.f29580a) {
                    return;
                }
                synchronized (this) {
                    if (this.f29580a) {
                        return;
                    }
                    this.f29591l.m6386d();
                    this.f29594o.mo8957e();
                    this.f29584e.mo6087c(new Runnable(this) { // from class: r4.fu1

                        /* renamed from: a */
                        public final pu1 f23670a;

                        {
                            this.f23670a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f23670a.m8188s();
                        }
                    }, this.f29588i);
                    this.f29580a = true;
                    h83<String> m8187t = m8187t();
                    this.f29590k.schedule(new Runnable(this) { // from class: r4.hu1

                        /* renamed from: a */
                        public final pu1 f24825a;

                        {
                            this.f24825a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f24825a.m8190q();
                        }
                    }, ((Long) C5592av.m12935c().m8098c(C6225rz.f31051k1)).longValue(), TimeUnit.SECONDS);
                    y73.m4799p(m8187t, new nu1(this), this.f29588i);
                    return;
                }
            }
        }
        if (!this.f29580a) {
            m8186u("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f29584e.m6086e(Boolean.FALSE);
            this.f29580a = true;
            this.f29581b = true;
        }
    }

    /* renamed from: j */
    public final List<g70> m8197j() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f29593n.keySet()) {
            g70 g70Var = this.f29593n.get(str);
            arrayList.add(new g70(str, g70Var.f23922b, g70Var.f23923d, g70Var.f23924k));
        }
        return arrayList;
    }

    /* renamed from: n */
    public final /* synthetic */ void m8193n(zp2 zp2Var, k70 k70Var, List list, String str) {
        try {
            try {
                Context context = this.f29586g.get();
                if (context == null) {
                    context = this.f29585f;
                }
                zp2Var.m4145B(context, k70Var, list);
            } catch (RemoteException e) {
                cm0.m12439d("", e);
            }
        } catch (mp2 unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
            sb.append("Failed to initialize adapter. ");
            sb.append(str);
            sb.append(" does not implement the initialize() method.");
            k70Var.mo8683s(sb.toString());
        }
    }

    /* renamed from: s */
    public final /* synthetic */ void m8188s() {
        this.f29591l.m6385e();
        this.f29594o.mo8958c();
        this.f29581b = true;
    }

    public pu1(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, gq1 gq1Var, ScheduledExecutorService scheduledExecutorService, us1 us1Var, im0 im0Var, ge1 ge1Var) {
        this.f29587h = gq1Var;
        this.f29585f = context;
        this.f29586g = weakReference;
        this.f29588i = executor2;
        this.f29590k = scheduledExecutorService;
        this.f29589j = executor;
        this.f29591l = us1Var;
        this.f29592m = im0Var;
        this.f29594o = ge1Var;
        m8186u("com.google.android.gms.ads.MobileAds", false, "", 0);
    }
}
