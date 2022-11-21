package p222x5;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p028c6.C1077i;
import p028c6.InterfaceC1076h;
import p053e6.InterfaceC3385e;
import p080h6.C4055a;
import p080h6.C4057c;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p124m5.C4638c;
import p196u5.C6930f;
import p196u5.InterfaceC6923a;
import p205v5.InterfaceC7071a;
import p214w5.InterfaceC7183a;
import p214w5.InterfaceC7184b;
import p230y5.C7503b;
/* renamed from: x5.l */
/* loaded from: classes2.dex */
public class C7367l {

    /* renamed from: a */
    public final Context f36911a;

    /* renamed from: b */
    public final C4638c f36912b;

    /* renamed from: c */
    public final C7379r f36913c;

    /* renamed from: d */
    public final long f36914d = System.currentTimeMillis();

    /* renamed from: e */
    public C7373m f36915e;

    /* renamed from: f */
    public C7373m f36916f;

    /* renamed from: g */
    public boolean f36917g;

    /* renamed from: h */
    public C7351j f36918h;

    /* renamed from: i */
    public final C7386v f36919i;

    /* renamed from: j */
    public final InterfaceC7184b f36920j;

    /* renamed from: k */
    public final InterfaceC7071a f36921k;

    /* renamed from: l */
    public final ExecutorService f36922l;

    /* renamed from: m */
    public final C7344h f36923m;

    /* renamed from: n */
    public final InterfaceC6923a f36924n;

    /* renamed from: x5.l$a */
    /* loaded from: classes2.dex */
    public class CallableC7368a implements Callable<AbstractC4346i<Void>> {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC3385e f36925a;

        public CallableC7368a(InterfaceC3385e interfaceC3385e) {
            this.f36925a = interfaceC3385e;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public AbstractC4346i<Void> call() {
            return C7367l.this.m1681f(this.f36925a);
        }
    }

    /* renamed from: x5.l$b */
    /* loaded from: classes2.dex */
    public class RunnableC7369b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC3385e f36927a;

        public RunnableC7369b(InterfaceC3385e interfaceC3385e) {
            this.f36927a = interfaceC3385e;
        }

        @Override // java.lang.Runnable
        public void run() {
            C7367l.this.m1681f(this.f36927a);
        }
    }

    /* renamed from: x5.l$c */
    /* loaded from: classes2.dex */
    public class CallableC7370c implements Callable<Boolean> {
        public CallableC7370c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() {
            try {
                boolean m1666d = C7367l.this.f36915e.m1666d();
                if (!m1666d) {
                    C6930f.m3016f().m3011k("Initialization marker file was not properly removed.");
                }
                return Boolean.valueOf(m1666d);
            } catch (Exception e) {
                C6930f.m3016f().m3017e("Problem encountered deleting Crashlytics initialization marker.", e);
                return Boolean.FALSE;
            }
        }
    }

    /* renamed from: x5.l$d */
    /* loaded from: classes2.dex */
    public class CallableC7371d implements Callable<Boolean> {
        public CallableC7371d() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() {
            return Boolean.valueOf(C7367l.this.f36918h.m1718r());
        }
    }

    /* renamed from: x5.l$e */
    /* loaded from: classes2.dex */
    public static final class C7372e implements C7503b.InterfaceC7505b {

        /* renamed from: a */
        public final InterfaceC1076h f36931a;

        @Override // p230y5.C7503b.InterfaceC7505b
        /* renamed from: a */
        public File mo1363a() {
            File file = new File(this.f36931a.mo24645b(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }

        public C7372e(InterfaceC1076h interfaceC1076h) {
            this.f36931a = interfaceC1076h;
        }
    }

    /* renamed from: i */
    public static String m1678i() {
        return "18.2.3";
    }

    /* renamed from: j */
    public static boolean m1677j(String str, boolean z) {
        if (!z) {
            C6930f.m3016f().m3013i("Configured not to require a build ID.");
            return true;
        } else if (TextUtils.isEmpty(str)) {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: e */
    public boolean m1682e() {
        return this.f36915e.m1667c();
    }

    /* renamed from: g */
    public AbstractC4346i<Void> m1680g(InterfaceC3385e interfaceC3385e) {
        return C7364k0.m1694e(this.f36922l, new CallableC7368a(interfaceC3385e));
    }

    /* renamed from: l */
    public void m1675l() {
        this.f36923m.m1759g(new CallableC7370c());
    }

    /* renamed from: d */
    public final void m1683d() {
        try {
            this.f36917g = Boolean.TRUE.equals((Boolean) C7364k0.m1695d(this.f36923m.m1759g(new CallableC7371d())));
        } catch (Exception unused) {
            this.f36917g = false;
        }
    }

    /* renamed from: f */
    public final AbstractC4346i<Void> m1681f(InterfaceC3385e interfaceC3385e) {
        m1674m();
        try {
            this.f36920j.mo2219a(new InterfaceC7183a() { // from class: x5.k
                @Override // p214w5.InterfaceC7183a
                /* renamed from: a */
                public final void mo1699a(String str) {
                    C7367l.this.m1676k(str);
                }
            });
            if (!interfaceC3385e.mo19012b().mo18716a().f15994a) {
                C6930f.m3016f().m3020b("Collection of crash reports disabled in Crashlytics settings.");
                return C4352l.m16768c(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f36918h.m1710z(interfaceC3385e)) {
                C6930f.m3016f().m3011k("Previous sessions could not be finalized.");
            }
            return this.f36918h.m1739R(interfaceC3385e.mo19013a());
        } catch (Exception e) {
            C6930f.m3016f().m3017e("Crashlytics encountered a problem during asynchronous initialization.", e);
            return C4352l.m16768c(e);
        } finally {
            m1675l();
        }
    }

    /* renamed from: h */
    public final void m1679h(InterfaceC3385e interfaceC3385e) {
        Future<?> submit = this.f36922l.submit(new RunnableC7369b(interfaceC3385e));
        C6930f.m3016f().m3020b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            C6930f.m3016f().m3017e("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            C6930f.m3016f().m3017e("Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            C6930f.m3016f().m3017e("Crashlytics timed out during initialization.", e3);
        }
    }

    /* renamed from: m */
    public void m1674m() {
        this.f36923m.m1764b();
        this.f36915e.m1669a();
        C6930f.m3016f().m3013i("Initialization marker file was created.");
    }

    /* renamed from: n */
    public boolean m1673n(C7329a c7329a, InterfaceC3385e interfaceC3385e) {
        if (m1677j(c7329a.f36816b, C7341g.m1785k(this.f36911a, "com.crashlytics.RequireBuildId", true))) {
            try {
                C1077i c1077i = new C1077i(this.f36911a);
                this.f36916f = new C7373m("crash_marker", c1077i);
                this.f36915e = new C7373m("initialization_marker", c1077i);
                C7343g0 c7343g0 = new C7343g0();
                C7372e c7372e = new C7372e(c1077i);
                C7503b c7503b = new C7503b(this.f36911a, c7372e);
                this.f36918h = new C7351j(this.f36911a, this.f36923m, this.f36919i, this.f36913c, c1077i, this.f36916f, c7329a, c7343g0, c7503b, c7372e, C7338e0.m1815g(this.f36911a, this.f36919i, c1077i, c7329a, c7503b, c7343g0, new C4055a(1024, new C4057c(10)), interfaceC3385e), this.f36924n, this.f36921k);
                boolean m1682e = m1682e();
                m1683d();
                this.f36918h.m1713w(Thread.getDefaultUncaughtExceptionHandler(), interfaceC3385e);
                if (m1682e && C7341g.m1793c(this.f36911a)) {
                    C6930f.m3016f().m3020b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                    m1679h(interfaceC3385e);
                    return false;
                }
                C6930f.m3016f().m3020b("Successfully configured exception handler.");
                return true;
            } catch (Exception e) {
                C6930f.m3016f().m3017e("Crashlytics was not started due to an exception during initialization", e);
                this.f36918h = null;
                return false;
            }
        }
        throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
    }

    public C7367l(C4638c c4638c, C7386v c7386v, InterfaceC6923a interfaceC6923a, C7379r c7379r, InterfaceC7184b interfaceC7184b, InterfaceC7071a interfaceC7071a, ExecutorService executorService) {
        this.f36912b = c4638c;
        this.f36913c = c7379r;
        this.f36911a = c4638c.m15899h();
        this.f36919i = c7386v;
        this.f36924n = interfaceC6923a;
        this.f36920j = interfaceC7184b;
        this.f36921k = interfaceC7071a;
        this.f36922l = executorService;
        this.f36923m = new C7344h(executorService);
    }

    /* renamed from: k */
    public void m1676k(String str) {
        this.f36918h.m1736U(System.currentTimeMillis() - this.f36914d, str);
    }
}
