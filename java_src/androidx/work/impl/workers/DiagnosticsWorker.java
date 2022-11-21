package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import com.badlogic.gdx.net.HttpStatus;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p057f1.C3467g;
import p057f1.C3482p;
import p057f1.InterfaceC3468h;
import p057f1.InterfaceC3473k;
import p057f1.InterfaceC3485q;
import p057f1.InterfaceC3497t;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
/* loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {

    /* renamed from: r */
    public static final String f1480r = AbstractC7114j.m2489f("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: a */
    public static String m26564a(C3482p c3482p, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", c3482p.f15921a, c3482p.f15923c, num, c3482p.f15922b.name(), str, str2);
    }

    /* renamed from: c */
    public static String m26563c(InterfaceC3473k interfaceC3473k, InterfaceC3497t interfaceC3497t, InterfaceC3468h interfaceC3468h, List<C3482p> list) {
        String str;
        StringBuilder sb = new StringBuilder();
        if (Build.VERSION.SDK_INT >= 23) {
            str = "Job Id";
        } else {
            str = "Alarm Id";
        }
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", str));
        for (C3482p c3482p : list) {
            Integer num = null;
            C3467g mo18798c = interfaceC3468h.mo18798c(c3482p.f15921a);
            if (mo18798c != null) {
                num = Integer.valueOf(mo18798c.f15899b);
            }
            sb.append(m26564a(c3482p, TextUtils.join(",", interfaceC3473k.mo18794b(c3482p.f15921a)), num, TextUtils.join(",", interfaceC3497t.mo18762a(c3482p.f15921a))));
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0370a doWork() {
        WorkDatabase m2159r = C7199i.m2163n(getApplicationContext()).m2159r();
        InterfaceC3485q mo26644B = m2159r.mo26644B();
        InterfaceC3473k mo26628z = m2159r.mo26628z();
        InterfaceC3497t mo26643C = m2159r.mo26643C();
        InterfaceC3468h mo26629y = m2159r.mo26629y();
        List<C3482p> mo18780e = mo26644B.mo18780e(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<C3482p> mo18776i = mo26644B.mo18776i();
        List<C3482p> mo18765t = mo26644B.mo18765t(HttpStatus.SC_OK);
        if (mo18780e != null && !mo18780e.isEmpty()) {
            AbstractC7114j m2491c = AbstractC7114j.m2491c();
            String str = f1480r;
            m2491c.mo2486d(str, "Recently completed work:\n\n", new Throwable[0]);
            AbstractC7114j.m2491c().mo2486d(str, m26563c(mo26628z, mo26643C, mo26629y, mo18780e), new Throwable[0]);
        }
        if (mo18776i != null && !mo18776i.isEmpty()) {
            AbstractC7114j m2491c2 = AbstractC7114j.m2491c();
            String str2 = f1480r;
            m2491c2.mo2486d(str2, "Running work:\n\n", new Throwable[0]);
            AbstractC7114j.m2491c().mo2486d(str2, m26563c(mo26628z, mo26643C, mo26629y, mo18776i), new Throwable[0]);
        }
        if (mo18765t != null && !mo18765t.isEmpty()) {
            AbstractC7114j m2491c3 = AbstractC7114j.m2491c();
            String str3 = f1480r;
            m2491c3.mo2486d(str3, "Enqueued work:\n\n", new Throwable[0]);
            AbstractC7114j.m2491c().mo2486d(str3, m26563c(mo26628z, mo26643C, mo26629y, mo18765t), new Throwable[0]);
        }
        return ListenableWorker.AbstractC0370a.m26699c();
    }
}
