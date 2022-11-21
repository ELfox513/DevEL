package p217x0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.C0376a;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import p002a1.C0038k;
import p066g1.AbstractRunnableC3545a;
import p066g1.C3553f;
import p066g1.RunnableC3558j;
import p066g1.RunnableC3559k;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p209w0.AbstractC7129r;
import p209w0.AbstractC7131t;
import p209w0.AbstractC7132u;
import p209w0.C7117l;
import p209w0.C7127p;
import p209w0.EnumC7107d;
import p209w0.InterfaceC7119m;
import p225y0.C7399b;
/* renamed from: x0.i */
/* loaded from: classes.dex */
public class C7199i extends AbstractC7131t {

    /* renamed from: j */
    public static final String f36502j = AbstractC7114j.m2489f("WorkManagerImpl");

    /* renamed from: k */
    public static C7199i f36503k = null;

    /* renamed from: l */
    public static C7199i f36504l = null;

    /* renamed from: m */
    public static final Object f36505m = new Object();

    /* renamed from: a */
    public Context f36506a;

    /* renamed from: b */
    public C0376a f36507b;

    /* renamed from: c */
    public WorkDatabase f36508c;

    /* renamed from: d */
    public InterfaceC4086a f36509d;

    /* renamed from: e */
    public List<InterfaceC7195e> f36510e;

    /* renamed from: f */
    public C7193d f36511f;

    /* renamed from: g */
    public C3553f f36512g;

    /* renamed from: h */
    public boolean f36513h;

    /* renamed from: i */
    public BroadcastReceiver.PendingResult f36514i;

    public C7199i(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a) {
        this(context, c0376a, interfaceC4086a, context.getResources().getBoolean(C7127p.f36138a));
    }

    /* renamed from: A */
    public void m2174A(String str) {
        this.f36509d.mo17407b(new RunnableC3559k(this, str, false));
    }

    @Override // p209w0.AbstractC7131t
    /* renamed from: d */
    public InterfaceC7119m mo2171d(String str) {
        AbstractRunnableC3545a m18643c = AbstractRunnableC3545a.m18643c(str, this, true);
        this.f36509d.mo17407b(m18643c);
        return m18643c.m18641e();
    }

    /* renamed from: j */
    public List<InterfaceC7195e> m2167j(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a) {
        return Arrays.asList(C7196f.m2195a(context, this), new C7399b(context, c0376a, interfaceC4086a, this));
    }

    /* renamed from: k */
    public Context m2166k() {
        return this.f36506a;
    }

    /* renamed from: l */
    public C0376a m2165l() {
        return this.f36507b;
    }

    /* renamed from: o */
    public C3553f m2162o() {
        return this.f36512g;
    }

    /* renamed from: p */
    public C7193d m2161p() {
        return this.f36511f;
    }

    /* renamed from: q */
    public List<InterfaceC7195e> m2160q() {
        return this.f36510e;
    }

    /* renamed from: r */
    public WorkDatabase m2159r() {
        return this.f36508c;
    }

    /* renamed from: s */
    public InterfaceC4086a m2158s() {
        return this.f36509d;
    }

    /* renamed from: x */
    public void m2153x(String str) {
        m2152y(str, null);
    }

    /* renamed from: z */
    public void m2151z(String str) {
        this.f36509d.mo17407b(new RunnableC3559k(this, str, true));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0016, code lost:
        r4 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
        if (p217x0.C7199i.f36504l != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
        p217x0.C7199i.f36504l = new p217x0.C7199i(r4, r5, new p084i1.C4087b(r5.m26671l()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
        p217x0.C7199i.f36503k = p217x0.C7199i.f36504l;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2169h(android.content.Context r4, androidx.work.C0376a r5) {
        /*
            java.lang.Object r0 = p217x0.C7199i.f36505m
            monitor-enter(r0)
            x0.i r1 = p217x0.C7199i.f36503k     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L14
            x0.i r2 = p217x0.C7199i.f36504l     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto Lc
            goto L14
        Lc:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L34
            java.lang.String r5 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L34
            throw r4     // Catch: java.lang.Throwable -> L34
        L14:
            if (r1 != 0) goto L32
            android.content.Context r4 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L34
            x0.i r1 = p217x0.C7199i.f36504l     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L2e
            x0.i r1 = new x0.i     // Catch: java.lang.Throwable -> L34
            i1.b r2 = new i1.b     // Catch: java.lang.Throwable -> L34
            java.util.concurrent.Executor r3 = r5.m26671l()     // Catch: java.lang.Throwable -> L34
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L34
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Throwable -> L34
            p217x0.C7199i.f36504l = r1     // Catch: java.lang.Throwable -> L34
        L2e:
            x0.i r4 = p217x0.C7199i.f36504l     // Catch: java.lang.Throwable -> L34
            p217x0.C7199i.f36503k = r4     // Catch: java.lang.Throwable -> L34
        L32:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            return
        L34:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p217x0.C7199i.m2169h(android.content.Context, androidx.work.a):void");
    }

    @Deprecated
    /* renamed from: m */
    public static C7199i m2164m() {
        synchronized (f36505m) {
            C7199i c7199i = f36503k;
            if (c7199i != null) {
                return c7199i;
            }
            return f36504l;
        }
    }

    /* renamed from: n */
    public static C7199i m2163n(Context context) {
        C7199i m2164m;
        synchronized (f36505m) {
            m2164m = m2164m();
            if (m2164m == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof C0376a.InterfaceC0379c) {
                    m2169h(applicationContext, ((C0376a.InterfaceC0379c) applicationContext).m26668a());
                    m2164m = m2163n(applicationContext);
                } else {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            }
        }
        return m2164m;
    }

    /* renamed from: u */
    public void m2156u() {
        synchronized (f36505m) {
            this.f36513h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f36514i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f36514i = null;
            }
        }
    }

    /* renamed from: v */
    public void m2155v() {
        if (Build.VERSION.SDK_INT >= 23) {
            C0038k.m27786b(m2166k());
        }
        m2159r().mo26644B().mo18764u();
        C7196f.m2194b(m2165l(), m2159r(), m2160q());
    }

    /* renamed from: w */
    public void m2154w(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f36505m) {
            this.f36514i = pendingResult;
            if (this.f36513h) {
                pendingResult.finish();
                this.f36514i = null;
            }
        }
    }

    /* renamed from: y */
    public void m2152y(String str, WorkerParameters.C0375a c0375a) {
        this.f36509d.mo17407b(new RunnableC3558j(this, str, c0375a));
    }

    public C7199i(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, boolean z) {
        this(context, c0376a, interfaceC4086a, WorkDatabase.m26649s(context.getApplicationContext(), interfaceC4086a.mo17406c(), z));
    }

    @Override // p209w0.AbstractC7131t
    /* renamed from: a */
    public AbstractC7129r mo2173a(String str, EnumC7107d enumC7107d, List<C7117l> list) {
        if (!list.isEmpty()) {
            return new C7197g(this, str, enumC7107d, list);
        }
        throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
    }

    @Override // p209w0.AbstractC7131t
    /* renamed from: c */
    public InterfaceC7119m mo2172c(String str) {
        AbstractRunnableC3545a m18642d = AbstractRunnableC3545a.m18642d(str, this);
        this.f36509d.mo17407b(m18642d);
        return m18642d.m18641e();
    }

    @Override // p209w0.AbstractC7131t
    /* renamed from: e */
    public InterfaceC7119m mo2170e(List<? extends AbstractC7132u> list) {
        if (!list.isEmpty()) {
            return new C7197g(this, list).mo2192a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    /* renamed from: i */
    public InterfaceC7119m m2168i(UUID uuid) {
        AbstractRunnableC3545a m18644b = AbstractRunnableC3545a.m18644b(uuid, this);
        this.f36509d.mo17407b(m18644b);
        return m18644b.m18641e();
    }

    /* renamed from: t */
    public final void m2157t(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, WorkDatabase workDatabase, List<InterfaceC7195e> list, C7193d c7193d) {
        boolean isDeviceProtectedStorage;
        Context applicationContext = context.getApplicationContext();
        this.f36506a = applicationContext;
        this.f36507b = c0376a;
        this.f36509d = interfaceC4086a;
        this.f36508c = workDatabase;
        this.f36510e = list;
        this.f36511f = c7193d;
        this.f36512g = new C3553f(workDatabase);
        this.f36513h = false;
        if (Build.VERSION.SDK_INT >= 24) {
            isDeviceProtectedStorage = applicationContext.isDeviceProtectedStorage();
            if (isDeviceProtectedStorage) {
                throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
            }
        }
        this.f36509d.mo17407b(new ForceStopRunnable(applicationContext, this));
    }

    public C7199i(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        AbstractC7114j.m2490e(new AbstractC7114j.C7115a(c0376a.m26673j()));
        List<InterfaceC7195e> m2167j = m2167j(applicationContext, c0376a, interfaceC4086a);
        m2157t(context, c0376a, interfaceC4086a, workDatabase, m2167j, new C7193d(context, c0376a, interfaceC4086a, workDatabase, m2167j));
    }
}
