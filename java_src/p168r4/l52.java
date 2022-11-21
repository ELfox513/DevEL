package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.l52 */
/* loaded from: classes2.dex */
public final class l52<AdT> implements e73<bp2, AdT> {

    /* renamed from: a */
    public final mt2 f27089a;

    /* renamed from: b */
    public final l71 f27090b;

    /* renamed from: c */
    public final mu2 f27091c;

    /* renamed from: d */
    public final pu2 f27092d;

    /* renamed from: e */
    public final Executor f27093e;

    /* renamed from: f */
    public final ScheduledExecutorService f27094f;

    /* renamed from: g */
    public final l31<AdT> f27095g;

    /* renamed from: h */
    public final g52 f27096h;

    /* renamed from: i */
    public final v12 f27097i;

    public l52(mt2 mt2Var, g52 g52Var, l71 l71Var, mu2 mu2Var, pu2 pu2Var, l31<AdT> l31Var, Executor executor, ScheduledExecutorService scheduledExecutorService, v12 v12Var) {
        this.f27089a = mt2Var;
        this.f27096h = g52Var;
        this.f27090b = l71Var;
        this.f27091c = mu2Var;
        this.f27092d = pu2Var;
        this.f27095g = l31Var;
        this.f27093e = executor;
        this.f27094f = scheduledExecutorService;
        this.f27097i = v12Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0115  */
    @Override // p168r4.e73
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ p168r4.h83 mo1029a(p168r4.bp2 r9) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.l52.mo1029a(java.lang.Object):r4.h83");
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m9790c(bp2 bp2Var, no2 no2Var, q12 q12Var, Throwable th) {
        g52 g52Var = this.f27096h;
        so2 so2Var = bp2Var.f21154b.f20574b;
        h83 m4807h = y73.m4807h(q12Var.mo4840b(bp2Var, no2Var), no2Var.f28391N, TimeUnit.MILLISECONDS, this.f27094f);
        g52Var.m11287e(so2Var, no2Var, m4807h);
        return m4807h;
    }
}
