package p066g1;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import p057f1.C3463d;
import p155q0.InterfaceC5382b;
/* renamed from: g1.f */
/* loaded from: classes.dex */
public class C3553f {

    /* renamed from: a */
    public final WorkDatabase f16090a;

    /* renamed from: b */
    public static void m18621b(Context context, InterfaceC5382b interfaceC5382b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j = 0;
            long j2 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                j = 1;
            }
            interfaceC5382b.mo13130u();
            try {
                interfaceC5382b.mo13133g0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j2)});
                interfaceC5382b.mo13133g0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j)});
                sharedPreferences.edit().clear().apply();
                interfaceC5382b.mo13134e0();
            } finally {
                interfaceC5382b.mo13131s0();
            }
        }
    }

    /* renamed from: a */
    public boolean m18622a() {
        Long mo18803a = this.f16090a.mo26630x().mo18803a("reschedule_needed");
        if (mo18803a != null && mo18803a.longValue() == 1) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public void m18620c(boolean z) {
        this.f16090a.mo26630x().mo18802b(new C3463d("reschedule_needed", z));
    }

    public C3553f(WorkDatabase workDatabase) {
        this.f16090a = workDatabase;
    }
}
