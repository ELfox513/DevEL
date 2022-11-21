package p016b3;

import com.badlogic.gdx.Net;
import java.util.Map;
import p168r4.bm0;
import p168r4.l84;
import p168r4.n94;
import p168r4.q84;
import p168r4.vm0;
import p168r4.w84;
/* renamed from: b3.u0 */
/* loaded from: classes.dex */
public final class C0535u0 extends q84<l84> {

    /* renamed from: x */
    public final vm0<l84> f1687x;

    /* renamed from: y */
    public final bm0 f1688y;

    @Override // p168r4.q84
    /* renamed from: H */
    public final w84<l84> mo5795H(l84 l84Var) {
        return w84.m5799a(l84Var, n94.m9142a(l84Var));
    }

    public C0535u0(String str, Map<String, String> map, vm0<l84> vm0Var) {
        super(0, str, new C0531t0(vm0Var));
        this.f1687x = vm0Var;
        bm0 bm0Var = new bm0(null);
        this.f1688y = bm0Var;
        bm0Var.m12764b(str, Net.HttpMethods.GET, null, null);
    }

    @Override // p168r4.q84
    /* renamed from: I */
    public final /* bridge */ /* synthetic */ void mo7947I(l84 l84Var) {
        l84 l84Var2 = l84Var;
        this.f1688y.m12762d(l84Var2.f27130c, l84Var2.f27128a);
        bm0 bm0Var = this.f1688y;
        byte[] bArr = l84Var2.f27129b;
        if (bm0.m12756j() && bArr != null) {
            bm0Var.m12760f(bArr);
        }
        this.f1687x.m6086e(l84Var2);
    }
}
