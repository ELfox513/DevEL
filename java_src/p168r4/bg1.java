package p168r4;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.bg1 */
/* loaded from: classes2.dex */
public class bg1 {

    /* renamed from: a */
    public final dh1 f21052a;

    /* renamed from: b */
    public final cs0 f21053b;

    public bg1(dh1 dh1Var, cs0 cs0Var) {
        this.f21052a = dh1Var;
        this.f21053b = cs0Var;
    }

    /* renamed from: h */
    public static final ve1<me1> m12773h(ih1 ih1Var) {
        return new ve1<>(ih1Var, qm0.f30195f);
    }

    /* renamed from: a */
    public final dh1 m12778a() {
        return this.f21052a;
    }

    /* renamed from: b */
    public final cs0 m12777b() {
        return this.f21053b;
    }

    /* renamed from: c */
    public final View m12776c() {
        cs0 cs0Var = this.f21053b;
        if (cs0Var != null) {
            return cs0Var.mo5122J();
        }
        return null;
    }

    /* renamed from: d */
    public final View m12775d() {
        cs0 cs0Var = this.f21053b;
        if (cs0Var == null) {
            return null;
        }
        return cs0Var.mo5122J();
    }

    /* renamed from: g */
    public final ve1<dc1> m12774g(Executor executor) {
        final cs0 cs0Var = this.f21053b;
        return new ve1<>(new dc1(cs0Var) { // from class: r4.ag1

            /* renamed from: a */
            public final cs0 f20478a;

            {
                this.f20478a = cs0Var;
            }

            @Override // p168r4.dc1
            public final void zza() {
                cs0 cs0Var2 = this.f20478a;
                if (cs0Var2.mo5097Z() != null) {
                    cs0Var2.mo5097Z().m27702a();
                }
            }
        }, executor);
    }

    /* renamed from: e */
    public Set<ve1<j71>> mo8871e(i61 i61Var) {
        return Collections.singleton(new ve1(i61Var, qm0.f30195f));
    }

    /* renamed from: f */
    public Set<ve1<me1>> mo8870f(i61 i61Var) {
        return Collections.singleton(new ve1(i61Var, qm0.f30195f));
    }
}
