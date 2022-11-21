package p070g5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: g5.r6 */
/* loaded from: classes2.dex */
public final class RunnableC3804r6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f16913a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16914b;

    public RunnableC3804r6(C3697i7 c3697i7, Bundle bundle) {
        this.f16914b = c3697i7;
        this.f16913a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3652ea c3652ea;
        String string;
        String string2;
        C3697i7 c3697i7 = this.f16914b;
        Bundle bundle = this.f16913a;
        c3697i7.mo17839c();
        c3697i7.m18384d();
        C7297q.m1883j(bundle);
        C7297q.m1887f(bundle.getString("name"));
        if (c3697i7.f17008a.m18524j()) {
            C3665g m18513u = c3697i7.f17008a.m18513u();
            C3609b3<Boolean> c3609b3 = C3621c3.f16390r0;
            if (m18513u.m18356w(null, c3609b3)) {
                c3652ea = new C3652ea(bundle.getString("name"), 0L, null, "");
            } else {
                c3652ea = new C3652ea(bundle.getString("name"), 0L, null, null);
            }
            C3652ea c3652ea2 = c3652ea;
            try {
                C3700ia m18538K = c3697i7.f17008a.m18538K();
                String string3 = bundle.getString("app_id");
                String string4 = bundle.getString("expired_event_name");
                Bundle bundle2 = bundle.getBundle("expired_event_params");
                if (c3697i7.f17008a.m18513u().m18356w(null, c3609b3)) {
                    string = "";
                } else {
                    string = bundle.getString("origin");
                }
                C3833u m18148w0 = m18538K.m18148w0(string3, string4, bundle2, string, bundle.getLong("creation_timestamp"), true, true);
                String string5 = bundle.getString("app_id");
                if (c3697i7.f17008a.m18513u().m18356w(null, c3609b3)) {
                    string2 = "";
                } else {
                    string2 = bundle.getString("origin");
                }
                c3697i7.f17008a.m18540I().m17875n(new C3617c(string5, string2, c3652ea2, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), m18148w0));
                return;
            } catch (IllegalArgumentException unused) {
                return;
            }
        }
        c3697i7.f17008a.mo17858F().m18014q().m18042a("Conditional property not cleared since app measurement is disabled");
    }
}
