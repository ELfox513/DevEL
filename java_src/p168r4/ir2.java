package p168r4;

import android.content.Context;
import java.util.HashMap;
/* renamed from: r4.ir2 */
/* loaded from: classes2.dex */
public final class ir2 {

    /* renamed from: a */
    public final HashMap<yq2, hr2<?, ?>> f25259a = new HashMap<>();

    /* renamed from: a */
    public final <R extends r61<AdT>, AdT extends i31> hr2<R, AdT> m10554a(yq2 yq2Var, Context context, pq2 pq2Var, or2<R, AdT> or2Var) {
        hr2<R, AdT> hr2Var = (hr2<R, AdT>) this.f25259a.get(yq2Var);
        if (hr2Var == null) {
            vq2 vq2Var = new vq2(br2.m12709X0(yq2Var, context));
            hr2<R, AdT> hr2Var2 = new hr2<>(vq2Var, new qr2(vq2Var, pq2Var, or2Var));
            this.f25259a.put(yq2Var, hr2Var2);
            return hr2Var2;
        }
        return hr2Var;
    }
}
