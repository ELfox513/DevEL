package p168r4;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(21)
/* renamed from: r4.jt0 */
/* loaded from: classes2.dex */
public final class jt0 extends it0 {
    public jt0(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        super(cs0Var, c5882ip, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            return m10548K0(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
        }
        return null;
    }
}
