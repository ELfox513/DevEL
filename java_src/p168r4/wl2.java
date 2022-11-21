package p168r4;

import java.util.concurrent.Executor;
import p168r4.r61;
/* renamed from: r4.wl2 */
/* loaded from: classes2.dex */
public final class wl2<R extends r61<? extends i31>> {

    /* renamed from: a */
    public final uq2 f33250a;

    /* renamed from: b */
    public final R f33251b;

    /* renamed from: c */
    public final Executor f33252c;

    /* renamed from: d */
    public vl2 f33253d;

    public wl2(uq2 uq2Var, R r, Executor executor) {
        this.f33250a = uq2Var;
        this.f33251b = r;
        this.f33252c = executor;
    }

    /* renamed from: c */
    public final h83<vl2> m5680c() {
        h83 m4809f;
        vl2 vl2Var = this.f33253d;
        if (vl2Var == null) {
            if (!l10.f27013a.m6673e().booleanValue()) {
                vl2 vl2Var2 = new vl2(null, m5678e(), null);
                this.f33253d = vl2Var2;
                m4809f = y73.m4814a(vl2Var2);
            } else {
                m4809f = y73.m4809f(y73.m4805j(o73.m8869E(this.f33251b.mo7604r().m9499f(this.f33250a.mo6035c())), new tl2(this), this.f33252c), yx1.class, new sl2(this), this.f33252c);
            }
            return y73.m4805j(m4809f, rl2.f30624a, this.f33252c);
        }
        return y73.m4814a(vl2Var);
    }

    @Deprecated
    /* renamed from: e */
    public final er2 m5678e() {
        hp2 mo7605Z = this.f33251b.mo7605Z();
        return this.f33250a.mo6037a(mo7605Z.f24779d, mo7605Z.f24781f, mo7605Z.f24785j);
    }
}
