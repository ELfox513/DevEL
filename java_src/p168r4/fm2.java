package p168r4;

import android.content.Context;
import p235z2.C7601t;
/* renamed from: r4.fm2 */
/* loaded from: classes2.dex */
public final class fm2 implements vr3<am2<ap1, uo1>> {

    /* renamed from: a */
    public final is3<Context> f23558a;

    /* renamed from: b */
    public final is3<pq2> f23559b;

    /* renamed from: c */
    public final is3<ir2> f23560c;

    public fm2(is3<Context> is3Var, is3<pq2> is3Var2, is3<ir2> is3Var3) {
        this.f23558a = is3Var;
        this.f23559b = is3Var2;
        this.f23560c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final am2<ap1, uo1> mo4079a() {
        hl0 mo26193q;
        Context mo4079a = this.f23558a.mo4079a();
        pq2 mo4079a2 = this.f23559b.mo4079a();
        ir2 mo4079a3 = this.f23560c.mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30803F4)).booleanValue()) {
            mo26193q = C7601t.m935h().m9051p().mo26194p();
        } else {
            mo26193q = C7601t.m935h().m9051p().mo26193q();
        }
        boolean z = false;
        if (mo26193q != null && mo26193q.m10882i()) {
            z = true;
        }
        if (((Integer) C5592av.m12935c().m8098c(C6225rz.f30819H4)).intValue() > 0) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30795E4)).booleanValue() || z) {
                hr2 m10554a = mo4079a3.m10554a(yq2.Rewarded, mo4079a, mo4079a2, new dl2(new al2()));
                ql2 ql2Var = new ql2(new pl2());
                uq2 uq2Var = m10554a.f24806a;
                i83 i83Var = qm0.f30190a;
                return new fl2(ql2Var, new ml2(uq2Var, i83Var), m10554a.f24807b, m10554a.f24806a.mo6035c().f21185s, i83Var);
            }
        }
        return new pl2();
    }
}
