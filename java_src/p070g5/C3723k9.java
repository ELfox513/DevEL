package p070g5;

import android.os.Bundle;
import p018b5.C0756ld;
/* renamed from: g5.k9 */
/* loaded from: classes2.dex */
public final class C3723k9 {

    /* renamed from: a */
    public long f16692a;

    /* renamed from: b */
    public long f16693b;

    /* renamed from: c */
    public final AbstractC3749n f16694c;

    /* renamed from: d */
    public final /* synthetic */ C3747m9 f16695d;

    /* renamed from: a */
    public final void m18082a() {
        this.f16694c.m18056b();
        this.f16692a = 0L;
        this.f16693b = 0L;
    }

    /* renamed from: b */
    public final void m18081b(long j) {
        this.f16694c.m18056b();
    }

    public C3723k9(C3747m9 c3747m9) {
        this.f16695d = c3747m9;
        this.f16694c = new C3711j9(this, c3747m9.f17008a);
        long mo24762b = c3747m9.f17008a.mo17854Q().mo24762b();
        this.f16692a = mo24762b;
        this.f16693b = mo24762b;
    }

    /* renamed from: c */
    public final void m18080c(long j) {
        this.f16695d.mo17839c();
        this.f16694c.m18056b();
        this.f16692a = j;
        this.f16693b = j;
    }

    /* renamed from: d */
    public final boolean m18079d(boolean z, boolean z2, long j) {
        this.f16695d.mo17839c();
        this.f16695d.m18384d();
        C0756ld.m25682b();
        if (this.f16695d.f17008a.m18513u().m18356w(null, C3621c3.f16378l0)) {
            if (this.f16695d.f17008a.m18524j()) {
                this.f16695d.f17008a.m18546A().f16508o.m18547b(this.f16695d.f17008a.mo17854Q().mo24763a());
            }
        } else {
            this.f16695d.f17008a.m18546A().f16508o.m18547b(this.f16695d.f17008a.mo17854Q().mo24763a());
        }
        long j2 = j - this.f16692a;
        if (!z && j2 < 1000) {
            this.f16695d.f17008a.mo17858F().m18014q().m18041b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = j - this.f16693b;
            this.f16693b = j;
        }
        this.f16695d.f17008a.mo17858F().m18014q().m18041b("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        C3700ia.m18157s(this.f16695d.f17008a.m18541H().m17910o(!this.f16695d.f17008a.m18513u().m18354y()), bundle, true);
        C3665g m18513u = this.f16695d.f17008a.m18513u();
        C3609b3<Boolean> c3609b3 = C3621c3.f16350V;
        if (!m18513u.m18356w(null, c3609b3) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.f16695d.f17008a.m18513u().m18356w(null, c3609b3) || !z2) {
            this.f16695d.f17008a.m18543D().m18216p("auto", "_e", bundle);
        }
        this.f16692a = j;
        this.f16694c.m18056b();
        this.f16694c.m18055d(3600000L);
        return true;
    }
}
