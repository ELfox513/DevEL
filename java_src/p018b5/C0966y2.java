package p018b5;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import p026c4.C1048i;
import p026c4.InterfaceC1045f;
import p061f5.C3518a;
import p070g5.C3769o7;
import p070g5.C3838u4;
import p070g5.InterfaceC3636d6;
import p220x3.C7297q;
/* renamed from: b5.y2 */
/* loaded from: classes2.dex */
public final class C0966y2 {

    /* renamed from: j */
    public static volatile C0966y2 f2425j;

    /* renamed from: a */
    public final String f2426a;

    /* renamed from: b */
    public final InterfaceC1045f f2427b;

    /* renamed from: c */
    public final ExecutorService f2428c;

    /* renamed from: d */
    public final C3518a f2429d;

    /* renamed from: e */
    public final List<Pair<InterfaceC3636d6, BinderC0796o2>> f2430e;

    /* renamed from: f */
    public int f2431f;

    /* renamed from: g */
    public boolean f2432g;

    /* renamed from: h */
    public final String f2433h;

    /* renamed from: i */
    public volatile InterfaceC0642f1 f2434i;

    /* renamed from: j */
    public static final boolean m24940j() {
        return true;
    }

    /* renamed from: n */
    public static final boolean m24936n(String str, String str2) {
        return (str2 == null || str == null || m24940j()) ? false : true;
    }

    /* renamed from: G */
    public final void m24954G(String str) {
        m24937m(new C0931w1(this, str));
    }

    /* renamed from: H */
    public final void m24953H(String str, String str2, Bundle bundle) {
        m24937m(new C0846r1(this, str, str2, bundle));
    }

    /* renamed from: I */
    public final void m24952I(String str) {
        m24937m(new C0948x1(this, str));
    }

    /* renamed from: J */
    public final void m24951J(String str, Bundle bundle) {
        m24938l(null, str, bundle, false, true, null);
    }

    /* renamed from: K */
    public final void m24950K(String str, String str2, Bundle bundle) {
        m24938l(str, str2, bundle, true, true, null);
    }

    /* renamed from: a */
    public final void m24949a(int i, String str, Object obj, Object obj2, Object obj3) {
        m24937m(new C0643f2(this, false, 5, str, obj, null, null));
    }

    /* renamed from: c */
    public final void m24947c(Bundle bundle) {
        m24937m(new C0829q1(this, bundle));
    }

    /* renamed from: d */
    public final void m24946d(Bundle bundle) {
        m24937m(new C0897u1(this, bundle));
    }

    /* renamed from: e */
    public final void m24945e(Activity activity, String str, String str2) {
        m24937m(new C0880t1(this, activity, str, str2));
    }

    /* renamed from: f */
    public final void m24944f(boolean z) {
        m24937m(new C0711j2(this, z));
    }

    /* renamed from: g */
    public final void m24943g(String str, String str2, Object obj, boolean z) {
        m24937m(new C0762m2(this, str, str2, obj, z));
    }

    /* renamed from: l */
    public final void m24938l(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m24937m(new C0745l2(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: m */
    public final void m24937m(AbstractRunnableC0779n2 abstractRunnableC0779n2) {
        this.f2428c.execute(abstractRunnableC0779n2);
    }

    /* renamed from: r */
    public final C3518a m24932r() {
        return this.f2429d;
    }

    /* renamed from: w */
    public final String m24927w() {
        return this.f2433h;
    }

    /* renamed from: A */
    public final String m24960A() {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0982z1(this, binderC0574b1));
        return binderC0574b1.m26151t0(500L);
    }

    /* renamed from: B */
    public final List<Bundle> m24959B(String str, String str2) {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0863s1(this, str, str2, binderC0574b1));
        List<Bundle> list = (List) BinderC0574b1.m26153L0(binderC0574b1.m26152o0(5000L), List.class);
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    /* renamed from: C */
    public final Map<String, Object> m24958C(String str, String str2, boolean z) {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0626e2(this, str, str2, z, binderC0574b1));
        Bundle m26152o0 = binderC0574b1.m26152o0(5000L);
        if (m26152o0 != null && m26152o0.size() != 0) {
            HashMap hashMap = new HashMap(m26152o0.size());
            for (String str3 : m26152o0.keySet()) {
                Object obj = m26152o0.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    /* renamed from: k */
    public final void m24939k(Exception exc, boolean z, boolean z2) {
        this.f2432g |= z;
        if (z) {
            Log.w(this.f2426a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m24949a(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f2426a, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: o */
    public final int m24935o(String str) {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0694i2(this, str, binderC0574b1));
        Integer num = (Integer) BinderC0574b1.m26153L0(binderC0574b1.m26152o0(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: p */
    public final long m24934p() {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0575b2(this, binderC0574b1));
        Long l = (Long) BinderC0574b1.m26153L0(binderC0574b1.m26152o0(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f2427b.mo24763a()).nextLong();
            int i = this.f2431f + 1;
            this.f2431f = i;
            return nextLong + i;
        }
        return l.longValue();
    }

    /* renamed from: q */
    public final Bundle m24933q(Bundle bundle, boolean z) {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0660g2(this, bundle, binderC0574b1));
        if (z) {
            return binderC0574b1.m26152o0(5000L);
        }
        return null;
    }

    /* renamed from: t */
    public final InterfaceC0642f1 m24930t(Context context, boolean z) {
        try {
            return AbstractBinderC0625e1.asInterface(DynamiteModule.m23003e(context, DynamiteModule.f7767g, ModuleDescriptor.MODULE_ID).m23004d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.C1414a e) {
            m24939k(e, true, false);
            return null;
        }
    }

    /* renamed from: x */
    public final String m24926x() {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0557a2(this, binderC0574b1));
        return binderC0574b1.m26151t0(50L);
    }

    /* renamed from: y */
    public final String m24925y() {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0609d2(this, binderC0574b1));
        return binderC0574b1.m26151t0(500L);
    }

    /* renamed from: z */
    public final String m24924z() {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        m24937m(new C0592c2(this, binderC0574b1));
        return binderC0574b1.m26151t0(500L);
    }

    public C0966y2(Context context, String str, String str2, String str3, Bundle bundle) {
        boolean z;
        if (str != null && m24936n(str2, str3)) {
            this.f2426a = str;
        } else {
            this.f2426a = "FA";
        }
        this.f2427b = C1048i.m24760d();
        this.f2428c = C0981z0.m24899a().mo24962a(new ThreadFactoryC0677h2(this), 1);
        this.f2429d = new C3518a(this);
        this.f2430e = new ArrayList();
        try {
            if (C3769o7.m18036c(context, "google_app_id", C3838u4.m17961a(context)) != null && !m24940j()) {
                this.f2433h = null;
                this.f2432g = true;
                Log.w(this.f2426a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException unused) {
        }
        if (!m24936n(str2, str3)) {
            this.f2433h = "fa";
            if (str2 != null && str3 != null) {
                Log.v(this.f2426a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            } else {
                if (str2 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z ^ (str3 == null)) {
                    Log.w(this.f2426a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            }
        } else {
            this.f2433h = str2;
        }
        m24937m(new C0914v1(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f2426a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C0949x2(this));
        }
    }

    /* renamed from: u */
    public static C0966y2 m24929u(Context context, String str, String str2, String str3, Bundle bundle) {
        C7297q.m1883j(context);
        if (f2425j == null) {
            synchronized (C0966y2.class) {
                if (f2425j == null) {
                    f2425j = new C0966y2(context, str, str2, str3, bundle);
                }
            }
        }
        return f2425j;
    }

    /* renamed from: b */
    public final void m24948b(InterfaceC3636d6 interfaceC3636d6) {
        C7297q.m1883j(interfaceC3636d6);
        synchronized (this.f2430e) {
            for (int i = 0; i < this.f2430e.size(); i++) {
                if (interfaceC3636d6.equals(this.f2430e.get(i).first)) {
                    Log.w(this.f2426a, "OnEventListener already registered.");
                    return;
                }
            }
            BinderC0796o2 binderC0796o2 = new BinderC0796o2(interfaceC3636d6);
            this.f2430e.add(new Pair<>(interfaceC3636d6, binderC0796o2));
            if (this.f2434i != null) {
                try {
                    this.f2434i.registerOnMeasurementEventListener(binderC0796o2);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f2426a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m24937m(new C0728k2(this, binderC0796o2));
        }
    }
}
