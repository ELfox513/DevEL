package p222x5;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import p028c6.InterfaceC1076h;
import p053e6.InterfaceC3385e;
import p062f6.C3520a;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p097j5.C4352l;
import p097j5.InterfaceC4344h;
import p196u5.C6930f;
import p196u5.InterfaceC6923a;
import p196u5.InterfaceC6931g;
import p205v5.InterfaceC7071a;
import p222x5.C7376p;
import p230y5.C7503b;
import p238z5.AbstractC7810c0;
/* renamed from: x5.j */
/* loaded from: classes2.dex */
public class C7351j {

    /* renamed from: t */
    public static final FilenameFilter f36864t = new FilenameFilter() { // from class: x5.i
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean startsWith;
            startsWith = str.startsWith(".ae");
            return startsWith;
        }
    };

    /* renamed from: a */
    public final Context f36865a;

    /* renamed from: b */
    public final C7379r f36866b;

    /* renamed from: c */
    public final C7373m f36867c;

    /* renamed from: d */
    public final C7343g0 f36868d;

    /* renamed from: e */
    public final C7344h f36869e;

    /* renamed from: f */
    public final C7386v f36870f;

    /* renamed from: g */
    public final InterfaceC1076h f36871g;

    /* renamed from: h */
    public final C7329a f36872h;

    /* renamed from: i */
    public final C7503b.InterfaceC7505b f36873i;

    /* renamed from: j */
    public final C7503b f36874j;

    /* renamed from: k */
    public final InterfaceC6923a f36875k;

    /* renamed from: l */
    public final String f36876l;

    /* renamed from: m */
    public final InterfaceC7071a f36877m;

    /* renamed from: n */
    public final C7338e0 f36878n;

    /* renamed from: o */
    public C7376p f36879o;

    /* renamed from: p */
    public final C4348j<Boolean> f36880p = new C4348j<>();

    /* renamed from: q */
    public final C4348j<Boolean> f36881q = new C4348j<>();

    /* renamed from: r */
    public final C4348j<Void> f36882r = new C4348j<>();

    /* renamed from: s */
    public final AtomicBoolean f36883s = new AtomicBoolean(false);

    /* renamed from: x5.j$a */
    /* loaded from: classes2.dex */
    public class CallableC7352a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f36884a;

        public CallableC7352a(long j) {
            this.f36884a = j;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f36884a);
            C7351j.this.f36877m.mo2568a("_ae", bundle);
            return null;
        }
    }

    /* renamed from: x5.j$b */
    /* loaded from: classes2.dex */
    public class C7353b implements C7376p.InterfaceC7377a {
        public C7353b() {
        }

        @Override // p222x5.C7376p.InterfaceC7377a
        /* renamed from: a */
        public void mo1636a(InterfaceC3385e interfaceC3385e, Thread thread, Throwable th) {
            C7351j.this.m1748I(interfaceC3385e, thread, th);
        }
    }

    /* renamed from: x5.j$c */
    /* loaded from: classes2.dex */
    public class CallableC7354c implements Callable<AbstractC4346i<Void>> {

        /* renamed from: a */
        public final /* synthetic */ long f36887a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f36888b;

        /* renamed from: c */
        public final /* synthetic */ Thread f36889c;

        /* renamed from: d */
        public final /* synthetic */ InterfaceC3385e f36890d;

        /* renamed from: x5.j$c$a */
        /* loaded from: classes2.dex */
        public class C7355a implements InterfaceC4344h<C3520a, Void> {

            /* renamed from: a */
            public final /* synthetic */ Executor f36892a;

            public C7355a(Executor executor) {
                this.f36892a = executor;
            }

            @Override // p097j5.InterfaceC4344h
            /* renamed from: b */
            public AbstractC4346i<Void> mo1703a(C3520a c3520a) {
                if (c3520a == null) {
                    C6930f.m3016f().m3011k("Received null app settings, cannot send reports at crash time.");
                    return C4352l.m16767d(null);
                }
                return C4352l.m16765f(C7351j.this.m1741P(), C7351j.this.f36878n.m1802t(this.f36892a));
            }
        }

        public CallableC7354c(long j, Throwable th, Thread thread, InterfaceC3385e interfaceC3385e) {
            this.f36887a = j;
            this.f36888b = th;
            this.f36889c = thread;
            this.f36890d = interfaceC3385e;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public AbstractC4346i<Void> call() {
            long m1749H = C7351j.m1749H(this.f36887a);
            String m1754C = C7351j.this.m1754C();
            if (m1754C == null) {
                C6930f.m3016f().m3018d("Tried to write a fatal exception while no session was open.");
                return C4352l.m16767d(null);
            }
            C7351j.this.f36867c.m1669a();
            C7351j.this.f36878n.m1804r(this.f36888b, this.f36889c, m1754C, m1749H);
            C7351j.this.m1714v(this.f36887a);
            C7351j.this.m1717s(this.f36890d);
            C7351j.this.m1715u();
            if (!C7351j.this.f36866b.m1631d()) {
                return C4352l.m16767d(null);
            }
            Executor m1763c = C7351j.this.f36869e.m1763c();
            return this.f36890d.mo19013a().mo16784r(m1763c, new C7355a(m1763c));
        }
    }

    /* renamed from: x5.j$d */
    /* loaded from: classes2.dex */
    public class C7356d implements InterfaceC4344h<Void, Boolean> {
        public C7356d() {
        }

        @Override // p097j5.InterfaceC4344h
        /* renamed from: b */
        public AbstractC4346i<Boolean> mo1703a(Void r1) {
            return C4352l.m16767d(Boolean.TRUE);
        }
    }

    /* renamed from: x5.j$e */
    /* loaded from: classes2.dex */
    public class C7357e implements InterfaceC4344h<Boolean, Void> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC4346i f36895a;

        /* renamed from: x5.j$e$a */
        /* loaded from: classes2.dex */
        public class CallableC7358a implements Callable<AbstractC4346i<Void>> {

            /* renamed from: a */
            public final /* synthetic */ Boolean f36897a;

            /* renamed from: x5.j$e$a$a */
            /* loaded from: classes2.dex */
            public class C7359a implements InterfaceC4344h<C3520a, Void> {

                /* renamed from: a */
                public final /* synthetic */ Executor f36899a;

                public C7359a(Executor executor) {
                    this.f36899a = executor;
                }

                @Override // p097j5.InterfaceC4344h
                /* renamed from: b */
                public AbstractC4346i<Void> mo1703a(C3520a c3520a) {
                    if (c3520a == null) {
                        C6930f.m3016f().m3011k("Received null app settings at app startup. Cannot send cached reports");
                        return C4352l.m16767d(null);
                    }
                    C7351j.this.m1741P();
                    C7351j.this.f36878n.m1802t(this.f36899a);
                    C7351j.this.f36882r.m16771e(null);
                    return C4352l.m16767d(null);
                }
            }

            public CallableC7358a(Boolean bool) {
                this.f36897a = bool;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public AbstractC4346i<Void> call() {
                if (!this.f36897a.booleanValue()) {
                    C6930f.m3016f().m3013i("Deleting cached crash reports...");
                    C7351j.m1719q(C7351j.this.m1745L());
                    C7351j.this.f36878n.m1803s();
                    C7351j.this.f36882r.m16771e(null);
                    return C4352l.m16767d(null);
                }
                C6930f.m3016f().m3020b("Sending cached crash reports...");
                C7351j.this.f36866b.m1632c(this.f36897a.booleanValue());
                Executor m1763c = C7351j.this.f36869e.m1763c();
                return C7357e.this.f36895a.mo16784r(m1763c, new C7359a(m1763c));
            }
        }

        public C7357e(AbstractC4346i abstractC4346i) {
            this.f36895a = abstractC4346i;
        }

        @Override // p097j5.InterfaceC4344h
        /* renamed from: b */
        public AbstractC4346i<Void> mo1703a(Boolean bool) {
            return C7351j.this.f36869e.m1758h(new CallableC7358a(bool));
        }
    }

    /* renamed from: x5.j$f */
    /* loaded from: classes2.dex */
    public class CallableC7360f implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f36901a;

        /* renamed from: b */
        public final /* synthetic */ String f36902b;

        public CallableC7360f(long j, String str) {
            this.f36901a = j;
            this.f36902b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            if (!C7351j.this.m1747J()) {
                C7351j.this.f36874j.m1364g(this.f36901a, this.f36902b);
                return null;
            }
            return null;
        }
    }

    /* renamed from: x5.j$g */
    /* loaded from: classes2.dex */
    public class CallableC7361g implements Callable<Void> {
        public CallableC7361g() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            C7351j.this.m1715u();
            return null;
        }
    }

    /* renamed from: A */
    public static boolean m1756A() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: D */
    public static long m1753D() {
        return m1749H(System.currentTimeMillis());
    }

    /* renamed from: H */
    public static long m1749H(long j) {
        return j / 1000;
    }

    /* renamed from: M */
    public static File[] m1744M(File file, FilenameFilter filenameFilter) {
        return m1712x(file.listFiles(filenameFilter));
    }

    /* renamed from: x */
    public static File[] m1712x(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    /* renamed from: B */
    public final Context m1755B() {
        return this.f36865a;
    }

    /* renamed from: E */
    public File m1752E() {
        return this.f36871g.mo24645b();
    }

    /* renamed from: G */
    public File m1750G() {
        return new File(m1752E(), "native-sessions");
    }

    /* renamed from: I */
    public synchronized void m1748I(InterfaceC3385e interfaceC3385e, Thread thread, Throwable th) {
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3020b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        try {
            C7364k0.m1695d(this.f36869e.m1758h(new CallableC7354c(System.currentTimeMillis(), th, thread, interfaceC3385e)));
        } catch (Exception e) {
            C6930f.m3016f().m3017e("Error handling uncaught exception", e);
        }
    }

    /* renamed from: J */
    public boolean m1747J() {
        C7376p c7376p = this.f36879o;
        return c7376p != null && c7376p.m1638a();
    }

    /* renamed from: L */
    public File[] m1745L() {
        return m1743N(f36864t);
    }

    /* renamed from: N */
    public final File[] m1743N(FilenameFilter filenameFilter) {
        return m1744M(m1752E(), filenameFilter);
    }

    /* renamed from: Q */
    public void m1740Q() {
        this.f36869e.m1759g(new CallableC7361g());
    }

    /* renamed from: U */
    public void m1736U(long j, String str) {
        this.f36869e.m1759g(new CallableC7360f(j, str));
    }

    /* renamed from: s */
    public void m1717s(InterfaceC3385e interfaceC3385e) {
        m1716t(false, interfaceC3385e);
    }

    /* renamed from: F */
    public static List<InterfaceC7330a0> m1751F(InterfaceC6931g interfaceC6931g, String str, File file, byte[] bArr) {
        C7390z c7390z = new C7390z(file);
        File m1593c = c7390z.m1593c(str);
        File m1594b = c7390z.m1594b(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C7337e("logs_file", "logs", bArr));
        arrayList.add(new C7385u("crash_meta_file", "metadata", interfaceC6931g.mo3004f()));
        arrayList.add(new C7385u("session_meta_file", "session", interfaceC6931g.mo3005e()));
        arrayList.add(new C7385u("app_meta_file", "app", interfaceC6931g.mo3009a()));
        arrayList.add(new C7385u("device_meta_file", "device", interfaceC6931g.mo3007c()));
        arrayList.add(new C7385u("os_meta_file", "os", interfaceC6931g.mo3008b()));
        arrayList.add(new C7385u("minidump_file", "minidump", interfaceC6931g.mo3006d()));
        arrayList.add(new C7385u("user_meta_file", "user", m1593c));
        arrayList.add(new C7385u("keys_file", "keys", m1594b));
        return arrayList;
    }

    /* renamed from: o */
    public static AbstractC7810c0.AbstractC7812b m1721o(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return AbstractC7810c0.AbstractC7812b.m299c(C7341g.m1784l(), Build.MODEL, Runtime.getRuntime().availableProcessors(), C7341g.m1777s(), statFs.getBlockCount() * statFs.getBlockSize(), C7341g.m1772x(context), C7341g.m1783m(context), Build.MANUFACTURER, Build.PRODUCT);
    }

    /* renamed from: p */
    public static AbstractC7810c0.AbstractC7813c m1720p(Context context) {
        return AbstractC7810c0.AbstractC7813c.m298a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, C7341g.m1771y(context));
    }

    /* renamed from: q */
    public static void m1719q(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            file.delete();
        }
    }

    /* renamed from: C */
    public final String m1754C() {
        List<String> m1809m = this.f36878n.m1809m();
        if (!m1809m.isEmpty()) {
            return m1809m.get(0);
        }
        return null;
    }

    /* renamed from: P */
    public final AbstractC4346i<Void> m1741P() {
        File[] m1745L;
        ArrayList arrayList = new ArrayList();
        for (File file : m1745L()) {
            try {
                arrayList.add(m1742O(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                C6930f.m3016f().m3011k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return C4352l.m16766e(arrayList);
    }

    /* renamed from: R */
    public AbstractC4346i<Void> m1739R(AbstractC4346i<C3520a> abstractC4346i) {
        if (!this.f36878n.m1811k()) {
            C6930f.m3016f().m3013i("No crash reports are available to be sent.");
            this.f36880p.m16771e(Boolean.FALSE);
            return C4352l.m16767d(null);
        }
        C6930f.m3016f().m3013i("Crash reports are available to be sent.");
        return m1738S().mo16785q(new C7357e(abstractC4346i));
    }

    /* renamed from: S */
    public final AbstractC4346i<Boolean> m1738S() {
        if (this.f36866b.m1631d()) {
            C6930f.m3016f().m3020b("Automatic data collection is enabled. Allowing upload.");
            this.f36880p.m16771e(Boolean.FALSE);
            return C4352l.m16767d(Boolean.TRUE);
        }
        C6930f.m3016f().m3020b("Automatic data collection is disabled.");
        C6930f.m3016f().m3013i("Notifying that unsent reports are available.");
        this.f36880p.m16771e(Boolean.TRUE);
        AbstractC4346i<TContinuationResult> mo16785q = this.f36866b.m1628g().mo16785q(new C7356d());
        C6930f.m3016f().m3020b("Waiting for send/deleteUnsentReports to be called.");
        return C7364k0.m1690i(mo16785q, this.f36881q.m16775a());
    }

    /* renamed from: T */
    public final void m1737T(String str) {
        List historicalProcessExitReasons;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            historicalProcessExitReasons = ((ActivityManager) this.f36865a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 1);
            if (historicalProcessExitReasons.size() != 0) {
                C7503b c7503b = new C7503b(this.f36865a, this.f36873i, str);
                C7343g0 c7343g0 = new C7343g0();
                c7343g0.m1766c(new C7390z(m1752E()).m1591e(str));
                this.f36878n.m1806p(str, (ApplicationExitInfo) historicalProcessExitReasons.get(0), c7503b, c7343g0);
                return;
            }
            return;
        }
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("ANR feature enabled, but device is API " + i);
    }

    /* renamed from: r */
    public boolean m1718r() {
        if (!this.f36867c.m1667c()) {
            String m1754C = m1754C();
            if (m1754C != null && this.f36875k.mo3029d(m1754C)) {
                return true;
            }
            return false;
        }
        C6930f.m3016f().m3013i("Found previous crash marker.");
        this.f36867c.m1666d();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public final void m1716t(boolean z, InterfaceC3385e interfaceC3385e) {
        List<String> m1809m = this.f36878n.m1809m();
        if (m1809m.size() <= z) {
            C6930f.m3016f().m3013i("No open sessions to be closed.");
            return;
        }
        String str = m1809m.get(z ? 1 : 0);
        if (interfaceC3385e.mo19012b().mo18716a().f15995b) {
            m1737T(str);
        }
        if (this.f36875k.mo3029d(str)) {
            m1711y(str);
            this.f36875k.mo3032a(str);
        }
        String str2 = null;
        if (z != 0) {
            str2 = m1809m.get(0);
        }
        this.f36878n.m1813i(m1753D(), str2);
    }

    /* renamed from: v */
    public final void m1714v(long j) {
        try {
            File m1752E = m1752E();
            new File(m1752E, ".ae" + j).createNewFile();
        } catch (IOException e) {
            C6930f.m3016f().m3010l("Could not create app exception marker file.", e);
        }
    }

    /* renamed from: z */
    public boolean m1710z(InterfaceC3385e interfaceC3385e) {
        this.f36869e.m1764b();
        if (m1747J()) {
            C6930f.m3016f().m3011k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        C6930f.m3016f().m3013i("Finalizing previously open sessions.");
        try {
            m1716t(true, interfaceC3385e);
            C6930f.m3016f().m3013i("Closed all previously open sessions.");
            return true;
        } catch (Exception e) {
            C6930f.m3016f().m3017e("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    public C7351j(Context context, C7344h c7344h, C7386v c7386v, C7379r c7379r, InterfaceC1076h interfaceC1076h, C7373m c7373m, C7329a c7329a, C7343g0 c7343g0, C7503b c7503b, C7503b.InterfaceC7505b interfaceC7505b, C7338e0 c7338e0, InterfaceC6923a interfaceC6923a, InterfaceC7071a interfaceC7071a) {
        this.f36865a = context;
        this.f36869e = c7344h;
        this.f36870f = c7386v;
        this.f36866b = c7379r;
        this.f36871g = interfaceC1076h;
        this.f36867c = c7373m;
        this.f36872h = c7329a;
        this.f36868d = c7343g0;
        this.f36874j = c7503b;
        this.f36873i = interfaceC7505b;
        this.f36875k = interfaceC6923a;
        this.f36876l = c7329a.f36821g.mo17318a();
        this.f36877m = interfaceC7071a;
        this.f36878n = c7338e0;
    }

    /* renamed from: n */
    public static AbstractC7810c0.AbstractC7811a m1722n(C7386v c7386v, C7329a c7329a, String str) {
        return AbstractC7810c0.AbstractC7811a.m300b(c7386v.m1610f(), c7329a.f36819e, c7329a.f36820f, c7386v.mo1602a(), EnumC7380s.m1626c(c7329a.f36817c).m1625d(), str);
    }

    /* renamed from: O */
    public final AbstractC4346i<Void> m1742O(long j) {
        if (m1756A()) {
            C6930f.m3016f().m3011k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return C4352l.m16767d(null);
        }
        C6930f.m3016f().m3020b("Logging app exception event to Firebase Analytics");
        return C4352l.m16769b(new ScheduledThreadPoolExecutor(1), new CallableC7352a(j));
    }

    /* renamed from: u */
    public final void m1715u() {
        long m1753D = m1753D();
        String c7339f = new C7339f(this.f36870f).toString();
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3020b("Opening a new session with ID " + c7339f);
        this.f36875k.mo3028e(c7339f, String.format(Locale.US, "Crashlytics Android SDK/%s", C7367l.m1678i()), m1753D, AbstractC7810c0.m301b(m1722n(this.f36870f, this.f36872h, this.f36876l), m1720p(m1755B()), m1721o(m1755B())));
        this.f36874j.m1366e(c7339f);
        this.f36878n.m1808n(c7339f, m1753D);
    }

    /* renamed from: w */
    public void m1713w(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, InterfaceC3385e interfaceC3385e) {
        m1740Q();
        C7376p c7376p = new C7376p(new C7353b(), interfaceC3385e, uncaughtExceptionHandler, this.f36875k);
        this.f36879o = c7376p;
        Thread.setDefaultUncaughtExceptionHandler(c7376p);
    }

    /* renamed from: y */
    public final void m1711y(String str) {
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("Finalizing native report for session " + str);
        InterfaceC6931g mo3031b = this.f36875k.mo3031b(str);
        File mo3006d = mo3031b.mo3006d();
        if (mo3006d != null && mo3006d.exists()) {
            long lastModified = mo3006d.lastModified();
            C7503b c7503b = new C7503b(this.f36865a, this.f36873i, str);
            File file = new File(m1750G(), str);
            if (!file.mkdirs()) {
                C6930f.m3016f().m3011k("Couldn't create directory to store native session files, aborting.");
                return;
            }
            m1714v(lastModified);
            List<InterfaceC7330a0> m1751F = m1751F(mo3031b, str, m1752E(), c7503b.m1369b());
            C7332b0.m1829b(file, m1751F);
            this.f36878n.m1814h(str, m1751F);
            c7503b.m1370a();
            return;
        }
        C6930f m3016f2 = C6930f.m3016f();
        m3016f2.m3011k("No minidump data found for session " + str);
    }
}
