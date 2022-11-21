package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import p085i2.AbstractC4113m;
import p085i2.C4119r;
import p175s2.C6577a;
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m23100b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }

    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C4119r.m17337f(getApplicationContext());
        AbstractC4113m.AbstractC4114a mo17349d = AbstractC4113m.m17357a().mo17351b(string).mo17349d(C6577a.m3881b(i));
        if (string2 != null) {
            mo17349d.mo17350c(Base64.decode(string2, 0));
        }
        C4119r.m17340c().m17338e().m14686q(mo17349d.mo17352a(), i2, new Runnable() { // from class: o2.f
            @Override // java.lang.Runnable
            public final void run() {
                JobInfoSchedulerService.this.m23100b(jobParameters);
            }
        });
        return true;
    }
}
