package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.l92 */
/* loaded from: classes2.dex */
public final class l92 extends AbstractBinderC6332uv {

    /* renamed from: a */
    public final C6478yt f27136a;

    /* renamed from: b */
    public final Context f27137b;

    /* renamed from: d */
    public final pm2 f27138d;

    /* renamed from: k */
    public final String f27139k;

    /* renamed from: p */
    public final d92 f27140p;

    /* renamed from: q */
    public final qn2 f27141q;

    /* renamed from: r */
    public xf1 f27142r;

    /* renamed from: s */
    public boolean f27143s = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31122t0)).booleanValue();

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: A0 */
    public final synchronized void mo996A0(boolean z) {
        C7297q.m1888e("setImmersiveMode must be called on the main UI thread.");
        this.f27143s = z;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B */
    public final synchronized String mo995B() {
        xf1 xf1Var = this.f27142r;
        if (xf1Var == null || xf1Var.m10732d() == null) {
            return null;
        }
        return this.f27142r.m10732d().mo10772c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B2 */
    public final void mo994B2(ff0 ff0Var) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B6 */
    public final void mo993B6(InterfaceC5740ev interfaceC5740ev) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: C1 */
    public final synchronized void mo992C1(n00 n00Var) {
        C7297q.m1888e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f27138d.m8272g(n00Var);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: D1 */
    public final void mo991D1(C5739eu c5739eu) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: E5 */
    public final void mo990E5(kf0 kf0Var, String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: G1 */
    public final void mo989G1(lh0 lh0Var) {
        this.f27141q.m7776Q(lh0Var);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: H6 */
    public final void mo988H6(InterfaceC6517zv interfaceC6517zv) {
        C7297q.m1888e("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: I */
    public final synchronized boolean mo987I() {
        return this.f27138d.mo6510a();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: J4 */
    public final void mo986J4(boolean z) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L */
    public final InterfaceC5887iv mo985L() {
        return this.f27140p.m12194c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L1 */
    public final synchronized void mo984L1(InterfaceC3512a interfaceC3512a) {
        if (this.f27142r == null) {
            cm0.m12437f("Interstitial can not be shown before loaded.");
            this.f27140p.mo4410o(dq2.m11989d(9, null, null));
            return;
        }
        this.f27142r.m5331g(this.f27143s, (Activity) BinderC3514b.m18740t0(interfaceC3512a));
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: P */
    public final synchronized String mo983P() {
        return this.f27139k;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S0 */
    public final void mo981S0(C6478yt c6478yt) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S5 */
    public final void mo979S5(C6149px c6149px) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Y1 */
    public final void mo977Y1(InterfaceC5807go interfaceC5807go) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Z1 */
    public final void mo976Z1(C6446xy c6446xy) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h */
    public final synchronized void mo973h() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        xf1 xf1Var = this.f27142r;
        if (xf1Var != null) {
            xf1Var.m10733c().m10382e1(null);
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h4 */
    public final void mo972h4(C5815gw c5815gw) {
    }

    /* renamed from: h7 */
    public final synchronized boolean m9765h7() {
        boolean z;
        xf1 xf1Var = this.f27142r;
        if (xf1Var != null) {
            z = xf1Var.m5330h() ? false : true;
        }
        return z;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: i */
    public final synchronized boolean mo970i() {
        C7297q.m1888e("isLoaded must be called on the main UI thread.");
        return m9765h7();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: j */
    public final InterfaceC3512a mo968j() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: l */
    public final synchronized void mo965l() {
        C7297q.m1888e("pause must be called on the main UI thread.");
        xf1 xf1Var = this.f27142r;
        if (xf1Var != null) {
            xf1Var.m10733c().m10384T0(null);
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: n */
    public final void mo962n() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: p */
    public final synchronized void mo959p() {
        C7297q.m1888e("resume must be called on the main UI thread.");
        xf1 xf1Var = this.f27142r;
        if (xf1Var != null) {
            xf1Var.m10733c().m10383Z0(null);
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: r */
    public final synchronized void mo956r() {
        C7297q.m1888e("showInterstitial must be called on the main UI thread.");
        xf1 xf1Var = this.f27142r;
        if (xf1Var == null) {
            cm0.m12437f("Interstitial can not be shown before loaded.");
            this.f27140p.mo4410o(dq2.m11989d(9, null, null));
            return;
        }
        xf1Var.m5331g(this.f27143s, null);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: s5 */
    public final void mo954s5(InterfaceC5962kw interfaceC5962kw) {
        this.f27140p.m12196N(interfaceC5962kw);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: t */
    public final C6478yt mo953t() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v */
    public final synchronized String mo952v() {
        xf1 xf1Var = this.f27142r;
        if (xf1Var == null || xf1Var.m10732d() == null) {
            return null;
        }
        return this.f27142r.m10732d().mo10772c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w0 */
    public final InterfaceC6000lx mo949w0() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w5 */
    public final synchronized boolean mo948w5(C6293tt c6293tt) {
        C7297q.m1888e("loadAd must be called on the main UI thread.");
        C7601t.m939d();
        if (C0497k2.m26311k(this.f27137b) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            d92 d92Var = this.f27140p;
            if (d92Var != null) {
                d92Var.mo5143B(dq2.m11989d(4, null, null));
            }
            return false;
        } else if (m9765h7()) {
            return false;
        } else {
            yp2.m4610b(this.f27137b, c6293tt.f31999q);
            this.f27142r = null;
            return this.f27138d.mo6509b(c6293tt, this.f27139k, new hm2(this.f27136a), new k92(this));
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x1 */
    public final void mo947x1(String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x3 */
    public final void mo946x3(String str) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: y */
    public final InterfaceC5666cw mo945y() {
        return this.f27140p.m12193s();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: z */
    public final synchronized InterfaceC5853hx mo944z() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue()) {
            return null;
        }
        xf1 xf1Var = this.f27142r;
        if (xf1Var == null) {
            return null;
        }
        return xf1Var.m10732d();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Q5 */
    public final void mo982Q5(C6293tt c6293tt, InterfaceC5998lv interfaceC5998lv) {
        this.f27140p.m12197L(interfaceC5998lv);
        mo948w5(c6293tt);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S1 */
    public final void mo980S1(InterfaceC5887iv interfaceC5887iv) {
        C7297q.m1888e("setAdListener must be called on the main UI thread.");
        this.f27140p.m12192v(interfaceC5887iv);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: X4 */
    public final void mo978X4(InterfaceC5742ex interfaceC5742ex) {
        C7297q.m1888e("setPaidEventListener must be called on the main UI thread.");
        this.f27140p.m12198A(interfaceC5742ex);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v4 */
    public final void mo951v4(InterfaceC5666cw interfaceC5666cw) {
        C7297q.m1888e("setAppEventListener must be called on the main UI thread.");
        this.f27140p.m12191z(interfaceC5666cw);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w */
    public final Bundle mo950w() {
        C7297q.m1888e("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    public l92(Context context, C6478yt c6478yt, String str, pm2 pm2Var, d92 d92Var, qn2 qn2Var) {
        this.f27136a = c6478yt;
        this.f27139k = str;
        this.f27137b = context;
        this.f27138d = pm2Var;
        this.f27140p = d92Var;
        this.f27141q = qn2Var;
    }
}
