package p168r4;

import android.util.Pair;
import java.io.IOException;
/* renamed from: r4.f6 */
/* loaded from: classes2.dex */
public final class C5752f6 implements pt3, qp2 {

    /* renamed from: a */
    public final C5826h6 f23384a;

    /* renamed from: b */
    public ot3 f23385b;

    /* renamed from: d */
    public po2 f23386d;

    /* renamed from: k */
    public final /* synthetic */ C5899j6 f23387k;

    public C5752f6(C5899j6 c5899j6, C5826h6 c5826h6) {
        ot3 ot3Var;
        po2 po2Var;
        this.f23387k = c5899j6;
        ot3Var = c5899j6.f25923e;
        this.f23385b = ot3Var;
        po2Var = c5899j6.f25924f;
        this.f23386d = po2Var;
        this.f23384a = c5826h6;
    }

    /* renamed from: b */
    public final boolean m11607b(int i, ft3 ft3Var) {
        ot3 ot3Var;
        po2 po2Var;
        ft3 ft3Var2 = null;
        if (ft3Var != null) {
            C5826h6 c5826h6 = this.f23384a;
            int i2 = 0;
            while (true) {
                if (i2 >= c5826h6.f24476c.size()) {
                    break;
                } else if (c5826h6.f24476c.get(i2).f23240d == ft3Var.f23240d) {
                    ft3Var2 = ft3Var.m11366c(Pair.create(c5826h6.f24475b, ft3Var.f23237a));
                    break;
                } else {
                    i2++;
                }
            }
            if (ft3Var2 == null) {
                return false;
            }
        }
        int i3 = i + this.f23384a.f24477d;
        ot3 ot3Var2 = this.f23385b;
        if (ot3Var2.f29131a != i3 || !C5979lc.m9729H(ot3Var2.f29132b, ft3Var2)) {
            ot3Var = this.f23387k.f25923e;
            this.f23385b = ot3Var.m8698a(i3, ft3Var2, 0L);
        }
        po2 po2Var2 = this.f23386d;
        if (po2Var2.f29543a != i3 || !C5979lc.m9729H(po2Var2.f29544b, ft3Var2)) {
            po2Var = this.f23387k.f25924f;
            this.f23386d = po2Var.m8232a(i3, ft3Var2);
            return true;
        }
        return true;
    }

    @Override // p168r4.pt3
    /* renamed from: a */
    public final void mo8212a(int i, ft3 ft3Var, ct3 ct3Var) {
        if (m11607b(i, ft3Var)) {
            this.f23385b.m8686m(ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: g */
    public final void mo8211g(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m11607b(i, ft3Var)) {
            this.f23385b.m8694e(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: h */
    public final void mo8210h(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m11607b(i, ft3Var)) {
            this.f23385b.m8692g(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: k */
    public final void mo8209k(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var) {
        if (m11607b(i, ft3Var)) {
            this.f23385b.m8690i(ws3Var, ct3Var);
        }
    }

    @Override // p168r4.pt3
    /* renamed from: y */
    public final void mo8208y(int i, ft3 ft3Var, ws3 ws3Var, ct3 ct3Var, IOException iOException, boolean z) {
        if (m11607b(i, ft3Var)) {
            this.f23385b.m8688k(ws3Var, ct3Var, iOException, z);
        }
    }
}
