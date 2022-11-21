package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p014b1.C0427d;
import p014b1.InterfaceC0426c;
import p057f1.C3482p;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p209w0.C7108e;
import p217x0.C7199i;
import p217x0.InterfaceC7191b;
/* renamed from: androidx.work.impl.foreground.a */
/* loaded from: classes.dex */
public class C0407a implements InterfaceC0426c, InterfaceC7191b {

    /* renamed from: v */
    public static final String f1451v = AbstractC7114j.m2489f("SystemFgDispatcher");

    /* renamed from: a */
    public Context f1452a;

    /* renamed from: b */
    public C7199i f1453b;

    /* renamed from: d */
    public final InterfaceC4086a f1454d;

    /* renamed from: k */
    public final Object f1455k = new Object();

    /* renamed from: p */
    public String f1456p;

    /* renamed from: q */
    public final Map<String, C7108e> f1457q;

    /* renamed from: r */
    public final Map<String, C3482p> f1458r;

    /* renamed from: s */
    public final Set<C3482p> f1459s;

    /* renamed from: t */
    public final C0427d f1460t;

    /* renamed from: u */
    public InterfaceC0409b f1461u;

    /* renamed from: androidx.work.impl.foreground.a$a */
    /* loaded from: classes.dex */
    public class RunnableC0408a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ WorkDatabase f1462a;

        /* renamed from: b */
        public final /* synthetic */ String f1463b;

        public RunnableC0408a(WorkDatabase workDatabase, String str) {
            this.f1462a = workDatabase;
            this.f1463b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3482p mo18772m = this.f1462a.mo26644B().mo18772m(this.f1463b);
            if (mo18772m != null && mo18772m.m18787b()) {
                synchronized (C0407a.this.f1455k) {
                    C0407a.this.f1458r.put(this.f1463b, mo18772m);
                    C0407a.this.f1459s.add(mo18772m);
                    C0407a c0407a = C0407a.this;
                    c0407a.f1460t.m26537d(c0407a.f1459s);
                }
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.a$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0409b {
        /* renamed from: c */
        void mo26580c(int i, int i2, Notification notification);

        /* renamed from: d */
        void mo26579d(int i, Notification notification);

        /* renamed from: e */
        void mo26578e(int i);

        void stop();
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: f */
    public void mo1575f(List<String> list) {
    }

    /* renamed from: k */
    public void m26583k() {
        this.f1461u = null;
        synchronized (this.f1455k) {
            this.f1460t.m26536e();
        }
        this.f1453b.m2161p().m2202i(this);
    }

    /* renamed from: a */
    public static Intent m26590a(Context context, String str, C7108e c7108e) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c7108e.m2499c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c7108e.m2501a());
        intent.putExtra("KEY_NOTIFICATION", c7108e.m2500b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    public static Intent m26589c(Context context, String str, C7108e c7108e) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c7108e.m2499c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c7108e.m2501a());
        intent.putExtra("KEY_NOTIFICATION", c7108e.m2500b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: e */
    public static Intent m26588e(Context context) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        boolean z2;
        Map.Entry<String, C7108e> entry;
        synchronized (this.f1455k) {
            C3482p remove = this.f1458r.remove(str);
            if (remove != null) {
                z2 = this.f1459s.remove(remove);
            } else {
                z2 = false;
            }
            if (z2) {
                this.f1460t.m26537d(this.f1459s);
            }
        }
        C7108e remove2 = this.f1457q.remove(str);
        if (str.equals(this.f1456p) && this.f1457q.size() > 0) {
            Iterator<Map.Entry<String, C7108e>> it = this.f1457q.entrySet().iterator();
            Map.Entry<String, C7108e> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
            }
            this.f1456p = entry.getKey();
            if (this.f1461u != null) {
                C7108e value = entry.getValue();
                this.f1461u.mo26580c(value.m2499c(), value.m2501a(), value.m2500b());
                this.f1461u.mo26578e(value.m2499c());
            }
        }
        InterfaceC0409b interfaceC0409b = this.f1461u;
        if (remove2 != null && interfaceC0409b != null) {
            AbstractC7114j.m2491c().mo2488a(f1451v, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.m2499c()), str, Integer.valueOf(remove2.m2501a())), new Throwable[0]);
            interfaceC0409b.mo26578e(remove2.m2499c());
        }
    }

    /* renamed from: h */
    public final void m26586h(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC7114j.m2491c().mo2488a(f1451v, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification != null && this.f1461u != null) {
            this.f1457q.put(stringExtra, new C7108e(intExtra, notification, intExtra2));
            if (TextUtils.isEmpty(this.f1456p)) {
                this.f1456p = stringExtra;
                this.f1461u.mo26580c(intExtra, intExtra2, notification);
                return;
            }
            this.f1461u.mo26579d(intExtra, notification);
            if (intExtra2 != 0 && Build.VERSION.SDK_INT >= 29) {
                for (Map.Entry<String, C7108e> entry : this.f1457q.entrySet()) {
                    i |= entry.getValue().m2501a();
                }
                C7108e c7108e = this.f1457q.get(this.f1456p);
                if (c7108e != null) {
                    this.f1461u.mo26580c(c7108e.m2499c(), i, c7108e.m2500b());
                }
            }
        }
    }

    /* renamed from: m */
    public void m26581m(InterfaceC0409b interfaceC0409b) {
        if (this.f1461u != null) {
            AbstractC7114j.m2491c().mo2487b(f1451v, "A callback already exists.", new Throwable[0]);
        } else {
            this.f1461u = interfaceC0409b;
        }
    }

    public C0407a(Context context) {
        this.f1452a = context;
        C7199i m2163n = C7199i.m2163n(context);
        this.f1453b = m2163n;
        InterfaceC4086a m2158s = m2163n.m2158s();
        this.f1454d = m2158s;
        this.f1456p = null;
        this.f1457q = new LinkedHashMap();
        this.f1459s = new HashSet();
        this.f1458r = new HashMap();
        this.f1460t = new C0427d(this.f1452a, m2158s, this);
        this.f1453b.m2161p().m2207c(this);
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: b */
    public void mo1577b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC7114j.m2491c().mo2488a(f1451v, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
                this.f1453b.m2151z(str);
            }
        }
    }

    /* renamed from: g */
    public final void m26587g(Intent intent) {
        AbstractC7114j.m2491c().mo2486d(f1451v, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra != null && !TextUtils.isEmpty(stringExtra)) {
            this.f1453b.m2168i(UUID.fromString(stringExtra));
        }
    }

    /* renamed from: i */
    public final void m26585i(Intent intent) {
        AbstractC7114j.m2491c().mo2486d(f1451v, String.format("Started foreground service %s", intent), new Throwable[0]);
        this.f1454d.mo17407b(new RunnableC0408a(this.f1453b.m2159r(), intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    /* renamed from: j */
    public void m26584j(Intent intent) {
        AbstractC7114j.m2491c().mo2486d(f1451v, "Stopping foreground service", new Throwable[0]);
        InterfaceC0409b interfaceC0409b = this.f1461u;
        if (interfaceC0409b != null) {
            interfaceC0409b.stop();
        }
    }

    /* renamed from: l */
    public void m26582l(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            m26585i(intent);
            m26586h(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            m26586h(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            m26587g(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            m26584j(intent);
        }
    }
}
