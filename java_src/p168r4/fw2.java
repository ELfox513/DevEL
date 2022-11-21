package p168r4;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: r4.fw2 */
/* loaded from: classes2.dex */
public final class fw2 extends cw2 {

    /* renamed from: d */
    public WebView f23786d;

    /* renamed from: e */
    public Long f23787e = null;

    /* renamed from: f */
    public final Map<String, iv2> f23788f;

    public fw2(Map<String, iv2> map, String str) {
        this.f23788f = map;
    }

    @Override // p168r4.cw2
    /* renamed from: a */
    public final void mo11337a() {
        WebView webView = new WebView(rv2.m7319a().m7318b());
        this.f23786d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m12296c(this.f23786d);
        WebView webView2 = this.f23786d;
        if (webView2 != null && !TextUtils.isEmpty(null)) {
            webView2.loadUrl("javascript: null");
        }
        Iterator<String> it = this.f23788f.keySet().iterator();
        if (!it.hasNext()) {
            this.f23787e = Long.valueOf(System.nanoTime());
            return;
        }
        this.f23788f.get(it.next());
        throw null;
    }

    @Override // p168r4.cw2
    /* renamed from: h */
    public final void mo11335h(cv2 cv2Var, av2 av2Var) {
        JSONObject jSONObject = new JSONObject();
        Map<String, iv2> m12930e = av2Var.m12930e();
        for (String str : m12930e.keySet()) {
            gw2.m11044c(jSONObject, str, m12930e.get(str));
        }
        m12291i(cv2Var, av2Var, jSONObject);
    }

    @Override // p168r4.cw2
    /* renamed from: b */
    public final void mo11336b() {
        long convert;
        super.mo11336b();
        if (this.f23787e == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f23787e.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new ew2(this), Math.max(4000 - convert, 2000L));
        this.f23786d = null;
    }
}
