package p168r4;

import java.util.Map;
/* renamed from: r4.kh1 */
/* loaded from: classes2.dex */
public final class kh1 implements l31<p31> {

    /* renamed from: a */
    public final Map<String, q12<p31>> f26418a;

    /* renamed from: b */
    public final Map<String, q12<zi1>> f26419b;

    /* renamed from: c */
    public final Map<String, g42<zi1>> f26420c;

    /* renamed from: d */
    public final is3<l31<h11>> f26421d;

    /* renamed from: e */
    public final pj1 f26422e;

    public kh1(Map<String, q12<p31>> map, Map<String, q12<zi1>> map2, Map<String, g42<zi1>> map3, is3<l31<h11>> is3Var, pj1 pj1Var) {
        this.f26418a = map;
        this.f26419b = map2;
        this.f26420c = map3;
        this.f26421d = is3Var;
        this.f26422e = pj1Var;
    }

    @Override // p168r4.l31
    /* renamed from: f0 */
    public final q12<p31> mo9803f0(int i, String str) {
        q12<h11> mo9803f0;
        q12<p31> q12Var = this.f26418a.get(str);
        if (q12Var != null) {
            return q12Var;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            g42<zi1> g42Var = this.f26420c.get(str);
            if (g42Var != null) {
                return p31.m8493a(g42Var);
            }
            q12<zi1> q12Var2 = this.f26419b.get(str);
            if (q12Var2 == null) {
                return null;
            }
            return p31.m8492b(q12Var2);
        } else if (this.f26422e.m8306d() == null || (mo9803f0 = this.f26421d.mo4079a().mo9803f0(i, str)) == null) {
            return null;
        } else {
            return p31.m8492b(mo9803f0);
        }
    }
}
