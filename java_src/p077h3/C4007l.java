package p077h3;

import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;
import p086i3.AbstractC4125c;
import p086i3.C4124b;
import p168r4.cm0;
/* renamed from: h3.l */
/* loaded from: classes.dex */
public final class C4007l extends AbstractC4125c {

    /* renamed from: a */
    public final /* synthetic */ String f17484a;

    /* renamed from: b */
    public final /* synthetic */ C3985a f17485b;

    public C4007l(C3985a c3985a, String str) {
        this.f17485b = c3985a;
        this.f17484a = str;
    }

    @Override // p086i3.AbstractC4125c
    /* renamed from: a */
    public final void mo17327a(String str) {
        String str2;
        WebView webView;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Failed to generate query info for the tagging library, error: ".concat(valueOf);
        } else {
            str2 = new String("Failed to generate query info for the tagging library, error: ");
        }
        cm0.m12437f(str2);
        String format = String.format("window.postMessage({'paw_id': '%1$s', 'error': '%2$s'}, '*');", this.f17484a, str);
        webView = this.f17485b.f17415b;
        webView.evaluateJavascript(format, null);
    }

    @Override // p086i3.AbstractC4125c
    /* renamed from: b */
    public final void mo17326b(C4124b c4124b) {
        String format;
        WebView webView;
        String m17328b = c4124b.m17328b();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.f17484a);
            jSONObject.put("signal", m17328b);
            format = String.format("window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            format = String.format("window.postMessage({'paw_id': '%1$s', 'signal': '%2$s'}, '*');", this.f17484a, c4124b.m17328b());
        }
        webView = this.f17485b.f17415b;
        webView.evaluateJavascript(format, null);
    }
}
