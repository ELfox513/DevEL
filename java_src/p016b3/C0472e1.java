package p016b3;

import android.content.Context;
import java.io.IOException;
import p168r4.bm0;
import p168r4.cm0;
import p185t3.C6748i;
import p211w2.C7171a;
/* renamed from: b3.e1 */
/* loaded from: classes.dex */
public final class C0472e1 extends AbstractC0467d0 {

    /* renamed from: c */
    public final Context f1601c;

    public C0472e1(Context context) {
        this.f1601c = context;
    }

    @Override // p016b3.AbstractC0467d0
    /* renamed from: a */
    public final void mo10004a() {
        boolean z;
        try {
            z = C7171a.m2241d(this.f1601c);
        } catch (IOException | IllegalStateException | C6748i e) {
            cm0.m12439d("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        bm0.m12758h(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        cm0.m12437f(sb.toString());
    }
}
