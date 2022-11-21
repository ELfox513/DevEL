package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.C0399d;
import java.util.HashMap;
import java.util.Map;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p217x0.InterfaceC7191b;
import p233z0.C7530b;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes.dex */
public class C0396a implements InterfaceC7191b {

    /* renamed from: k */
    public static final String f1397k = AbstractC7114j.m2489f("CommandHandler");

    /* renamed from: a */
    public final Context f1398a;

    /* renamed from: b */
    public final Map<String, InterfaceC7191b> f1399b = new HashMap();

    /* renamed from: d */
    public final Object f1400d = new Object();

    /* renamed from: n */
    public static boolean m26612n(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static Intent m26624a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: b */
    public static Intent m26623b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    public static Intent m26622c(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    /* renamed from: e */
    public static Intent m26621e(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    /* renamed from: f */
    public static Intent m26620f(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: g */
    public static Intent m26619g(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        synchronized (this.f1400d) {
            InterfaceC7191b remove = this.f1399b.remove(str);
            if (remove != null) {
                remove.mo1576d(str, z);
            }
        }
    }

    /* renamed from: o */
    public boolean m26611o() {
        boolean z;
        synchronized (this.f1400d) {
            if (!this.f1399b.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public C0396a(Context context) {
        this.f1398a = context;
    }

    /* renamed from: h */
    public final void m26618h(Intent intent, int i, C0399d c0399d) {
        AbstractC7114j.m2491c().mo2488a(f1397k, String.format("Handling constraints changed %s", intent), new Throwable[0]);
        new C0397b(this.f1398a, i, c0399d).m26609a();
    }

    /* renamed from: i */
    public final void m26617i(Intent intent, int i, C0399d c0399d) {
        Bundle extras = intent.getExtras();
        synchronized (this.f1400d) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            AbstractC7114j m2491c = AbstractC7114j.m2491c();
            String str = f1397k;
            m2491c.mo2488a(str, String.format("Handing delay met for %s", string), new Throwable[0]);
            if (!this.f1399b.containsKey(string)) {
                C0398c c0398c = new C0398c(this.f1398a, i, string, c0399d);
                this.f1399b.put(string, c0398c);
                c0398c.m26607e();
            } else {
                AbstractC7114j.m2491c().mo2488a(str, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string), new Throwable[0]);
            }
        }
    }

    /* renamed from: j */
    public final void m26616j(Intent intent, int i) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        AbstractC7114j.m2491c().mo2488a(f1397k, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        mo1576d(string, z);
    }

    /* renamed from: k */
    public final void m26615k(Intent intent, int i, C0399d c0399d) {
        AbstractC7114j.m2491c().mo2488a(f1397k, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        c0399d.m26600g().m2155v();
    }

    /* renamed from: l */
    public final void m26614l(Intent intent, int i, C0399d c0399d) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC7114j m2491c = AbstractC7114j.m2491c();
        String str = f1397k;
        m2491c.mo2488a(str, String.format("Handling schedule work for %s", string), new Throwable[0]);
        WorkDatabase m2159r = c0399d.m26600g().m2159r();
        m2159r.m15828c();
        try {
            C3482p mo18772m = m2159r.mo26644B().mo18772m(string);
            if (mo18772m == null) {
                AbstractC7114j m2491c2 = AbstractC7114j.m2491c();
                m2491c2.mo2484h(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
            } else if (mo18772m.f15922b.m2478c()) {
                AbstractC7114j m2491c3 = AbstractC7114j.m2491c();
                m2491c3.mo2484h(str, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
            } else {
                long m18788a = mo18772m.m18788a();
                if (!mo18772m.m18787b()) {
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(m18788a)), new Throwable[0]);
                    C7530b.m1293c(this.f1398a, c0399d.m26600g(), string, m18788a);
                } else {
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(m18788a)), new Throwable[0]);
                    C7530b.m1293c(this.f1398a, c0399d.m26600g(), string, m18788a);
                    c0399d.m26596k(new C0399d.RunnableC0401b(c0399d, m26624a(this.f1398a), i));
                }
                m2159r.m15813r();
            }
        } finally {
            m2159r.m15824g();
        }
    }

    /* renamed from: m */
    public final void m26613m(Intent intent, C0399d c0399d) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC7114j.m2491c().mo2488a(f1397k, String.format("Handing stopWork work for %s", string), new Throwable[0]);
        c0399d.m26600g().m2174A(string);
        C7530b.m1295a(this.f1398a, c0399d.m26600g(), string);
        c0399d.mo1576d(string, false);
    }

    /* renamed from: p */
    public void m26610p(Intent intent, int i, C0399d c0399d) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            m26618h(intent, i, c0399d);
        } else if ("ACTION_RESCHEDULE".equals(action)) {
            m26615k(intent, i, c0399d);
        } else if (!m26612n(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            AbstractC7114j.m2491c().mo2487b(f1397k, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
        } else if ("ACTION_SCHEDULE_WORK".equals(action)) {
            m26614l(intent, i, c0399d);
        } else if ("ACTION_DELAY_MET".equals(action)) {
            m26617i(intent, i, c0399d);
        } else if ("ACTION_STOP_WORK".equals(action)) {
            m26613m(intent, c0399d);
        } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            m26616j(intent, i);
        } else {
            AbstractC7114j.m2491c().mo2484h(f1397k, String.format("Ignoring intent %s", intent), new Throwable[0]);
        }
    }
}
