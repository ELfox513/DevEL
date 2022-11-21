package p168r4;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* renamed from: r4.dw2 */
/* loaded from: classes2.dex */
public final class dw2 extends cw2 {
    @SuppressLint({"SetJavaScriptEnabled"})
    public dw2(WebView webView) {
        if (!webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m12296c(webView);
    }
}
