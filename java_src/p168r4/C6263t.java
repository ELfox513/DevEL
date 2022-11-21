package p168r4;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: r4.t */
/* loaded from: classes2.dex */
public final class C6263t extends C6226s {
    public C6263t(Context context, String str, boolean z) {
        super(context, str, z);
    }

    /* renamed from: v */
    public static C6263t m6941v(String str, Context context, boolean z) {
        C6226s.m7259o(context, false);
        return new C6263t(context, str, false);
    }

    @Deprecated
    /* renamed from: w */
    public static C6263t m6940w(String str, Context context, boolean z, int i) {
        C6226s.m7259o(context, z);
        return new C6263t(context, str, z);
    }

    @Override // p168r4.C6226s
    /* renamed from: r */
    public final List<Callable<Void>> mo6942r(C6338v0 c6338v0, Context context, za4 za4Var, sa4 sa4Var) {
        if (c6338v0.m6281e() != null && this.f31193F) {
            int m6265u = c6338v0.m6265u();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(super.mo6942r(c6338v0, context, za4Var, null));
            arrayList.add(new C5968l1(c6338v0, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407", "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg=", za4Var, m6265u, 24));
            return arrayList;
        }
        return super.mo6942r(c6338v0, context, za4Var, null);
    }
}
