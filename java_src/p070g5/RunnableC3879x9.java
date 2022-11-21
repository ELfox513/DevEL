package p070g5;

import android.os.Bundle;
import p220x3.C7297q;
/* renamed from: g5.x9 */
/* loaded from: classes2.dex */
public final class RunnableC3879x9 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f17080a;

    /* renamed from: b */
    public final /* synthetic */ String f17081b = "_err";

    /* renamed from: d */
    public final /* synthetic */ Bundle f17082d;

    /* renamed from: k */
    public final /* synthetic */ C3891y9 f17083k;

    public RunnableC3879x9(C3891y9 c3891y9, String str, String str2, Bundle bundle) {
        this.f17083k = c3891y9;
        this.f17080a = str;
        this.f17082d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17083k.f17117a.m18475e((C3833u) C7297q.m1883j(this.f17083k.f17117a.m18470g0().m18148w0(this.f17080a, this.f17081b, this.f17082d, "auto", this.f17083k.f17117a.mo17854Q().mo24763a(), false, true)), this.f17080a);
    }
}
