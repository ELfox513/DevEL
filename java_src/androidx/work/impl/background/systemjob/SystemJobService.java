package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.p010os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
import p217x0.InterfaceC7191b;
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements InterfaceC7191b {

    /* renamed from: d */
    public static final String f1432d = AbstractC7114j.m2489f("SystemJobService");

    /* renamed from: a */
    public C7199i f1433a;

    /* renamed from: b */
    public final Map<String, JobParameters> f1434b = new HashMap();

    /* renamed from: a */
    public static String m26592a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public boolean onStartJob(JobParameters jobParameters) {
        Uri[] triggeredContentUris;
        String[] triggeredContentAuthorities;
        Network network;
        String[] triggeredContentAuthorities2;
        Uri[] triggeredContentUris2;
        if (this.f1433a == null) {
            AbstractC7114j.m2491c().mo2488a(f1432d, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String m26592a = m26592a(jobParameters);
        if (TextUtils.isEmpty(m26592a)) {
            AbstractC7114j.m2491c().mo2487b(f1432d, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f1434b) {
            if (this.f1434b.containsKey(m26592a)) {
                AbstractC7114j.m2491c().mo2488a(f1432d, String.format("Job is already being executed by SystemJobService: %s", m26592a), new Throwable[0]);
                return false;
            }
            AbstractC7114j.m2491c().mo2488a(f1432d, String.format("onStartJob for %s", m26592a), new Throwable[0]);
            this.f1434b.put(m26592a, jobParameters);
            WorkerParameters.C0375a c0375a = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                c0375a = new WorkerParameters.C0375a();
                triggeredContentUris = jobParameters.getTriggeredContentUris();
                if (triggeredContentUris != null) {
                    triggeredContentUris2 = jobParameters.getTriggeredContentUris();
                    c0375a.f1336b = Arrays.asList(triggeredContentUris2);
                }
                triggeredContentAuthorities = jobParameters.getTriggeredContentAuthorities();
                if (triggeredContentAuthorities != null) {
                    triggeredContentAuthorities2 = jobParameters.getTriggeredContentAuthorities();
                    c0375a.f1335a = Arrays.asList(triggeredContentAuthorities2);
                }
                if (i >= 28) {
                    network = jobParameters.getNetwork();
                    c0375a.f1337c = network;
                }
            }
            this.f1433a.m2152y(m26592a, c0375a);
            return true;
        }
    }

    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f1433a == null) {
            AbstractC7114j.m2491c().mo2488a(f1432d, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String m26592a = m26592a(jobParameters);
        if (TextUtils.isEmpty(m26592a)) {
            AbstractC7114j.m2491c().mo2487b(f1432d, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        AbstractC7114j.m2491c().mo2488a(f1432d, String.format("onStopJob for %s", m26592a), new Throwable[0]);
        synchronized (this.f1434b) {
            this.f1434b.remove(m26592a);
        }
        this.f1433a.m2174A(m26592a);
        return !this.f1433a.m2161p().m2205f(m26592a);
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        JobParameters remove;
        AbstractC7114j.m2491c().mo2488a(f1432d, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f1434b) {
            remove = this.f1434b.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            C7199i m2163n = C7199i.m2163n(getApplicationContext());
            this.f1433a = m2163n;
            m2163n.m2161p().m2207c(this);
        } catch (IllegalStateException unused) {
            if (Application.class.equals(getApplication().getClass())) {
                AbstractC7114j.m2491c().mo2484h(f1432d, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C7199i c7199i = this.f1433a;
        if (c7199i != null) {
            c7199i.m2161p().m2202i(this);
        }
    }
}
