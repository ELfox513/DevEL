package p168r4;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.ci2 */
/* loaded from: classes2.dex */
public final class ci2 implements eg2<di2> {

    /* renamed from: a */
    public final ScheduledExecutorService f21540a;

    /* renamed from: b */
    public final Context f21541b;

    /* renamed from: c */
    public final af0 f21542c;

    public ci2(af0 af0Var, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.f21542c = af0Var;
        this.f21540a = scheduledExecutorService;
        this.f21541b = context;
    }

    @Override // p168r4.eg2
    public final h83<di2> zza() {
        return y73.m4805j(y73.m4807h(y73.m4814a(new Bundle()), ((Long) C5592av.m12935c().m8098c(C6225rz.f31164y2)).longValue(), TimeUnit.MILLISECONDS, this.f21540a), bi2.f21068a, qm0.f30190a);
    }
}
