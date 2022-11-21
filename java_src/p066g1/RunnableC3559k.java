package p066g1;

import androidx.work.impl.WorkDatabase;
import p057f1.InterfaceC3485q;
import p209w0.AbstractC7114j;
import p209w0.EnumC7130s;
import p217x0.C7193d;
import p217x0.C7199i;
/* renamed from: g1.k */
/* loaded from: classes.dex */
public class RunnableC3559k implements Runnable {

    /* renamed from: k */
    public static final String f16101k = AbstractC7114j.m2489f("StopWorkRunnable");

    /* renamed from: a */
    public final C7199i f16102a;

    /* renamed from: b */
    public final String f16103b;

    /* renamed from: d */
    public final boolean f16104d;

    @Override // java.lang.Runnable
    public void run() {
        boolean m2196o;
        WorkDatabase m2159r = this.f16102a.m2159r();
        C7193d m2161p = this.f16102a.m2161p();
        InterfaceC3485q mo26644B = m2159r.mo26644B();
        m2159r.m15828c();
        try {
            boolean m2203h = m2161p.m2203h(this.f16103b);
            if (this.f16104d) {
                m2196o = this.f16102a.m2161p().m2197n(this.f16103b);
            } else {
                if (!m2203h && mo26644B.mo18773l(this.f16103b) == EnumC7130s.RUNNING) {
                    mo26644B.mo18783b(EnumC7130s.ENQUEUED, this.f16103b);
                }
                m2196o = this.f16102a.m2161p().m2196o(this.f16103b);
            }
            AbstractC7114j.m2491c().mo2488a(f16101k, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f16103b, Boolean.valueOf(m2196o)), new Throwable[0]);
            m2159r.m15813r();
        } finally {
            m2159r.m15824g();
        }
    }

    public RunnableC3559k(C7199i c7199i, String str, boolean z) {
        this.f16102a = c7199i;
        this.f16103b = str;
        this.f16104d = z;
    }
}
