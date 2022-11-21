package p233z0;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.C0396a;
import p057f1.C3467g;
import p057f1.InterfaceC3468h;
import p066g1.C3551d;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
/* renamed from: z0.b */
/* loaded from: classes.dex */
public class C7530b {

    /* renamed from: a */
    public static final String f37389a = AbstractC7114j.m2489f("Alarms");

    /* renamed from: b */
    public static void m1294b(Context context, String str, int i) {
        int i2;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Intent m26623b = C0396a.m26623b(context, str);
        if (Build.VERSION.SDK_INT >= 23) {
            i2 = 603979776;
        } else {
            i2 = 536870912;
        }
        PendingIntent service = PendingIntent.getService(context, i, m26623b, i2);
        if (service != null && alarmManager != null) {
            AbstractC7114j.m2491c().mo2488a(f37389a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
            alarmManager.cancel(service);
        }
    }

    /* renamed from: d */
    public static void m1292d(Context context, String str, int i, long j) {
        int i2;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            i2 = 201326592;
        } else {
            i2 = 134217728;
        }
        PendingIntent service = PendingIntent.getService(context, i, C0396a.m26623b(context, str), i2);
        if (alarmManager != null) {
            if (i3 >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }

    /* renamed from: a */
    public static void m1295a(Context context, C7199i c7199i, String str) {
        InterfaceC3468h mo26629y = c7199i.m2159r().mo26629y();
        C3467g mo18798c = mo26629y.mo18798c(str);
        if (mo18798c != null) {
            m1294b(context, str, mo18798c.f15899b);
            AbstractC7114j.m2491c().mo2488a(f37389a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            mo26629y.mo18797d(str);
        }
    }

    /* renamed from: c */
    public static void m1293c(Context context, C7199i c7199i, String str, long j) {
        WorkDatabase m2159r = c7199i.m2159r();
        InterfaceC3468h mo26629y = m2159r.mo26629y();
        C3467g mo18798c = mo26629y.mo18798c(str);
        if (mo18798c != null) {
            m1294b(context, str, mo18798c.f15899b);
            m1292d(context, str, mo18798c.f15899b, j);
            return;
        }
        int m18627b = new C3551d(m2159r).m18627b();
        mo26629y.mo18799b(new C3467g(str, m18627b));
        m1292d(context, str, m18627b, j);
    }
}
