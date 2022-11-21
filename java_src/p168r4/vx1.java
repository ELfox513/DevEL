package p168r4;

import java.util.Map;
/* renamed from: r4.vx1 */
/* loaded from: classes2.dex */
public final class vx1 implements xx1 {

    /* renamed from: a */
    public final Map<String, is3<xx1>> f32968a;

    /* renamed from: b */
    public final i83 f32969b;

    /* renamed from: c */
    public final ea1 f32970c;

    public vx1(Map<String, is3<xx1>> map, i83 i83Var, ea1 ea1Var) {
        this.f32968a = map;
        this.f32969b = i83Var;
        this.f32970c = ea1Var;
    }

    @Override // p168r4.xx1
    /* renamed from: a */
    public final h83<bp2> mo4956a(final og0 og0Var) {
        this.f32970c.mo4832c0(og0Var);
        h83<bp2> m4812c = y73.m4812c(new sv1(3));
        for (String str : ((String) C5592av.m12935c().m8098c(C6225rz.f30900R5)).split(",")) {
            final is3<xx1> is3Var = this.f32968a.get(str.trim());
            if (is3Var != null) {
                m4812c = y73.m4808g(m4812c, sv1.class, new e73(is3Var, og0Var) { // from class: r4.tx1

                    /* renamed from: a */
                    public final is3 f32072a;

                    /* renamed from: b */
                    public final og0 f32073b;

                    {
                        this.f32072a = is3Var;
                        this.f32073b = og0Var;
                    }

                    @Override // p168r4.e73
                    /* renamed from: a */
                    public final h83 mo1029a(Object obj) {
                        is3 is3Var2 = this.f32072a;
                        sv1 sv1Var = (sv1) obj;
                        return ((xx1) is3Var2.mo4079a()).mo4956a(this.f32073b);
                    }
                }, this.f32969b);
            }
        }
        y73.m4799p(m4812c, new ux1(this), qm0.f30195f);
        return m4812c;
    }
}
