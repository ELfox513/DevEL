package p070g5;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.p010os.PersistableBundle;
import p018b5.C0896u0;
import p018b5.C0913v0;
/* renamed from: g5.p9 */
/* loaded from: classes2.dex */
public final class C3783p9 extends AbstractC3807r9 {

    /* renamed from: d */
    public final AlarmManager f16836d;

    /* renamed from: e */
    public AbstractC3749n f16837e;

    /* renamed from: f */
    public Integer f16838f;

    /* renamed from: l */
    public final AbstractC3749n m18028l() {
        if (this.f16837e == null) {
            this.f16837e = new C3771o9(this, this.f16900b.m18480b0());
        }
        return this.f16837e;
    }

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        AlarmManager alarmManager = this.f16836d;
        if (alarmManager != null) {
            alarmManager.cancel(m18029k());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m18027m();
            return false;
        }
        return false;
    }

    /* renamed from: j */
    public final int m18030j() {
        String str;
        if (this.f16838f == null) {
            String valueOf = String.valueOf(this.f17008a.mo17856O().getPackageName());
            if (valueOf.length() != 0) {
                str = "measurement".concat(valueOf);
            } else {
                str = new String("measurement");
            }
            this.f16838f = Integer.valueOf(str.hashCode());
        }
        return this.f16838f.intValue();
    }

    /* renamed from: k */
    public final PendingIntent m18029k() {
        Context mo17856O = this.f17008a.mo17856O();
        return C0896u0.m25108a(mo17856O, 0, new Intent().setClassName(mo17856O, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), C0896u0.f2325a);
    }

    @TargetApi(24)
    /* renamed from: m */
    public final void m18027m() {
        JobScheduler jobScheduler = (JobScheduler) this.f17008a.mo17856O().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(m18030j());
        }
    }

    public C3783p9(C3616ba c3616ba) {
        super(c3616ba);
        this.f16836d = (AlarmManager) this.f17008a.mo17856O().getSystemService("alarm");
    }

    /* renamed from: h */
    public final void m18032h() {
        m18000d();
        this.f17008a.mo17858F().m18014q().m18042a("Unscheduling upload");
        AlarmManager alarmManager = this.f16836d;
        if (alarmManager != null) {
            alarmManager.cancel(m18029k());
        }
        m18028l().m18056b();
        if (Build.VERSION.SDK_INT >= 24) {
            m18027m();
        }
    }

    /* renamed from: i */
    public final void m18031i(long j) {
        m18000d();
        this.f17008a.mo17857G();
        Context mo17856O = this.f17008a.mo17856O();
        if (!C3700ia.m18187X(mo17856O)) {
            this.f17008a.mo17858F().m18019l().m18042a("Receiver not registered/enabled");
        }
        if (!C3700ia.m18186Y(mo17856O, false)) {
            this.f17008a.mo17858F().m18019l().m18042a("Service not registered/enabled");
        }
        m18032h();
        this.f17008a.mo17858F().m18014q().m18041b("Scheduling upload, millis", Long.valueOf(j));
        long mo24762b = this.f17008a.mo17854Q().mo24762b() + j;
        this.f17008a.m18513u();
        if (j < Math.max(0L, C3621c3.f16403y.m18550a(null).longValue()) && !m18028l().m18054e()) {
            m18028l().m18055d(j);
        }
        this.f17008a.mo17857G();
        if (Build.VERSION.SDK_INT >= 24) {
            Context mo17856O2 = this.f17008a.mo17856O();
            ComponentName componentName = new ComponentName(mo17856O2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int m18030j = m18030j();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            C0913v0.m25081a(mo17856O2, new JobInfo.Builder(m18030j, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
            return;
        }
        AlarmManager alarmManager = this.f16836d;
        if (alarmManager != null) {
            this.f17008a.m18513u();
            alarmManager.setInexactRepeating(2, mo24762b, Math.max(C3621c3.f16393t.m18550a(null).longValue(), j), m18029k());
        }
    }
}
