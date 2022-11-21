package p066g1;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import p057f1.C3463d;
import p155q0.InterfaceC5382b;
/* renamed from: g1.d */
/* loaded from: classes.dex */
public class C3551d {

    /* renamed from: a */
    public final WorkDatabase f16088a;

    /* renamed from: e */
    public final void m18624e(String str, int i) {
        this.f16088a.mo26630x().mo18802b(new C3463d(str, i));
    }

    /* renamed from: a */
    public static void m18628a(Context context, InterfaceC5382b interfaceC5382b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            interfaceC5382b.mo13130u();
            try {
                interfaceC5382b.mo13133g0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                interfaceC5382b.mo13133g0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                interfaceC5382b.mo13134e0();
            } finally {
                interfaceC5382b.mo13131s0();
            }
        }
    }

    /* renamed from: b */
    public int m18627b() {
        int m18626c;
        synchronized (C3551d.class) {
            m18626c = m18626c("next_alarm_manager_id");
        }
        return m18626c;
    }

    /* renamed from: c */
    public final int m18626c(String str) {
        int i;
        this.f16088a.m15828c();
        try {
            Long mo18803a = this.f16088a.mo26630x().mo18803a(str);
            int i2 = 0;
            if (mo18803a != null) {
                i = mo18803a.intValue();
            } else {
                i = 0;
            }
            if (i != Integer.MAX_VALUE) {
                i2 = i + 1;
            }
            m18624e(str, i2);
            this.f16088a.m15813r();
            return i;
        } finally {
            this.f16088a.m15824g();
        }
    }

    /* renamed from: d */
    public int m18625d(int i, int i2) {
        synchronized (C3551d.class) {
            int m18626c = m18626c("next_job_scheduler_id");
            if (m18626c >= i && m18626c <= i2) {
                i = m18626c;
            }
            m18624e("next_job_scheduler_id", i + 1);
        }
        return i;
    }

    public C3551d(WorkDatabase workDatabase) {
        this.f16088a = workDatabase;
    }
}
