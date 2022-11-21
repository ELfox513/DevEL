package p124m5;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p026c4.C1042c;
import p026c4.C1054o;
import p026c4.C1056q;
import p143o6.InterfaceC5098c;
import p145p.C5270a;
import p161q6.InterfaceC5434b;
import p178s5.C6592d;
import p178s5.C6600g;
import p178s5.C6610n;
import p178s5.C6624w;
import p203v3.C7013g1;
import p203v3.ComponentCallbacks2C6998c;
import p215w6.C7186a;
import p220x3.C7289o;
import p220x3.C7297q;
import p232z.C7528i;
/* renamed from: m5.c */
/* loaded from: classes2.dex */
public class C4638c {

    /* renamed from: j */
    public static final Object f18680j = new Object();

    /* renamed from: k */
    public static final Executor f18681k = new ExecutorC4642d();

    /* renamed from: l */
    public static final Map<String, C4638c> f18682l = new C5270a();

    /* renamed from: a */
    public final Context f18683a;

    /* renamed from: b */
    public final String f18684b;

    /* renamed from: c */
    public final C4649i f18685c;

    /* renamed from: d */
    public final C6610n f18686d;

    /* renamed from: g */
    public final C6624w<C7186a> f18689g;

    /* renamed from: e */
    public final AtomicBoolean f18687e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f18688f = new AtomicBoolean();

    /* renamed from: h */
    public final List<InterfaceC4640b> f18690h = new CopyOnWriteArrayList();

    /* renamed from: i */
    public final List<Object> f18691i = new CopyOnWriteArrayList();

    /* renamed from: m5.c$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4640b {
        /* renamed from: a */
        void m15885a(boolean z);
    }

    /* renamed from: m5.c$d */
    /* loaded from: classes2.dex */
    public static class ExecutorC4642d implements Executor {

        /* renamed from: a */
        public static final Handler f18693a = new Handler(Looper.getMainLooper());

        public ExecutorC4642d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            f18693a.post(runnable);
        }
    }

    @TargetApi(24)
    /* renamed from: m5.c$e */
    /* loaded from: classes2.dex */
    public static class C4643e extends BroadcastReceiver {

        /* renamed from: b */
        public static AtomicReference<C4643e> f18694b = new AtomicReference<>();

        /* renamed from: a */
        public final Context f18695a;

        /* renamed from: c */
        public void m15880c() {
            this.f18695a.unregisterReceiver(this);
        }

        /* renamed from: b */
        public static void m15881b(Context context) {
            if (f18694b.get() == null) {
                C4643e c4643e = new C4643e(context);
                if (C7013g1.m2669a(f18694b, null, c4643e)) {
                    context.registerReceiver(c4643e, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public C4643e(Context context) {
            this.f18695a = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (C4638c.f18680j) {
                for (C4638c c4638c : C4638c.f18682l.values()) {
                    c4638c.m15894m();
                }
            }
            m15880c();
        }
    }

    /* renamed from: o */
    public static C4638c m15892o(Context context, C4649i c4649i) {
        return m15891p(context, c4649i, "[DEFAULT]");
    }

    /* renamed from: t */
    public static String m15887t(String str) {
        return str.trim();
    }

    /* renamed from: f */
    public final void m15901f() {
        C7297q.m1879n(!this.f18688f.get(), "FirebaseApp was deleted");
    }

    public int hashCode() {
        return this.f18684b.hashCode();
    }

    /* renamed from: r */
    public boolean m15889r() {
        return "[DEFAULT]".equals(m15897j());
    }

    public String toString() {
        return C7289o.m1906c(this).m1905a("name", this.f18684b).m1905a("options", this.f18685c).toString();
    }

    @TargetApi(14)
    /* renamed from: m5.c$c */
    /* loaded from: classes2.dex */
    public static class C4641c implements ComponentCallbacks2C6998c.InterfaceC6999a {

        /* renamed from: a */
        public static AtomicReference<C4641c> f18692a = new AtomicReference<>();

        /* renamed from: c */
        public static void m15883c(Context context) {
            if (C1054o.m24740a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f18692a.get() == null) {
                    C4641c c4641c = new C4641c();
                    if (C7013g1.m2669a(f18692a, null, c4641c)) {
                        ComponentCallbacks2C6998c.m2766c(application);
                        ComponentCallbacks2C6998c.m2767b().m2768a(c4641c);
                    }
                }
            }
        }

        @Override // p203v3.ComponentCallbacks2C6998c.InterfaceC6999a
        /* renamed from: a */
        public void mo2586a(boolean z) {
            synchronized (C4638c.f18680j) {
                Iterator it = new ArrayList(C4638c.f18682l.values()).iterator();
                while (it.hasNext()) {
                    C4638c c4638c = (C4638c) it.next();
                    if (c4638c.f18687e.get()) {
                        c4638c.m15886u(z);
                    }
                }
            }
        }
    }

    /* renamed from: i */
    public static C4638c m15898i() {
        C4638c c4638c;
        synchronized (f18680j) {
            c4638c = f18682l.get("[DEFAULT]");
            if (c4638c == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + C1056q.m24728a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return c4638c;
    }

    /* renamed from: n */
    public static C4638c m15893n(Context context) {
        synchronized (f18680j) {
            if (f18682l.containsKey("[DEFAULT]")) {
                return m15898i();
            }
            C4649i m15878a = C4649i.m15878a(context);
            if (m15878a == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return m15892o(context, m15878a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ C7186a m15888s(Context context) {
        return new C7186a(context, m15895l(), (InterfaceC5098c) this.f18686d.mo3827a(InterfaceC5098c.class));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C4638c)) {
            return false;
        }
        return this.f18684b.equals(((C4638c) obj).m15897j());
    }

    /* renamed from: l */
    public String m15895l() {
        return C1042c.m24775b(m15897j().getBytes(Charset.defaultCharset())) + "+" + C1042c.m24775b(m15896k().m15876c().getBytes(Charset.defaultCharset()));
    }

    /* renamed from: m */
    public final void m15894m() {
        if (!C7528i.m1297a(this.f18683a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + m15897j());
            C4643e.m15881b(this.f18683a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + m15897j());
        this.f18686d.m3816l(m15889r());
    }

    /* renamed from: u */
    public final void m15886u(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (InterfaceC4640b interfaceC4640b : this.f18690h) {
            interfaceC4640b.m15885a(z);
        }
    }

    public C4638c(final Context context, String str, C4649i c4649i) {
        this.f18683a = (Context) C7297q.m1883j(context);
        this.f18684b = C7297q.m1887f(str);
        this.f18685c = (C4649i) C7297q.m1883j(c4649i);
        this.f18686d = C6610n.m3819i(f18681k).m3804d(C6600g.m3833c(context, ComponentDiscoveryService.class).m3834b()).m3805c(new FirebaseCommonRegistrar()).m3806b(C6592d.m3848p(context, Context.class, new Class[0])).m3806b(C6592d.m3848p(this, C4638c.class, new Class[0])).m3806b(C6592d.m3848p(c4649i, C4649i.class, new Class[0])).m3803e();
        this.f18689g = new C6624w<>(new InterfaceC5434b() { // from class: m5.b
            @Override // p161q6.InterfaceC5434b
            public final Object get() {
                C7186a m15888s;
                m15888s = C4638c.this.m15888s(context);
                return m15888s;
            }
        });
    }

    /* renamed from: p */
    public static C4638c m15891p(Context context, C4649i c4649i, String str) {
        boolean z;
        C4638c c4638c;
        C4641c.m15883c(context);
        String m15887t = m15887t(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f18680j) {
            Map<String, C4638c> map = f18682l;
            if (!map.containsKey(m15887t)) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1879n(z, "FirebaseApp name " + m15887t + " already exists!");
            C7297q.m1882k(context, "Application context cannot be null.");
            c4638c = new C4638c(context, m15887t, c4649i);
            map.put(m15887t, c4638c);
        }
        c4638c.m15894m();
        return c4638c;
    }

    /* renamed from: g */
    public <T> T m15900g(Class<T> cls) {
        m15901f();
        return (T) this.f18686d.mo3827a(cls);
    }

    /* renamed from: h */
    public Context m15899h() {
        m15901f();
        return this.f18683a;
    }

    /* renamed from: j */
    public String m15897j() {
        m15901f();
        return this.f18684b;
    }

    /* renamed from: k */
    public C4649i m15896k() {
        m15901f();
        return this.f18685c;
    }

    /* renamed from: q */
    public boolean m15890q() {
        m15901f();
        return this.f18689g.get().m2217b();
    }
}
