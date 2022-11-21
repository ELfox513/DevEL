package p002a1;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Parcelable;
import android.p010os.PersistableBundle;
import androidx.work.impl.background.systemjob.SystemJobService;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p209w0.C7103b;
import p209w0.C7105c;
import p209w0.EnumC7102a;
import p209w0.EnumC7116k;
import p232z.C7519a;
/* renamed from: a1.j */
/* loaded from: classes.dex */
public class C0036j {

    /* renamed from: b */
    public static final String f48b = AbstractC7114j.m2489f("SystemJobInfoConverter");

    /* renamed from: a */
    public final ComponentName f49a;

    /* renamed from: a1.j$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0037a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f50a;

        static {
            int[] iArr = new int[EnumC7116k.values().length];
            f50a = iArr;
            try {
                iArr[EnumC7116k.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50a[EnumC7116k.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50a[EnumC7116k.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50a[EnumC7116k.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50a[EnumC7116k.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: c */
    public static int m27788c(EnumC7116k enumC7116k) {
        int i = C0037a.f50a[enumC7116k.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i != 4) {
            if (i == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        AbstractC7114j.m2491c().mo2488a(f48b, String.format("API version too low. Cannot convert network type value %s", enumC7116k), new Throwable[0]);
        return 1;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [android.net.NetworkRequest$Builder] */
    /* renamed from: d */
    public static void m27787d(JobInfo.Builder builder, EnumC7116k enumC7116k) {
        if (Build.VERSION.SDK_INT >= 30 && enumC7116k == EnumC7116k.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetwork(new Object() { // from class: android.net.NetworkRequest$Builder
                static {
                    throw new NoClassDefFoundError();
                }

                public native /* synthetic */ NetworkRequest$Builder addCapability(int i);

                public native /* synthetic */ NetworkRequest build();
            }.addCapability(25).build());
        } else {
            builder.setRequiredNetworkType(m27788c(enumC7116k));
        }
    }

    /* renamed from: a */
    public JobInfo m27790a(C3482p c3482p, int i) {
        boolean z;
        int i2;
        C7103b c7103b = c3482p.f15930j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", c3482p.f15921a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", c3482p.m18785d());
        JobInfo.Builder extras = new JobInfo.Builder(i, this.f49a).setRequiresCharging(c7103b.m2519g()).setRequiresDeviceIdle(c7103b.m2518h()).setExtras(persistableBundle);
        m27787d(extras, c7103b.m2524b());
        boolean z2 = false;
        if (!c7103b.m2518h()) {
            if (c3482p.f15932l == EnumC7102a.LINEAR) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            extras.setBackoffCriteria(c3482p.f15933m, i2);
        }
        long max = Math.max(c3482p.m18788a() - System.currentTimeMillis(), 0L);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!c3482p.f15937q) {
            extras.setImportantWhileForeground(true);
        }
        if (i3 >= 24 && c7103b.m2521e()) {
            for (C7105c.C7106a c7106a : c7103b.m2525a().m2505b()) {
                extras.addTriggerContentUri(m27789b(c7106a));
            }
            extras.setTriggerContentUpdateDelay(c7103b.m2523c());
            extras.setTriggerContentMaxDelay(c7103b.m2522d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(c7103b.m2520f());
            extras.setRequiresStorageNotLow(c7103b.m2517i());
        }
        if (c3482p.f15931k > 0) {
            z = true;
        } else {
            z = false;
        }
        if (max > 0) {
            z2 = true;
        }
        if (C7519a.m1308c() && c3482p.f15937q && !z && !z2) {
            extras.setExpedited(true);
        }
        return extras.build();
    }

    public C0036j(Context context) {
        this.f49a = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.app.job.JobInfo$TriggerContentUri] */
    /* renamed from: b */
    public static JobInfo.TriggerContentUri m27789b(C7105c.C7106a c7106a) {
        return new Parcelable(c7106a.m2503a(), c7106a.m2502b() ? 1 : 0) { // from class: android.app.job.JobInfo.TriggerContentUri
            static {
                throw new NoClassDefFoundError();
            }
        };
    }
}
