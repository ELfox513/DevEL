package p168r4;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.ri2 */
/* loaded from: classes2.dex */
public final class ri2 implements eg2<si2> {

    /* renamed from: a */
    public final nl0 f30580a;

    /* renamed from: b */
    public final boolean f30581b;

    /* renamed from: c */
    public final ScheduledExecutorService f30582c;

    /* renamed from: d */
    public final i83 f30583d;

    /* renamed from: e */
    public final String f30584e;

    /* renamed from: f */
    public final cl0 f30585f;

    public ri2(nl0 nl0Var, boolean z, cl0 cl0Var, i83 i83Var, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.f30580a = nl0Var;
        this.f30581b = z;
        this.f30585f = cl0Var;
        this.f30583d = i83Var;
        this.f30584e = str;
        this.f30582c = scheduledExecutorService;
    }

    /* renamed from: a */
    public final /* synthetic */ si2 m7489a(Exception exc) {
        this.f30580a.m9056k(exc, "TrustlessTokenSignal");
        return null;
    }

    @Override // p168r4.eg2
    public final h83<si2> zza() {
        if (!s10.f31208a.m6673e().booleanValue() && !this.f30581b) {
            return y73.m4814a(null);
        }
        return y73.m4809f(y73.m4807h(y73.m4805j(y73.m4814a(null), pi2.f29472a, this.f30583d), s10.f31210c.m6673e().longValue(), TimeUnit.MILLISECONDS, this.f30582c), Exception.class, new p03(this) { // from class: r4.qi2

            /* renamed from: a */
            public final ri2 f30154a;

            {
                this.f30154a = this;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                this.f30154a.m7489a((Exception) obj);
                return null;
            }
        }, this.f30583d);
    }
}
