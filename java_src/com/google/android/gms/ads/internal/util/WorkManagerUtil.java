package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import androidx.work.C0376a;
import androidx.work.C0380b;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import p016b3.AbstractBinderC0545x0;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.cm0;
import p209w0.AbstractC7131t;
import p209w0.C7103b;
import p209w0.C7117l;
import p209w0.EnumC7116k;
/* loaded from: classes.dex */
public class WorkManagerUtil extends AbstractBinderC0545x0 {
    /* renamed from: f7 */
    public static void m23097f7(Context context) {
        try {
            AbstractC7131t.m2474h(context.getApplicationContext(), new C0376a.C0378b().m26669a());
        } catch (IllegalStateException unused) {
        }
    }

    @Override // p016b3.InterfaceC0548y0
    public final boolean zze(@RecentlyNonNull InterfaceC3512a interfaceC3512a, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        m23097f7(context);
        C7103b m2508a = new C7103b.C7104a().m2507b(EnumC7116k.CONNECTED).m2508a();
        try {
            AbstractC7131t.m2475g(context).m2476f(new C7117l.C7118a(OfflineNotificationPoster.class).m2466e(m2508a).m2464g(new C0380b.C0381a().m26650f("uri", str).m26650f("gws_query_id", str2).m26655a()).m2470a("offline_notification_work").m2469b());
            return true;
        } catch (IllegalStateException e) {
            cm0.m12436g("Failed to instantiate WorkManager.", e);
            return false;
        }
    }

    @Override // p016b3.InterfaceC0548y0
    public final void zzf(@RecentlyNonNull InterfaceC3512a interfaceC3512a) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        m23097f7(context);
        try {
            AbstractC7131t m2475g = AbstractC7131t.m2475g(context);
            m2475g.mo2172c("offline_ping_sender_work");
            m2475g.m2476f(new C7117l.C7118a(OfflinePingSender.class).m2466e(new C7103b.C7104a().m2507b(EnumC7116k.CONNECTED).m2508a()).m2470a("offline_ping_sender_work").m2469b());
        } catch (IllegalStateException e) {
            cm0.m12436g("Failed to instantiate WorkManager.", e);
        }
    }
}
