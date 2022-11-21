package p217x0;

import android.content.Context;
import android.os.Build;
import androidx.work.C0376a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import com.badlogic.gdx.net.HttpStatus;
import java.util.List;
import p002a1.C0038k;
import p057f1.C3482p;
import p057f1.InterfaceC3485q;
import p066g1.C3552e;
import p209w0.AbstractC7114j;
import p233z0.C7531c;
/* renamed from: x0.f */
/* loaded from: classes.dex */
public class C7196f {

    /* renamed from: a */
    public static final String f36489a = AbstractC7114j.m2489f("Schedulers");

    /* renamed from: c */
    public static InterfaceC7195e m2193c(Context context) {
        try {
            InterfaceC7195e interfaceC7195e = (InterfaceC7195e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC7114j.m2491c().mo2488a(f36489a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return interfaceC7195e;
        } catch (Throwable th) {
            AbstractC7114j.m2491c().mo2488a(f36489a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }

    /* renamed from: a */
    public static InterfaceC7195e m2195a(Context context, C7199i c7199i) {
        if (Build.VERSION.SDK_INT >= 23) {
            C0038k c0038k = new C0038k(context, c7199i);
            C3552e.m18623a(context, SystemJobService.class, true);
            AbstractC7114j.m2491c().mo2488a(f36489a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            return c0038k;
        }
        InterfaceC7195e m2193c = m2193c(context);
        if (m2193c == null) {
            C7531c c7531c = new C7531c(context);
            C3552e.m18623a(context, SystemAlarmService.class, true);
            AbstractC7114j.m2491c().mo2488a(f36489a, "Created SystemAlarmScheduler", new Throwable[0]);
            return c7531c;
        }
        return m2193c;
    }

    /* renamed from: b */
    public static void m2194b(C0376a c0376a, WorkDatabase workDatabase, List<InterfaceC7195e> list) {
        if (list != null && list.size() != 0) {
            InterfaceC3485q mo26644B = workDatabase.mo26644B();
            workDatabase.m15828c();
            try {
                List<C3482p> mo18779f = mo26644B.mo18779f(c0376a.m26675h());
                List<C3482p> mo18765t = mo26644B.mo18765t(HttpStatus.SC_OK);
                if (mo18779f != null && mo18779f.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (C3482p c3482p : mo18779f) {
                        mo26644B.mo18782c(c3482p.f15921a, currentTimeMillis);
                    }
                }
                workDatabase.m15813r();
                if (mo18779f != null && mo18779f.size() > 0) {
                    C3482p[] c3482pArr = (C3482p[]) mo18779f.toArray(new C3482p[mo18779f.size()]);
                    for (InterfaceC7195e interfaceC7195e : list) {
                        if (interfaceC7195e.mo1291a()) {
                            interfaceC7195e.mo1289c(c3482pArr);
                        }
                    }
                }
                if (mo18765t != null && mo18765t.size() > 0) {
                    C3482p[] c3482pArr2 = (C3482p[]) mo18765t.toArray(new C3482p[mo18765t.size()]);
                    for (InterfaceC7195e interfaceC7195e2 : list) {
                        if (!interfaceC7195e2.mo1291a()) {
                            interfaceC7195e2.mo1289c(c3482pArr2);
                        }
                    }
                }
            } finally {
                workDatabase.m15824g();
            }
        }
    }
}
