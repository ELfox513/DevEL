package p168r4;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* renamed from: r4.ob2 */
/* loaded from: classes2.dex */
public final class ob2 implements eg2<dg2<Bundle>> {

    /* renamed from: a */
    public final Executor f28948a;

    /* renamed from: b */
    public final nl0 f28949b;

    public ob2(Executor executor, nl0 nl0Var) {
        this.f28948a = executor;
        this.f28949b = nl0Var;
    }

    @Override // p168r4.eg2
    public final h83<dg2<Bundle>> zza() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30864N1)).booleanValue()) {
            return y73.m4814a(null);
        }
        return y73.m4805j(this.f28949b.m9049r(), mb2.f27569a, this.f28948a);
    }
}
