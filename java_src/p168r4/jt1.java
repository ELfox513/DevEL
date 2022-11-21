package p168r4;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.jt1 */
/* loaded from: classes2.dex */
public final class jt1 implements ga1, InterfaceC5812gt, j71, d81, e81, y81, m71, InterfaceC6165qc, nt2 {

    /* renamed from: a */
    public final List<Object> f26141a;

    /* renamed from: b */
    public final ws1 f26142b;

    /* renamed from: d */
    public long f26143d;

    public jt1(ws1 ws1Var, bu0 bu0Var) {
        this.f26142b = ws1Var;
        this.f26141a = Collections.singletonList(bu0Var);
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        m10168z(m71.class, "onAdFailedToLoad", Integer.valueOf(c5996lt.f27361a), c5996lt.f27362b, c5996lt.f27363d);
    }

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        m10168z(InterfaceC5812gt.class, "onAdClicked", new Object[0]);
    }

    @Override // p168r4.nt2
    /* renamed from: a */
    public final void mo6742a(gt2 gt2Var, String str) {
        m10168z(ft2.class, "onTaskSucceeded", str);
    }

    @Override // p168r4.nt2
    /* renamed from: c */
    public final void mo6741c(gt2 gt2Var, String str, Throwable th) {
        m10168z(ft2.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // p168r4.e81
    /* renamed from: e0 */
    public final void mo5185e0(Context context) {
        m10168z(e81.class, "onPause", context);
    }

    @Override // p168r4.j71
    /* renamed from: f */
    public final void mo5386f() {
        m10168z(j71.class, "onAdOpened", new Object[0]);
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        m10168z(d81.class, "onAdImpression", new Object[0]);
    }

    @Override // p168r4.j71
    /* renamed from: h */
    public final void mo5384h() {
        m10168z(j71.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // p168r4.j71
    /* renamed from: j */
    public final void mo5383j() {
        m10168z(j71.class, "onAdClosed", new Object[0]);
    }

    @Override // p168r4.j71
    /* renamed from: k */
    public final void mo5382k() {
        m10168z(j71.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // p168r4.j71
    /* renamed from: l */
    public final void mo5381l() {
        m10168z(j71.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // p168r4.e81
    /* renamed from: o */
    public final void mo5184o(Context context) {
        m10168z(e81.class, "onResume", context);
    }

    @Override // p168r4.InterfaceC6165qc
    /* renamed from: p */
    public final void mo5379p(String str, String str2) {
        m10168z(InterfaceC6165qc.class, "onAppEvent", str, str2);
    }

    @Override // p168r4.j71
    /* renamed from: q */
    public final void mo5378q(eh0 eh0Var, String str, String str2) {
        m10168z(j71.class, "onRewarded", eh0Var, str, str2);
    }

    @Override // p168r4.nt2
    /* renamed from: s */
    public final void mo6740s(gt2 gt2Var, String str) {
        m10168z(ft2.class, "onTaskCreated", str);
    }

    @Override // p168r4.nt2
    /* renamed from: u */
    public final void mo6739u(gt2 gt2Var, String str) {
        m10168z(ft2.class, "onTaskStarted", str);
    }

    @Override // p168r4.e81
    /* renamed from: v */
    public final void mo5183v(Context context) {
        m10168z(e81.class, "onDestroy", context);
    }

    /* renamed from: z */
    public final void m10168z(Class<?> cls, String str, Object... objArr) {
        ws1 ws1Var = this.f26142b;
        List<Object> list = this.f26141a;
        String simpleName = cls.getSimpleName();
        ws1Var.m5600a(list, simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-"), str, objArr);
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
        this.f26143d = C7601t.m932k().mo24762b();
        m10168z(ga1.class, "onAdRequest", new Object[0]);
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        long mo24762b = C7601t.m932k().mo24762b();
        long j = this.f26143d;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(mo24762b - j);
        C0543w1.m26251k(sb.toString());
        m10168z(y81.class, "onAdLoaded", new Object[0]);
    }
}
