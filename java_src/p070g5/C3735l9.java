package p070g5;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import p018b5.C0603cd;
/* renamed from: g5.l9 */
/* loaded from: classes2.dex */
public final class C3735l9 {

    /* renamed from: a */
    public final /* synthetic */ C3747m9 f16717a;

    public C3735l9(C3747m9 c3747m9) {
        this.f16717a = c3747m9;
    }

    /* renamed from: a */
    public final void m18066a() {
        this.f16717a.mo17839c();
        if (this.f16717a.f17008a.m18546A().m18345q(this.f16717a.f17008a.mo17854Q().mo24763a())) {
            this.f16717a.f17008a.m18546A().f16505l.m17814a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f16717a.f17008a.mo17858F().m18014q().m18042a("Detected application was in foreground");
                m18064c(this.f16717a.f17008a.mo17854Q().mo24763a(), false);
            }
        }
    }

    /* renamed from: b */
    public final void m18065b(long j, boolean z) {
        this.f16717a.mo17839c();
        this.f16717a.m18058n();
        if (this.f16717a.f17008a.m18546A().m18345q(j)) {
            this.f16717a.f17008a.m18546A().f16505l.m17814a(true);
        }
        this.f16717a.f17008a.m18546A().f16508o.m18547b(j);
        if (this.f16717a.f17008a.m18546A().f16505l.m17813b()) {
            m18064c(j, z);
        }
    }

    /* renamed from: c */
    public final void m18064c(long j, boolean z) {
        this.f16717a.mo17839c();
        if (!this.f16717a.f17008a.m18524j()) {
            return;
        }
        this.f16717a.f17008a.m18546A().f16508o.m18547b(j);
        this.f16717a.f17008a.mo17858F().m18014q().m18041b("Session started, time", Long.valueOf(this.f16717a.f17008a.mo17854Q().mo24762b()));
        Long valueOf = Long.valueOf(j / 1000);
        this.f16717a.f17008a.m18543D().m18243K("auto", "_sid", valueOf, j);
        this.f16717a.f17008a.m18546A().f16505l.m17814a(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.f16717a.f17008a.m18513u().m18356w(null, C3621c3.f16368g0) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.f16717a.f17008a.m18543D().m18215q("auto", "_s", j, bundle);
        C0603cd.m26095b();
        if (this.f16717a.f17008a.m18513u().m18356w(null, C3621c3.f16376k0)) {
            String m18388a = this.f16717a.f17008a.m18546A().f16513t.m18388a();
            if (!TextUtils.isEmpty(m18388a)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", m18388a);
                this.f16717a.f17008a.m18543D().m18215q("auto", "_ssr", j, bundle2);
            }
        }
    }
}
