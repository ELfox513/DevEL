package p168r4;

import java.io.IOException;
/* renamed from: r4.ns3 */
/* loaded from: classes2.dex */
public final class ns3 implements pt3, qp2 {

    /* renamed from: a */
    public final Object f28474a;

    /* renamed from: b */
    public ot3 f28475b;

    /* renamed from: d */
    public po2 f28476d;

    /* renamed from: k */
    public final /* synthetic */ ps3 f28477k;

    public ns3(ps3 ps3Var, Object obj) {
        this.f28477k = ps3Var;
        this.f28475b = ps3Var.m7080s(null);
        this.f28476d = ps3Var.m7078w(null);
        this.f28474a = obj;
    }

    /* renamed from: b */
    public final boolean m8996b(int i, ft3 ft3Var) {
        ft3 ft3Var2;
        if (ft3Var != null) {
            ft3Var2 = this.f28477k.mo6014B(this.f28474a, ft3Var);
            if (ft3Var2 == null) {
                return false;
            }
        } else {
            ft3Var2 = null;
        }
        ot3 ot3Var = this.f28475b;
        if (ot3Var.f29131a != i || !C5979lc.m9729H(ot3Var.f29132b, ft3Var2)) {
            this.f28475b = this.f28477k.m7079u(i, ft3Var2, 0L);
        }
        po2 po2Var = this.f28476d;
        if (po2Var.f29543a != i || !C5979lc.m9729H(po2Var.f29544b, ft3Var2)) {
            this.f28476d = this.f28477k.m7077x(i, ft3Var2);
            return true;
        }
        return true;
    }

    @Override // p168r4.pt3
    /* renamed from: a */
    public final void mo8212a(int i, ft3 ft3Var, ct3 ct3Var) {
        if (m8996b(i, ft3Var)) {
            this.f28475b.m8686m(ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: g */
    public final void mo8211g(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m8996b(i, ft3Var)) {
            this.f28475b.m8694e(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: h */
    public final void mo8210h(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m8996b(i, ft3Var)) {
            this.f28475b.m8692g(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: k */
    public final void mo8209k(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m8996b(i, ft3Var)) {
            this.f28475b.m8690i(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: y */
    public final void mo8208y(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var, IOException iOException, boolean z) {
        if (m8996b(i, ft3Var)) {
            this.f28475b.m8688k(ws3Var, ct3Var, iOException, z);
        }
    }
}
