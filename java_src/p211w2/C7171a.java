package p211w2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.prineside.tdi2.Config;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p017b4.C0553a;
import p177s4.AbstractBinderC6584e;
import p177s4.InterfaceC6583d;
import p185t3.C6746h;
import p185t3.C6748i;
import p185t3.C6756m;
import p185t3.ServiceConnectionC6732a;
import p220x3.C7297q;
/* renamed from: w2.a */
/* loaded from: classes.dex */
public class C7171a {

    /* renamed from: a */
    public ServiceConnectionC6732a f36446a;

    /* renamed from: b */
    public InterfaceC6583d f36447b;

    /* renamed from: c */
    public boolean f36448c;

    /* renamed from: d */
    public final Object f36449d;

    /* renamed from: e */
    public C7173b f36450e;

    /* renamed from: f */
    public final Context f36451f;

    /* renamed from: g */
    public final boolean f36452g;

    /* renamed from: h */
    public final long f36453h;

    /* renamed from: w2.a$a */
    /* loaded from: classes.dex */
    public static final class C7172a {

        /* renamed from: a */
        public final String f36454a;

        /* renamed from: b */
        public final boolean f36455b;

        public C7172a(String str, boolean z) {
            this.f36454a = str;
            this.f36455b = z;
        }

        /* renamed from: a */
        public final String m2232a() {
            return this.f36454a;
        }

        /* renamed from: b */
        public final boolean m2231b() {
            return this.f36455b;
        }

        public final String toString() {
            String str = this.f36454a;
            boolean z = this.f36455b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* renamed from: w2.a$b */
    /* loaded from: classes.dex */
    public static class C7173b extends Thread {

        /* renamed from: a */
        public WeakReference<C7171a> f36456a;

        /* renamed from: b */
        public long f36457b;

        /* renamed from: d */
        public CountDownLatch f36458d = new CountDownLatch(1);

        /* renamed from: k */
        public boolean f36459k = false;

        public C7173b(C7171a c7171a, long j) {
            this.f36456a = new WeakReference<>(c7171a);
            this.f36457b = j;
            start();
        }

        /* renamed from: a */
        public final void m2230a() {
            C7171a c7171a = this.f36456a.get();
            if (c7171a != null) {
                c7171a.m2244a();
                this.f36459k = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f36458d.await(this.f36457b, TimeUnit.MILLISECONDS)) {
                    return;
                }
                m2230a();
            } catch (InterruptedException unused) {
                m2230a();
            }
        }
    }

    public C7171a(Context context) {
        this(context, 30000L, false, false);
    }

    public C7171a(Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.f36449d = new Object();
        C7297q.m1883j(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f36451f = context;
        this.f36448c = false;
        this.f36453h = j;
        this.f36452g = z2;
    }

    /* renamed from: b */
    public static C7172a m2243b(Context context) {
        C7175c c7175c = new C7175c(context);
        boolean m2229a = c7175c.m2229a("gads:ad_id_app_context:enabled", false);
        float m2228b = c7175c.m2228b("gads:ad_id_app_context:ping_ratio", 0.0f);
        String m2227c = c7175c.m2227c("gads:ad_id_use_shared_preference:experiment_id", "");
        C7171a c7171a = new C7171a(context, -1L, m2229a, c7175c.m2229a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            c7171a.m2235j(false);
            C7172a m2242c = c7171a.m2242c();
            c7171a.m2234k(m2242c, m2229a, m2228b, SystemClock.elapsedRealtime() - elapsedRealtime, m2227c, null);
            return m2242c;
        } finally {
        }
    }

    /* renamed from: d */
    public static boolean m2241d(Context context) {
        C7175c c7175c = new C7175c(context);
        C7171a c7171a = new C7171a(context, -1L, c7175c.m2229a("gads:ad_id_app_context:enabled", false), c7175c.m2229a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            c7171a.m2235j(false);
            return c7171a.m2233l();
        } finally {
            c7171a.m2244a();
        }
    }

    /* renamed from: e */
    public static void m2240e(boolean z) {
    }

    /* renamed from: g */
    public static InterfaceC6583d m2238g(Context context, ServiceConnectionC6732a serviceConnectionC6732a) {
        try {
            return AbstractBinderC6584e.m3876j0(serviceConnectionC6732a.m3529a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* renamed from: h */
    public static ServiceConnectionC6732a m2237h(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int mo3488h = C6746h.m3490f().mo3488h(context, C6756m.f35427a);
            if (mo3488h == 0 || mo3488h == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                ServiceConnectionC6732a serviceConnectionC6732a = new ServiceConnectionC6732a();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (C0553a.m26188b().m26189a(context, intent, serviceConnectionC6732a, 1)) {
                        return serviceConnectionC6732a;
                    }
                    throw new IOException("Connection failure");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            }
            throw new IOException("Google Play services not available");
        } catch (PackageManager.NameNotFoundException unused) {
            throw new C6748i(9);
        }
    }

    /* renamed from: a */
    public final void m2244a() {
        C7297q.m1884i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f36451f == null || this.f36446a == null) {
                return;
            }
            if (this.f36448c) {
                C0553a.m26188b().m26187c(this.f36451f, this.f36446a);
            }
            this.f36448c = false;
            this.f36447b = null;
            this.f36446a = null;
        }
    }

    /* renamed from: c */
    public C7172a m2242c() {
        C7172a c7172a;
        C7297q.m1884i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f36448c) {
                synchronized (this.f36449d) {
                    C7173b c7173b = this.f36450e;
                    if (c7173b == null || !c7173b.f36459k) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m2235j(false);
                    if (!this.f36448c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C7297q.m1883j(this.f36446a);
            C7297q.m1883j(this.f36447b);
            try {
                c7172a = new C7172a(this.f36447b.getId(), this.f36447b.mo3874z0(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m2236i();
        return c7172a;
    }

    /* renamed from: f */
    public void m2239f() {
        m2235j(true);
    }

    public void finalize() {
        m2244a();
        super.finalize();
    }

    /* renamed from: i */
    public final void m2236i() {
        synchronized (this.f36449d) {
            C7173b c7173b = this.f36450e;
            if (c7173b != null) {
                c7173b.f36458d.countDown();
                try {
                    this.f36450e.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f36453h > 0) {
                this.f36450e = new C7173b(this, this.f36453h);
            }
        }
    }

    /* renamed from: j */
    public final void m2235j(boolean z) {
        C7297q.m1884i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f36448c) {
                m2244a();
            }
            ServiceConnectionC6732a m2237h = m2237h(this.f36451f, this.f36452g);
            this.f36446a = m2237h;
            this.f36447b = m2238g(this.f36451f, m2237h);
            this.f36448c = true;
            if (z) {
                m2236i();
            }
        }
    }

    /* renamed from: k */
    public final boolean m2234k(C7172a c7172a, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = Config.SITE_API_VERSION;
        hashMap.put("app_context", z ? Config.SITE_API_VERSION : "0");
        if (c7172a != null) {
            if (!c7172a.m2231b()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (c7172a != null && c7172a.m2232a() != null) {
            hashMap.put("ad_id_size", Integer.toString(c7172a.m2232a().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new C7174b(this, hashMap).start();
        return true;
    }

    /* renamed from: l */
    public final boolean m2233l() {
        boolean mo3875b;
        C7297q.m1884i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f36448c) {
                synchronized (this.f36449d) {
                    C7173b c7173b = this.f36450e;
                    if (c7173b == null || !c7173b.f36459k) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m2235j(false);
                    if (!this.f36448c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C7297q.m1883j(this.f36446a);
            C7297q.m1883j(this.f36447b);
            try {
                mo3875b = this.f36447b.mo3875b();
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m2236i();
        return mo3875b;
    }
}
