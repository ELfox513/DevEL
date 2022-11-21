package p139o2;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.p010os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
import p085i2.AbstractC4113m;
import p112l2.C4560a;
import p148p2.InterfaceC5321c;
import p175s2.C6577a;
/* renamed from: o2.e */
/* loaded from: classes.dex */
public class C5070e implements InterfaceC5091v {

    /* renamed from: a */
    public final Context f19302a;

    /* renamed from: b */
    public final InterfaceC5321c f19303b;

    /* renamed from: c */
    public final AbstractC5072g f19304c;

    @Override // p139o2.InterfaceC5091v
    /* renamed from: b */
    public void mo14673b(AbstractC4113m abstractC4113m, int i) {
        mo14674a(abstractC4113m, i, false);
    }

    @Override // p139o2.InterfaceC5091v
    /* renamed from: a */
    public void mo14674a(AbstractC4113m abstractC4113m, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.f19302a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f19302a.getSystemService("jobscheduler");
        int m14725c = m14725c(abstractC4113m);
        if (!z && m14724d(jobScheduler, m14725c, i)) {
            C4560a.m16005a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", abstractC4113m);
            return;
        }
        long mo13467w0 = this.f19303b.mo13467w0(abstractC4113m);
        JobInfo.Builder m14721c = this.f19304c.m14721c(new JobInfo.Builder(m14725c, componentName), abstractC4113m.mo17354d(), mo13467w0, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", abstractC4113m.mo17356b());
        persistableBundle.putInt("priority", C6577a.m3882a(abstractC4113m.mo17354d()));
        if (abstractC4113m.mo17355c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(abstractC4113m.mo17355c(), 0));
        }
        m14721c.setExtras(persistableBundle);
        C4560a.m16004b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", abstractC4113m, Integer.valueOf(m14725c), Long.valueOf(this.f19304c.m14717g(abstractC4113m.mo17354d(), mo13467w0, i)), Long.valueOf(mo13467w0), Integer.valueOf(i));
        jobScheduler.schedule(m14721c.build());
    }

    /* renamed from: c */
    public int m14725c(AbstractC4113m abstractC4113m) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f19302a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(abstractC4113m.mo17356b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(C6577a.m3882a(abstractC4113m.mo17354d())).array());
        if (abstractC4113m.mo17355c() != null) {
            adler32.update(abstractC4113m.mo17355c());
        }
        return (int) adler32.getValue();
    }

    public C5070e(Context context, InterfaceC5321c interfaceC5321c, AbstractC5072g abstractC5072g) {
        this.f19302a = context;
        this.f19303b = interfaceC5321c;
        this.f19304c = abstractC5072g;
    }

    /* renamed from: d */
    public final boolean m14724d(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                if (i3 < i2) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
