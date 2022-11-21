package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicBoolean;
import p060f4.BinderC3514b;
import p061f5.C3518a;
/* renamed from: r4.xa0 */
/* loaded from: classes2.dex */
public final class xa0 {

    /* renamed from: b */
    public static xa0 f33532b;

    /* renamed from: a */
    public final AtomicBoolean f33533a = new AtomicBoolean(false);

    /* renamed from: a */
    public static xa0 m5430a() {
        if (f33532b == null) {
            f33532b = new xa0();
        }
        return f33532b;
    }

    /* renamed from: b */
    public final Thread m5429b(final Context context, final String str) {
        if (!this.f33533a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: r4.va0

            /* renamed from: a */
            public final xa0 f32659a;

            /* renamed from: b */
            public final Context f32660b;

            /* renamed from: d */
            public final String f32661d;

            {
                this.f32659a = this;
                this.f32660b = context;
                this.f32661d = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f32660b;
                String str2 = this.f32661d;
                C6225rz.m7278a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30985c0)).booleanValue());
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31042j0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((au0) gm0.m11109a(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", wa0.f33146a)).mo4570C3(BinderC3514b.m18741L0(context2), new ua0(C3518a.m18728k(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | NullPointerException | fm0 e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
