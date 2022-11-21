package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Collections;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.i82 */
/* loaded from: classes2.dex */
public final class i82 extends AbstractBinderC6332uv implements ba1 {

    /* renamed from: a */
    public final Context f25006a;

    /* renamed from: b */
    public final uk2 f25007b;

    /* renamed from: d */
    public final String f25008d;

    /* renamed from: k */
    public final d92 f25009k;

    /* renamed from: p */
    public C6478yt f25010p;

    /* renamed from: q */
    public final fp2 f25011q;

    /* renamed from: r */
    public h11 f25012r;

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: A0 */
    public final void mo996A0(boolean z) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B */
    public final synchronized String mo995B() {
        h11 h11Var = this.f25012r;
        if (h11Var == null || h11Var.m10732d() == null) {
            return null;
        }
        return this.f25012r.m10732d().mo10772c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B2 */
    public final void mo994B2(ff0 ff0Var) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: C1 */
    public final synchronized void mo992C1(n00 n00Var) {
        C7297q.m1888e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f25007b.m6501j(n00Var);
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
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: H6 */
    public final void mo988H6(InterfaceC6517zv interfaceC6517zv) {
        C7297q.m1888e("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: I */
    public final synchronized boolean mo987I() {
        return this.f25007b.mo6510a();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: J4 */
    public final synchronized void mo986J4(boolean z) {
        C7297q.m1888e("setManualImpressionsEnabled must be called from the main thread.");
        this.f25011q.m11424a(z);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L */
    public final InterfaceC5887iv mo985L() {
        return this.f25009k.m12194c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L1 */
    public final void mo984L1(InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: P */
    public final synchronized String mo983P() {
        return this.f25008d;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Q5 */
    public final void mo982Q5(C6293tt c6293tt, InterfaceC5998lv interfaceC5998lv) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S0 */
    public final synchronized void mo981S0(C6478yt c6478yt) {
        C7297q.m1888e("setAdSize must be called on the main UI thread.");
        this.f25011q.m11431I(c6478yt);
        this.f25010p = c6478yt;
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            h11Var.mo8070h(this.f25007b.m6502i(), c6478yt);
        }
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
    public final synchronized void mo976Z1(C6446xy c6446xy) {
        C7297q.m1888e("setVideoOptions must be called on the main UI thread.");
        this.f25011q.m11426N(c6446xy);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h */
    public final synchronized void mo973h() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            h11Var.mo4220b();
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h4 */
    public final synchronized void mo972h4(C5815gw c5815gw) {
        C7297q.m1888e("setCorrelationIdProvider must be called on the main UI thread");
        this.f25011q.m11410o(c5815gw);
    }

    /* renamed from: h7 */
    public final synchronized void m10714h7(C6478yt c6478yt) {
        this.f25011q.m11431I(c6478yt);
        this.f25011q.m11430J(this.f25010p.f34210y);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: i */
    public final boolean mo970i() {
        return false;
    }

    /* renamed from: i7 */
    public final synchronized boolean m10713i7(C6293tt c6293tt) {
        C7297q.m1888e("loadAd must be called on the main UI thread.");
        C7601t.m939d();
        if (C0497k2.m26311k(this.f25006a) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            d92 d92Var = this.f25009k;
            if (d92Var != null) {
                d92Var.mo5143B(dq2.m11989d(4, null, null));
            }
            return false;
        }
        yp2.m4610b(this.f25006a, c6293tt.f31999q);
        return this.f25007b.mo6509b(c6293tt, this.f25008d, null, new h82(this));
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: l */
    public final synchronized void mo965l() {
        C7297q.m1888e("pause must be called on the main UI thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            h11Var.m10733c().m10384T0(null);
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: n */
    public final synchronized void mo962n() {
        C7297q.m1888e("recordManualImpression must be called on the main UI thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            h11Var.mo8065m();
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: p */
    public final synchronized void mo959p() {
        C7297q.m1888e("resume must be called on the main UI thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            h11Var.m10733c().m10383Z0(null);
        }
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: r */
    public final void mo956r() {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: s5 */
    public final void mo954s5(InterfaceC5962kw interfaceC5962kw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: t */
    public final synchronized C6478yt mo953t() {
        C7297q.m1888e("getAdSize must be called on the main UI thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            return lp2.m9587b(this.f25006a, Collections.singletonList(h11Var.mo8068j()));
        }
        return this.f25011q.m11429K();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v */
    public final synchronized String mo952v() {
        h11 h11Var = this.f25012r;
        if (h11Var == null || h11Var.m10732d() == null) {
            return null;
        }
        return this.f25012r.m10732d().mo10772c();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w0 */
    public final synchronized InterfaceC6000lx mo949w0() {
        C7297q.m1888e("getVideoController must be called from the main thread.");
        h11 h11Var = this.f25012r;
        if (h11Var != null) {
            return h11Var.mo8069i();
        }
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w5 */
    public final synchronized boolean mo948w5(C6293tt c6293tt) {
        m10714h7(this.f25010p);
        return m10713i7(c6293tt);
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
        return this.f25009k.m12193s();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: z */
    public final synchronized InterfaceC5853hx mo944z() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue()) {
            return null;
        }
        h11 h11Var = this.f25012r;
        if (h11Var == null) {
            return null;
        }
        return h11Var.m10732d();
    }

    @Override // p168r4.ba1
    public final synchronized void zza() {
        if (this.f25007b.m6498m()) {
            C6478yt m11429K = this.f25011q.m11429K();
            h11 h11Var = this.f25012r;
            if (h11Var != null && h11Var.mo8067k() != null && this.f25011q.m11412m()) {
                m11429K = lp2.m9587b(this.f25006a, Collections.singletonList(this.f25012r.mo8067k()));
            }
            m10714h7(m11429K);
            try {
                m10713i7(this.f25011q.m11432H());
                return;
            } catch (RemoteException unused) {
                cm0.m12437f("Failed to refresh the banner ad.");
                return;
            }
        }
        this.f25007b.m6496o();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B6 */
    public final void mo993B6(InterfaceC5740ev interfaceC5740ev) {
        C7297q.m1888e("setAdListener must be called on the main UI thread.");
        this.f25007b.m6500k(interfaceC5740ev);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S1 */
    public final void mo980S1(InterfaceC5887iv interfaceC5887iv) {
        C7297q.m1888e("setAdListener must be called on the main UI thread.");
        this.f25009k.m12192v(interfaceC5887iv);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: X4 */
    public final void mo978X4(InterfaceC5742ex interfaceC5742ex) {
        C7297q.m1888e("setPaidEventListener must be called on the main UI thread.");
        this.f25009k.m12198A(interfaceC5742ex);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: j */
    public final InterfaceC3512a mo968j() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        return BinderC3514b.m18741L0(this.f25007b.m6502i());
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v4 */
    public final void mo951v4(InterfaceC5666cw interfaceC5666cw) {
        C7297q.m1888e("setAppEventListener must be called on the main UI thread.");
        this.f25009k.m12191z(interfaceC5666cw);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w */
    public final Bundle mo950w() {
        C7297q.m1888e("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    public i82(Context context, C6478yt c6478yt, String str, uk2 uk2Var, d92 d92Var) {
        this.f25006a = context;
        this.f25007b = uk2Var;
        this.f25010p = c6478yt;
        this.f25008d = str;
        this.f25009k = d92Var;
        this.f25011q = uk2Var.m6499l();
        uk2Var.m6497n(this);
    }
}
