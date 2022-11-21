package p126m7;

import android.content.Context;
import com.google.firebase.remoteconfig.internal.C1433a;
import com.google.firebase.remoteconfig.internal.C1436b;
import com.google.firebase.remoteconfig.internal.C1438c;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p026c4.C1048i;
import p026c4.InterfaceC1043d;
import p026c4.InterfaceC1045f;
import p097j5.C4352l;
import p124m5.C4638c;
import p133n5.C4755c;
import p135n7.C4767e;
import p135n7.C4775k;
import p135n7.C4776l;
import p135n7.C4778n;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5434b;
import p170r6.InterfaceC6538g;
/* renamed from: m7.p */
/* loaded from: classes2.dex */
public class C4669p {

    /* renamed from: j */
    public static final InterfaceC1045f f18728j = C1048i.m24760d();

    /* renamed from: k */
    public static final Random f18729k = new Random();

    /* renamed from: a */
    public final Map<String, C4656e> f18730a;

    /* renamed from: b */
    public final Context f18731b;

    /* renamed from: c */
    public final ExecutorService f18732c;

    /* renamed from: d */
    public final C4638c f18733d;

    /* renamed from: e */
    public final InterfaceC6538g f18734e;

    /* renamed from: f */
    public final C4755c f18735f;

    /* renamed from: g */
    public final InterfaceC5434b<InterfaceC5424a> f18736g;

    /* renamed from: h */
    public final String f18737h;

    /* renamed from: i */
    public Map<String, String> f18738i;

    public C4669p(Context context, C4638c c4638c, InterfaceC6538g interfaceC6538g, C4755c c4755c, InterfaceC5434b<InterfaceC5424a> interfaceC5434b) {
        this(context, Executors.newCachedThreadPool(), c4638c, interfaceC6538g, c4755c, interfaceC5434b, true);
    }

    /* renamed from: i */
    public static C1438c m15841i(Context context, String str, String str2) {
        return new C1438c(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    /* renamed from: k */
    public static boolean m15839k(C4638c c4638c, String str) {
        return str.equals("firebase") && m15838l(c4638c);
    }

    /* renamed from: l */
    public static boolean m15838l(C4638c c4638c) {
        return c4638c.m15897j().equals("[DEFAULT]");
    }

    /* renamed from: m */
    public static /* synthetic */ InterfaceC5424a m15837m() {
        return null;
    }

    /* renamed from: b */
    public synchronized C4656e m15848b(String str) {
        C4767e m15846d;
        C4767e m15846d2;
        C4767e m15846d3;
        C1438c m15841i;
        C4775k m15842h;
        m15846d = m15846d(str, "fetch");
        m15846d2 = m15846d(str, "activate");
        m15846d3 = m15846d(str, "defaults");
        m15841i = m15841i(this.f18731b, this.f18737h, str);
        m15842h = m15842h(m15846d2, m15846d3);
        final C4778n m15840j = m15840j(this.f18733d, str, this.f18736g);
        if (m15840j != null) {
            m15842h.m15404b(new InterfaceC1043d() { // from class: m7.m
                @Override // p026c4.InterfaceC1043d
                public final void accept(Object obj, Object obj2) {
                    C4778n.this.m15383a((String) obj, (C1433a) obj2);
                }
            });
        }
        return m15847c(this.f18733d, str, this.f18734e, this.f18735f, this.f18732c, m15846d, m15846d2, m15846d3, m15844f(str, m15846d, m15841i), m15842h, m15841i);
    }

    /* renamed from: c */
    public synchronized C4656e m15847c(C4638c c4638c, String str, InterfaceC6538g interfaceC6538g, C4755c c4755c, Executor executor, C4767e c4767e, C4767e c4767e2, C4767e c4767e3, C1436b c1436b, C4775k c4775k, C1438c c1438c) {
        C4755c c4755c2;
        if (!this.f18730a.containsKey(str)) {
            Context context = this.f18731b;
            if (m15839k(c4638c, str)) {
                c4755c2 = c4755c;
            } else {
                c4755c2 = null;
            }
            C4656e c4656e = new C4656e(context, c4638c, interfaceC6538g, c4755c2, executor, c4767e, c4767e2, c4767e3, c1436b, c4775k, c1438c);
            c4656e.m15859o();
            this.f18730a.put(str, c4656e);
        }
        return this.f18730a.get(str);
    }

    /* renamed from: d */
    public final C4767e m15846d(String str, String str2) {
        return C4767e.m15413h(Executors.newCachedThreadPool(), C4776l.m15393c(this.f18731b, String.format("%s_%s_%s_%s.json", "frc", this.f18737h, str, str2)));
    }

    /* renamed from: e */
    public C4656e m15845e() {
        return m15848b("firebase");
    }

    /* renamed from: f */
    public synchronized C1436b m15844f(String str, C4767e c4767e, C1438c c1438c) {
        InterfaceC6538g interfaceC6538g;
        InterfaceC5434b<InterfaceC5424a> interfaceC5434b;
        interfaceC6538g = this.f18734e;
        if (m15838l(this.f18733d)) {
            interfaceC5434b = this.f18736g;
        } else {
            interfaceC5434b = new InterfaceC5434b() { // from class: m7.o
                @Override // p161q6.InterfaceC5434b
                public final Object get() {
                    InterfaceC5424a m15837m;
                    m15837m = C4669p.m15837m();
                    return m15837m;
                }
            };
        }
        return new C1436b(interfaceC6538g, interfaceC5434b, this.f18732c, f18728j, f18729k, c4767e, m15843g(this.f18733d.m15896k().m15877b(), str, c1438c), c1438c, this.f18738i);
    }

    /* renamed from: h */
    public final C4775k m15842h(C4767e c4767e, C4767e c4767e2) {
        return new C4775k(this.f18732c, c4767e, c4767e2);
    }

    /* renamed from: g */
    public ConfigFetchHttpClient m15843g(String str, String str2, C1438c c1438c) {
        return new ConfigFetchHttpClient(this.f18731b, this.f18733d.m15896k().m15876c(), str, str2, c1438c.m22861b(), c1438c.m22861b());
    }

    public C4669p(Context context, ExecutorService executorService, C4638c c4638c, InterfaceC6538g interfaceC6538g, C4755c c4755c, InterfaceC5434b<InterfaceC5424a> interfaceC5434b, boolean z) {
        this.f18730a = new HashMap();
        this.f18738i = new HashMap();
        this.f18731b = context;
        this.f18732c = executorService;
        this.f18733d = c4638c;
        this.f18734e = interfaceC6538g;
        this.f18735f = c4755c;
        this.f18736g = interfaceC5434b;
        this.f18737h = c4638c.m15896k().m15876c();
        if (z) {
            C4352l.m16769b(executorService, new Callable() { // from class: m7.n
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return C4669p.this.m15845e();
                }
            });
        }
    }

    /* renamed from: j */
    public static C4778n m15840j(C4638c c4638c, String str, InterfaceC5434b<InterfaceC5424a> interfaceC5434b) {
        if (m15838l(c4638c) && str.equals("firebase")) {
            return new C4778n(interfaceC5434b);
        }
        return null;
    }
}
