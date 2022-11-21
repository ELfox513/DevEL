package p002a1;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.p010os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p057f1.C3467g;
import p057f1.C3482p;
import p057f1.InterfaceC3485q;
import p066g1.C3551d;
import p209w0.AbstractC7114j;
import p209w0.EnumC7125n;
import p209w0.EnumC7130s;
import p217x0.C7199i;
import p217x0.InterfaceC7195e;
/* renamed from: a1.k */
/* loaded from: classes.dex */
public class C0038k implements InterfaceC7195e {

    /* renamed from: p */
    public static final String f51p = AbstractC7114j.m2489f("SystemJobScheduler");

    /* renamed from: a */
    public final Context f52a;

    /* renamed from: b */
    public final JobScheduler f53b;

    /* renamed from: d */
    public final C7199i f54d;

    /* renamed from: k */
    public final C0036j f55k;

    public C0038k(Context context, C7199i c7199i) {
        this(context, c7199i, (JobScheduler) context.getSystemService("jobscheduler"), new C0036j(context));
    }

    /* renamed from: g */
    public static List<JobInfo> m27783g(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC7114j.m2491c().mo2487b(f51p, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: a */
    public boolean mo1291a() {
        return true;
    }

    /* renamed from: b */
    public static void m27786b(Context context) {
        List<JobInfo> m27783g;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null && (m27783g = m27783g(context, jobScheduler)) != null && !m27783g.isEmpty()) {
            for (JobInfo jobInfo : m27783g) {
                m27785d(jobScheduler, jobInfo.getId());
            }
        }
    }

    /* renamed from: h */
    public static String m27782h(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras != null) {
            try {
                if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                    return extras.getString("EXTRA_WORK_SPEC_ID");
                }
                return null;
            } catch (NullPointerException unused) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: i */
    public static boolean m27781i(Context context, C7199i c7199i) {
        int i;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> m27783g = m27783g(context, jobScheduler);
        List<String> mo18800a = c7199i.m2159r().mo26629y().mo18800a();
        boolean z = false;
        if (m27783g != null) {
            i = m27783g.size();
        } else {
            i = 0;
        }
        HashSet hashSet = new HashSet(i);
        if (m27783g != null && !m27783g.isEmpty()) {
            for (JobInfo jobInfo : m27783g) {
                String m27782h = m27782h(jobInfo);
                if (!TextUtils.isEmpty(m27782h)) {
                    hashSet.add(m27782h);
                } else {
                    m27785d(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it = mo18800a.iterator();
        while (true) {
            if (it.hasNext()) {
                if (!hashSet.contains(it.next())) {
                    AbstractC7114j.m2491c().mo2488a(f51p, "Reconciling jobs", new Throwable[0]);
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (z) {
            WorkDatabase m2159r = c7199i.m2159r();
            m2159r.m15828c();
            try {
                InterfaceC3485q mo26644B = m2159r.mo26644B();
                for (String str : mo18800a) {
                    mo26644B.mo18782c(str, -1L);
                }
                m2159r.m15813r();
            } finally {
                m2159r.m15824g();
            }
        }
        return z;
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: c */
    public void mo1289c(C3482p... c3482pArr) {
        int m18625d;
        List<Integer> m27784f;
        int m18625d2;
        WorkDatabase m2159r = this.f54d.m2159r();
        C3551d c3551d = new C3551d(m2159r);
        for (C3482p c3482p : c3482pArr) {
            m2159r.m15828c();
            try {
                C3482p mo18772m = m2159r.mo26644B().mo18772m(c3482p.f15921a);
                if (mo18772m == null) {
                    AbstractC7114j.m2491c().mo2484h(f51p, "Skipping scheduling " + c3482p.f15921a + " because it's no longer in the DB", new Throwable[0]);
                    m2159r.m15813r();
                } else if (mo18772m.f15922b != EnumC7130s.ENQUEUED) {
                    AbstractC7114j.m2491c().mo2484h(f51p, "Skipping scheduling " + c3482p.f15921a + " because it is no longer enqueued", new Throwable[0]);
                    m2159r.m15813r();
                } else {
                    C3467g mo18798c = m2159r.mo26629y().mo18798c(c3482p.f15921a);
                    if (mo18798c != null) {
                        m18625d = mo18798c.f15899b;
                    } else {
                        m18625d = c3551d.m18625d(this.f54d.m2165l().m26674i(), this.f54d.m2165l().m26676g());
                    }
                    if (mo18798c == null) {
                        this.f54d.m2159r().mo26629y().mo18799b(new C3467g(c3482p.f15921a, m18625d));
                    }
                    m27780j(c3482p, m18625d);
                    if (Build.VERSION.SDK_INT == 23 && (m27784f = m27784f(this.f52a, this.f53b, c3482p.f15921a)) != null) {
                        int indexOf = m27784f.indexOf(Integer.valueOf(m18625d));
                        if (indexOf >= 0) {
                            m27784f.remove(indexOf);
                        }
                        if (!m27784f.isEmpty()) {
                            m18625d2 = m27784f.get(0).intValue();
                        } else {
                            m18625d2 = c3551d.m18625d(this.f54d.m2165l().m26674i(), this.f54d.m2165l().m26676g());
                        }
                        m27780j(c3482p, m18625d2);
                    }
                    m2159r.m15813r();
                }
                m2159r.m15824g();
            } catch (Throwable th) {
                m2159r.m15824g();
                throw th;
            }
        }
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: e */
    public void mo1288e(String str) {
        List<Integer> m27784f = m27784f(this.f52a, this.f53b, str);
        if (m27784f != null && !m27784f.isEmpty()) {
            for (Integer num : m27784f) {
                m27785d(this.f53b, num.intValue());
            }
            this.f54d.m2159r().mo26629y().mo18797d(str);
        }
    }

    /* renamed from: j */
    public void m27780j(C3482p c3482p, int i) {
        int i2;
        JobInfo m27790a = this.f55k.m27790a(c3482p, i);
        AbstractC7114j m2491c = AbstractC7114j.m2491c();
        String str = f51p;
        m2491c.mo2488a(str, String.format("Scheduling work ID %s Job ID %s", c3482p.f15921a, Integer.valueOf(i)), new Throwable[0]);
        try {
            if (this.f53b.schedule(m27790a) == 0) {
                AbstractC7114j.m2491c().mo2484h(str, String.format("Unable to schedule work ID %s", c3482p.f15921a), new Throwable[0]);
                if (c3482p.f15937q && c3482p.f15938r == EnumC7125n.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    c3482p.f15937q = false;
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Scheduling a non-expedited job (work ID %s)", c3482p.f15921a), new Throwable[0]);
                    m27780j(c3482p, i);
                }
            }
        } catch (IllegalStateException e) {
            List<JobInfo> m27783g = m27783g(this.f52a, this.f53b);
            if (m27783g != null) {
                i2 = m27783g.size();
            } else {
                i2 = 0;
            }
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(i2), Integer.valueOf(this.f54d.m2159r().mo26644B().mo18778g().size()), Integer.valueOf(this.f54d.m2165l().m26675h()));
            AbstractC7114j.m2491c().mo2487b(f51p, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            AbstractC7114j.m2491c().mo2487b(f51p, String.format("Unable to schedule %s", c3482p), th);
        }
    }

    public C0038k(Context context, C7199i c7199i, JobScheduler jobScheduler, C0036j c0036j) {
        this.f52a = context;
        this.f54d = c7199i;
        this.f53b = jobScheduler;
        this.f55k = c0036j;
    }

    /* renamed from: d */
    public static void m27785d(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC7114j.m2491c().mo2487b(f51p, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: f */
    public static List<Integer> m27784f(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> m27783g = m27783g(context, jobScheduler);
        if (m27783g == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m27783g) {
            if (str.equals(m27782h(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }
}
