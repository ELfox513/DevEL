package p235z2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import java.util.Map;
import java.util.concurrent.Future;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.AbstractBinderC6332uv;
import p168r4.C5739eu;
import p168r4.C5815gw;
import p168r4.C6149px;
import p168r4.C6293tt;
import p168r4.C6300u;
import p168r4.C6337v;
import p168r4.C6446xy;
import p168r4.C6478yt;
import p168r4.C6479yu;
import p168r4.InterfaceC5666cw;
import p168r4.InterfaceC5740ev;
import p168r4.InterfaceC5742ex;
import p168r4.InterfaceC5807go;
import p168r4.InterfaceC5853hx;
import p168r4.InterfaceC5887iv;
import p168r4.InterfaceC5962kw;
import p168r4.InterfaceC5998lv;
import p168r4.InterfaceC6000lx;
import p168r4.InterfaceC6517zv;
import p168r4.cm0;
import p168r4.ff0;
import p168r4.im0;
import p168r4.kf0;
import p168r4.lh0;
import p168r4.n00;
import p168r4.qm0;
import p168r4.vl0;
import p168r4.w00;
import p220x3.C7297q;
/* renamed from: z2.s */
/* loaded from: classes.dex */
public final class BinderC7600s extends AbstractBinderC6332uv {

    /* renamed from: a */
    public final im0 f37585a;

    /* renamed from: b */
    public final C6478yt f37586b;

    /* renamed from: d */
    public final Future<C6300u> f37587d = qm0.f30190a.mo8015c(new CallableC7596o(this));

    /* renamed from: k */
    public final Context f37588k;

    /* renamed from: p */
    public final C7599r f37589p;

    /* renamed from: q */
    public WebView f37590q;

    /* renamed from: r */
    public InterfaceC5887iv f37591r;

    /* renamed from: s */
    public C6300u f37592s;

    /* renamed from: t */
    public AsyncTask<Void, Void, String> f37593t;

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: A0 */
    public final void mo996A0(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B */
    public final String mo995B() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B2 */
    public final void mo994B2(ff0 ff0Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: B6 */
    public final void mo993B6(InterfaceC5740ev interfaceC5740ev) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: C1 */
    public final void mo992C1(n00 n00Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: D1 */
    public final void mo991D1(C5739eu c5739eu) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: E5 */
    public final void mo990E5(kf0 kf0Var, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: G1 */
    public final void mo989G1(lh0 lh0Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: H6 */
    public final void mo988H6(InterfaceC6517zv interfaceC6517zv) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: I */
    public final boolean mo987I() {
        return false;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: J4 */
    public final void mo986J4(boolean z) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L */
    public final InterfaceC5887iv mo985L() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: L1 */
    public final void mo984L1(InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: P */
    public final String mo983P() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Q5 */
    public final void mo982Q5(C6293tt c6293tt, InterfaceC5998lv interfaceC5998lv) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S0 */
    public final void mo981S0(C6478yt c6478yt) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S1 */
    public final void mo980S1(InterfaceC5887iv interfaceC5887iv) {
        this.f37591r = interfaceC5887iv;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: S5 */
    public final void mo979S5(C6149px c6149px) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: X4 */
    public final void mo978X4(InterfaceC5742ex interfaceC5742ex) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Y1 */
    public final void mo977Y1(InterfaceC5807go interfaceC5807go) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: Z1 */
    public final void mo976Z1(C6446xy c6446xy) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h4 */
    public final void mo972h4(C5815gw c5815gw) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: i */
    public final boolean mo970i() {
        return false;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: l */
    public final void mo965l() {
        C7297q.m1888e("pause must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: n */
    public final void mo962n() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: p */
    public final void mo959p() {
        C7297q.m1888e("resume must be called on the main UI thread.");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: r */
    public final void mo956r() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: s5 */
    public final void mo954s5(InterfaceC5962kw interfaceC5962kw) {
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: t */
    public final C6478yt mo953t() {
        return this.f37586b;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v */
    public final String mo952v() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: v4 */
    public final void mo951v4(InterfaceC5666cw interfaceC5666cw) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w */
    public final Bundle mo950w() {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w0 */
    public final InterfaceC6000lx mo949w0() {
        return null;
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x1 */
    public final void mo947x1(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: x3 */
    public final void mo946x3(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: y */
    public final InterfaceC5666cw mo945y() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: z */
    public final InterfaceC5853hx mo944z() {
        return null;
    }

    /* renamed from: j7 */
    public static /* synthetic */ String m967j7(BinderC7600s binderC7600s, String str) {
        if (binderC7600s.f37592s != null) {
            Uri parse = Uri.parse(str);
            try {
                parse = binderC7600s.f37592s.m6680e(parse, binderC7600s.f37588k, null, null);
            } catch (C6337v e) {
                cm0.m12436g("Unable to process ad data", e);
            }
            return parse.toString();
        }
        return str;
    }

    /* renamed from: k7 */
    public static /* synthetic */ void m966k7(BinderC7600s binderC7600s, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        binderC7600s.f37588k.startActivity(intent);
    }

    /* renamed from: g7 */
    public final void m974g7(int i) {
        if (this.f37590q == null) {
            return;
        }
        this.f37590q.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: h */
    public final void mo973h() {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        this.f37593t.cancel(true);
        this.f37587d.cancel(true);
        this.f37590q.destroy();
        this.f37590q = null;
    }

    /* renamed from: h7 */
    public final String m971h7() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(w00.f33002d.m6673e());
        builder.appendQueryParameter("query", this.f37589p.m1001b());
        builder.appendQueryParameter("pubId", this.f37589p.m1000c());
        builder.appendQueryParameter("mappver", this.f37589p.m999d());
        Map<String, String> m998e = this.f37589p.m998e();
        for (String str : m998e.keySet()) {
            builder.appendQueryParameter(str, m998e.get(str));
        }
        Uri build = builder.build();
        C6300u c6300u = this.f37592s;
        if (c6300u != null) {
            try {
                build = c6300u.m6682c(build, this.f37588k);
            } catch (C6337v e) {
                cm0.m12436g("Unable to process ad data", e);
            }
        }
        String m969i7 = m969i7();
        String encodedQuery = build.getEncodedQuery();
        StringBuilder sb = new StringBuilder(m969i7.length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(m969i7);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    /* renamed from: i7 */
    public final String m969i7() {
        String m1002a = this.f37589p.m1002a();
        if (true == TextUtils.isEmpty(m1002a)) {
            m1002a = "www.google.com";
        }
        String m6673e = w00.f33002d.m6673e();
        StringBuilder sb = new StringBuilder(String.valueOf(m1002a).length() + 8 + String.valueOf(m6673e).length());
        sb.append("https://");
        sb.append(m1002a);
        sb.append(m6673e);
        return sb.toString();
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: j */
    public final InterfaceC3512a mo968j() {
        C7297q.m1888e("getAdFrame must be called on the main UI thread.");
        return BinderC3514b.m18741L0(this.f37590q);
    }

    @Override // p168r4.InterfaceC6369vv
    /* renamed from: w5 */
    public final boolean mo948w5(C6293tt c6293tt) {
        C7297q.m1882k(this.f37590q, "This Search Ad has already been torn down");
        this.f37589p.m997f(c6293tt, this.f37585a);
        this.f37593t = new AsyncTaskC7597p(this, null).execute(new Void[0]);
        return true;
    }

    public BinderC7600s(Context context, C6478yt c6478yt, String str, im0 im0Var) {
        this.f37588k = context;
        this.f37585a = im0Var;
        this.f37586b = c6478yt;
        this.f37590q = new WebView(context);
        this.f37589p = new C7599r(context, str);
        m974g7(0);
        this.f37590q.setVerticalScrollBarEnabled(false);
        this.f37590q.getSettings().setJavaScriptEnabled(true);
        this.f37590q.setWebViewClient(new C7594m(this));
        this.f37590q.setOnTouchListener(new View$OnTouchListenerC7595n(this));
    }

    /* renamed from: f7 */
    public final int m975f7(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            C6479yu.m4568a();
            return vl0.m6111q(this.f37588k, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }
}
