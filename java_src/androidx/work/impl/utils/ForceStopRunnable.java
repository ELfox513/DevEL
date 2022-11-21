package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.C0376a;
import androidx.work.impl.WorkDatabase;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p002a1.C0038k;
import p057f1.C3482p;
import p057f1.InterfaceC3477n;
import p057f1.InterfaceC3485q;
import p066g1.C3555h;
import p209w0.AbstractC7114j;
import p209w0.EnumC7130s;
import p209w0.InterfaceC7110g;
import p217x0.C7196f;
import p217x0.C7198h;
import p217x0.C7199i;
import p232z.C7519a;
/* loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {

    /* renamed from: k */
    public static final String f1465k = AbstractC7114j.m2489f("ForceStopRunnable");

    /* renamed from: p */
    public static final long f1466p = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: a */
    public final Context f1467a;

    /* renamed from: b */
    public final C7199i f1468b;

    /* renamed from: d */
    public int f1469d = 0;

    /* loaded from: classes.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        public static final String f1470a = AbstractC7114j.m2489f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                AbstractC7114j.m2491c().mo2485g(f1470a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
                ForceStopRunnable.m26571g(context);
            }
        }
    }

    /* renamed from: h */
    public boolean m26570h() {
        return this.f1468b.m2162o().m18622a();
    }

    /* renamed from: i */
    public void m26569i(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
        }
    }

    /* renamed from: c */
    public static Intent m26575c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: g */
    public static void m26571g(Context context) {
        int i;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (C7519a.m1308c()) {
            i = 167772160;
        } else {
            i = 134217728;
        }
        PendingIntent m26574d = m26574d(context, i);
        long currentTimeMillis = System.currentTimeMillis() + f1466p;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m26574d);
            } else {
                alarmManager.set(0, currentTimeMillis, m26574d);
            }
        }
    }

    /* renamed from: a */
    public boolean m26577a() {
        boolean z;
        boolean z2;
        if (Build.VERSION.SDK_INT >= 23) {
            z = C0038k.m27781i(this.f1467a, this.f1468b);
        } else {
            z = false;
        }
        WorkDatabase m2159r = this.f1468b.m2159r();
        InterfaceC3485q mo26644B = m2159r.mo26644B();
        InterfaceC3477n mo26645A = m2159r.mo26645A();
        m2159r.m15828c();
        try {
            List<C3482p> mo18776i = mo26644B.mo18776i();
            if (mo18776i != null && !mo18776i.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                for (C3482p c3482p : mo18776i) {
                    mo26644B.mo18783b(EnumC7130s.ENQUEUED, c3482p.f15921a);
                    mo26644B.mo18782c(c3482p.f15921a, -1L);
                }
            }
            mo26645A.mo18790c();
            m2159r.m15813r();
            if (!z2 && !z) {
                return false;
            }
            return true;
        } finally {
            m2159r.m15824g();
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: e */
    public boolean m26573e() {
        List historicalProcessExitReasons;
        try {
            PendingIntent m26574d = m26574d(this.f1467a, C7519a.m1308c() ? 570425344 : 536870912);
            if (Build.VERSION.SDK_INT >= 30) {
                if (m26574d != null) {
                    m26574d.cancel();
                }
                historicalProcessExitReasons = ((ActivityManager) this.f1467a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    for (int i = 0; i < historicalProcessExitReasons.size(); i++) {
                        if (((ApplicationExitInfo) historicalProcessExitReasons.get(i)).getReason() == 10) {
                            return true;
                        }
                    }
                }
            } else if (m26574d == null) {
                m26571g(this.f1467a);
                return true;
            }
            return false;
        } catch (IllegalArgumentException | SecurityException e) {
            AbstractC7114j.m2491c().mo2484h(f1465k, "Ignoring exception", e);
            return true;
        }
    }

    /* renamed from: f */
    public boolean m26572f() {
        C0376a m2165l = this.f1468b.m2165l();
        if (TextUtils.isEmpty(m2165l.m26680c())) {
            AbstractC7114j.m2491c().mo2488a(f1465k, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean m18617b = C3555h.m18617b(this.f1467a, m2165l);
        AbstractC7114j.m2491c().mo2488a(f1465k, String.format("Is default app process = %s", Boolean.valueOf(m18617b)), new Throwable[0]);
        return m18617b;
    }

    public ForceStopRunnable(Context context, C7199i c7199i) {
        this.f1467a = context.getApplicationContext();
        this.f1468b = c7199i;
    }

    /* renamed from: d */
    public static PendingIntent m26574d(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m26575c(context), i);
    }

    /* renamed from: b */
    public void m26576b() {
        boolean m26577a = m26577a();
        if (m26570h()) {
            AbstractC7114j.m2491c().mo2488a(f1465k, "Rescheduling Workers.", new Throwable[0]);
            this.f1468b.m2155v();
            this.f1468b.m2162o().m18620c(false);
        } else if (m26573e()) {
            AbstractC7114j.m2491c().mo2488a(f1465k, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f1468b.m2155v();
        } else if (m26577a) {
            AbstractC7114j.m2491c().mo2488a(f1465k, "Found unfinished work, scheduling it.", new Throwable[0]);
            C7196f.m2194b(this.f1468b.m2165l(), this.f1468b.m2159r(), this.f1468b.m2160q());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        try {
            if (!m26572f()) {
                return;
            }
            while (true) {
                C7198h.m2176e(this.f1467a);
                AbstractC7114j.m2491c().mo2488a(f1465k, "Performing cleanup operations.", new Throwable[0]);
                try {
                    m26576b();
                    break;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    i = this.f1469d + 1;
                    this.f1469d = i;
                    if (i >= 3) {
                        AbstractC7114j m2491c = AbstractC7114j.m2491c();
                        String str = f1465k;
                        m2491c.mo2487b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        InterfaceC7110g m26679d = this.f1468b.m2165l().m26679d();
                        if (m26679d != null) {
                            AbstractC7114j.m2491c().mo2488a(str, "Routing exception to the specified exception handler", illegalStateException);
                            m26679d.m2497a(illegalStateException);
                        } else {
                            throw illegalStateException;
                        }
                    } else {
                        AbstractC7114j.m2491c().mo2488a(f1465k, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                        m26569i(this.f1469d * 300);
                    }
                }
                AbstractC7114j.m2491c().mo2488a(f1465k, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                m26569i(this.f1469d * 300);
            }
        } finally {
            this.f1468b.m2156u();
        }
    }
}
