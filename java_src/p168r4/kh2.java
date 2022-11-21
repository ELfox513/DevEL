package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.kh2 */
/* loaded from: classes2.dex */
public final class kh2 implements eg2<lh2> {

    /* renamed from: a */
    public final Context f26423a;

    /* renamed from: b */
    public final nl0 f26424b;

    /* renamed from: c */
    public final ScheduledExecutorService f26425c;

    /* renamed from: d */
    public final Executor f26426d;

    /* renamed from: e */
    public final String f26427e;

    /* renamed from: f */
    public final el0 f26428f;

    public kh2(el0 el0Var, int i, Context context, nl0 nl0Var, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, byte[] bArr) {
        this.f26428f = el0Var;
        this.f26423a = context;
        this.f26424b = nl0Var;
        this.f26425c = scheduledExecutorService;
        this.f26426d = executor;
        this.f26427e = str;
    }

    /* renamed from: a */
    public final /* synthetic */ lh2 m10026a(Exception exc) {
        this.f26424b.m9056k(exc, "AttestationTokenSignal");
        return null;
    }

    @Override // p168r4.eg2
    public final h83<lh2> zza() {
        return y73.m4809f((o73) y73.m4807h(y73.m4805j(o73.m8869E(y73.m4810e(new d73(this) { // from class: r4.gh2

            /* renamed from: a */
            public final kh2 f24095a;

            {
                this.f24095a = this;
            }

            @Override // p168r4.d73
            public final h83 zza() {
                return y73.m4814a(null);
            }
        }, this.f26426d)), ih2.f25097a, this.f26426d), ((Long) C5592av.m12935c().m8098c(C6225rz.f30807G0)).longValue(), TimeUnit.MILLISECONDS, this.f26425c), Exception.class, new p03(this) { // from class: r4.jh2

            /* renamed from: a */
            public final kh2 f26030a;

            {
                this.f26030a = this;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                this.f26030a.m10026a((Exception) obj);
                return null;
            }
        }, o83.m8868a());
    }
}
