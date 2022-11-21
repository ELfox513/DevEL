package p168r4;

import java.util.List;
import p235z2.C7601t;
/* renamed from: r4.sp2 */
/* loaded from: classes2.dex */
public final class sp2 {

    /* renamed from: a */
    public final no2 f31459a;

    /* renamed from: b */
    public final so2 f31460b;

    /* renamed from: c */
    public final c12 f31461c;

    /* renamed from: d */
    public final pu2 f31462d;

    public sp2(c12 c12Var, pu2 pu2Var, no2 no2Var, so2 so2Var) {
        this.f31459a = no2Var;
        this.f31460b = so2Var;
        this.f31461c = c12Var;
        this.f31462d = pu2Var;
    }

    /* renamed from: c */
    public final void m7068c(String str, int i) {
        if (!this.f31459a.f28415f0) {
            this.f31462d.m8184b(str);
            return;
        }
        this.f31461c.m12657g(new e12(C7601t.m932k().mo24763a(), this.f31460b.f31426b, str, i));
    }

    /* renamed from: a */
    public final void m7070a(List<String> list) {
        for (String str : list) {
            m7068c(str, 2);
        }
    }

    /* renamed from: b */
    public final void m7069b(List<String> list, int i) {
        for (String str : list) {
            m7068c(str, i);
        }
    }
}
