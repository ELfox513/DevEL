package p168r4;

import java.util.Iterator;
import java.util.concurrent.Executor;
import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.al2 */
/* loaded from: classes2.dex */
public final class al2<R extends r61<AdT>, AdT extends i31> implements am2<R, dr2<R, AdT>> {

    /* renamed from: a */
    public R f20536a;

    /* renamed from: b */
    public final Executor f20537b = o83.m8868a();

    @Override // p168r4.am2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo7802a(bm2 bm2Var, zl2 zl2Var, Object obj) {
        return m13000c(bm2Var, zl2Var, null);
    }

    /* renamed from: b */
    public final R m13001b() {
        return this.f20536a;
    }

    @Override // p168r4.am2
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ Object mo7799e() {
        return this.f20536a;
    }

    /* renamed from: c */
    public final h83<dr2<R, AdT>> m13000c(bm2 bm2Var, zl2<R> zl2Var, R r) {
        q61<R> mo4187a = zl2Var.mo4187a(bm2Var.f21116b);
        mo4187a.mo8016r(new gm2(true));
        R mo8018d = mo4187a.mo8018d();
        this.f20536a = mo8018d;
        final m41 mo7604r = mo8018d.mo7604r();
        final dr2 dr2Var = new dr2();
        return y73.m4805j(y73.m4806i(o73.m8869E(mo7604r.m9502c()), new e73(this, dr2Var, mo7604r) { // from class: r4.yk2

            /* renamed from: a */
            public final al2 f34121a;

            /* renamed from: b */
            public final dr2 f34122b;

            /* renamed from: c */
            public final m41 f34123c;

            {
                this.f34121a = this;
                this.f34122b = dr2Var;
                this.f34123c = mo7604r;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                dr2 dr2Var2 = this.f34122b;
                m41 m41Var = this.f34123c;
                bp2 bp2Var = (bp2) obj;
                dr2Var2.f22411b = bp2Var;
                Iterator<no2> it = bp2Var.f21154b.f20573a.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        for (String str : it.next().f28404a) {
                            if (!str.contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return m41Var.m9501d(y73.m4814a(bp2Var));
                    }
                }
                return y73.m4814a(null);
            }
        }, this.f20537b), new p03(dr2Var) { // from class: r4.zk2

            /* renamed from: a */
            public final dr2 f34661a;

            {
                this.f34661a = dr2Var;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                dr2 dr2Var2 = this.f34661a;
                dr2Var2.f22412c = (AdT) obj;
                return dr2Var2;
            }
        }, this.f20537b);
    }
}
