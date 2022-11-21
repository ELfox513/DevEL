package p168r4;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(11)
/* renamed from: r4.ht0 */
/* loaded from: classes2.dex */
public final class ht0 extends it0 {
    public ht0(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        super(cs0Var, c5882ip, z);
    }

    @Override // p168r4.js0, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m10548K0(webView, str, null);
    }
}
