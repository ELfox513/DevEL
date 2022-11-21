package p168r4;

import java.util.Map;
import p235z2.C7601t;
/* renamed from: r4.rp2 */
/* loaded from: classes2.dex */
public final class rp2 {
    /* renamed from: a */
    public static u50<cs0> m7399a(final c12 c12Var, final pu2 pu2Var, final cf1 cf1Var) {
        return new u50(cf1Var, pu2Var, c12Var) { // from class: r4.np2

            /* renamed from: a */
            public final cf1 f28445a;

            /* renamed from: b */
            public final pu2 f28446b;

            /* renamed from: c */
            public final c12 f28447c;

            {
                this.f28445a = cf1Var;
                this.f28446b = pu2Var;
                this.f28447c = c12Var;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                cf1 cf1Var2 = this.f28445a;
                pu2 pu2Var2 = this.f28446b;
                c12 c12Var2 = this.f28447c;
                cs0 cs0Var = (cs0) obj;
                t50.m6908c(map, cf1Var2);
                String str = (String) map.get("u");
                if (str == null) {
                    cm0.m12437f("URL missing from click GMSG.");
                } else {
                    y73.m4799p(t50.m6910a(cs0Var, str), new pp2(cs0Var, pu2Var2, c12Var2), qm0.f30190a);
                }
            }
        };
    }

    /* renamed from: b */
    public static <T extends tr0 & bt0 & gt0 & ot0> u50<T> m7398b(final c12 c12Var, final pu2 pu2Var) {
        return new u50(pu2Var, c12Var) { // from class: r4.op2

            /* renamed from: a */
            public final pu2 f29101a;

            /* renamed from: b */
            public final c12 f29102b;

            {
                this.f29101a = pu2Var;
                this.f29102b = c12Var;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                pu2 pu2Var2 = this.f29101a;
                c12 c12Var2 = this.f29102b;
                tr0 tr0Var = (tr0) obj;
                String str = (String) map.get("u");
                if (str == null) {
                    cm0.m12437f("URL missing from httpTrack GMSG.");
                } else if (!tr0Var.mo5128G().f28415f0) {
                    pu2Var2.m8184b(str);
                } else {
                    c12Var2.m12657g(new e12(C7601t.m932k().mo24763a(), ((bt0) tr0Var).mo5117M().f31426b, str, 2));
                }
            }
        };
    }
}
