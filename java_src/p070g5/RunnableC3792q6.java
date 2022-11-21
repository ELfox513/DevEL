package p070g5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: g5.q6 */
/* loaded from: classes2.dex */
public final class RunnableC3792q6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f16891a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16892b;

    public RunnableC3792q6(C3697i7 c3697i7, Bundle bundle) {
        this.f16892b = c3697i7;
        this.f16891a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3697i7 c3697i7 = this.f16892b;
        Bundle bundle = this.f16891a;
        c3697i7.mo17839c();
        c3697i7.m18384d();
        C7297q.m1883j(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        C7297q.m1887f(string);
        C7297q.m1887f(string2);
        C7297q.m1883j(bundle.get("value"));
        if (!c3697i7.f17008a.m18524j()) {
            c3697i7.f17008a.mo17858F().m18014q().m18042a("Conditional property not set since app measurement is disabled");
            return;
        }
        C3652ea c3652ea = new C3652ea(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            C3833u m18148w0 = c3697i7.f17008a.m18538K().m18148w0(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            c3697i7.f17008a.m18540I().m17875n(new C3617c(bundle.getString("app_id"), string2, c3652ea, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), c3697i7.f17008a.m18538K().m18148w0(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), m18148w0, bundle.getLong("time_to_live"), c3697i7.f17008a.m18538K().m18148w0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
