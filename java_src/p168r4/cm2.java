package p168r4;

import android.content.Context;
import p235z2.C7601t;
/* renamed from: r4.cm2 */
/* loaded from: classes2.dex */
public final class cm2 {
    /* renamed from: a */
    public static am2<j01, p01> m12432a(Context context, pq2 pq2Var, ir2 ir2Var) {
        return m12430c(context, pq2Var, ir2Var);
    }

    /* renamed from: b */
    public static am2<u01, a11> m12431b(Context context, pq2 pq2Var, ir2 ir2Var) {
        return m12430c(context, pq2Var, ir2Var);
    }

    /* renamed from: c */
    public static <AppOpenAdRequestComponent extends r61<AppOpenAd>, AppOpenAd extends i31> am2<AppOpenAdRequestComponent, AppOpenAd> m12430c(Context context, pq2 pq2Var, ir2 ir2Var) {
        hl0 mo26193q;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30803F4)).booleanValue()) {
            mo26193q = C7601t.m935h().m9051p().mo26194p();
        } else {
            mo26193q = C7601t.m935h().m9051p().mo26193q();
        }
        boolean z = false;
        if (mo26193q != null && mo26193q.m10882i()) {
            z = true;
        }
        if (((Integer) C5592av.m12935c().m8098c(C6225rz.f30931V4)).intValue() > 0) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30795E4)).booleanValue() || z) {
                hr2 m10554a = ir2Var.m10554a(yq2.AppOpen, context, pq2Var, new dl2(new al2()));
                ql2 ql2Var = new ql2(new pl2());
                uq2 uq2Var = m10554a.f24806a;
                i83 i83Var = qm0.f30190a;
                return new fl2(ql2Var, new ml2(uq2Var, i83Var), m10554a.f24807b, m10554a.f24806a.mo6035c().f21185s, i83Var);
            }
        }
        return new pl2();
    }
}
