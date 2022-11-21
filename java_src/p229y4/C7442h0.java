package p229y4;

import android.annotation.TargetApi;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* renamed from: y4.h0 */
/* loaded from: classes2.dex */
public final class C7442h0 extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ C7446i0 f37169a;

    public /* synthetic */ C7442h0(C7446i0 c7446i0, C7438g0 c7438g0) {
        this.f37169a = c7446i0;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        C7467o0 c7467o0;
        c7467o0 = this.f37169a.f37183b;
        c7467o0.m1407d(i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        C7467o0 c7467o0;
        String uri = webResourceRequest.getUrl().toString();
        if (C7446i0.m1436c(this.f37169a, uri)) {
            c7467o0 = this.f37169a.f37183b;
            c7467o0.m1408c(uri);
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        C7467o0 c7467o0;
        if (C7446i0.m1436c(this.f37169a, str)) {
            c7467o0 = this.f37169a.f37183b;
            c7467o0.m1408c(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        z = this.f37169a.f37184d;
        if (!z) {
            Log.d("UserMessagingPlatform", "Wall html loaded.");
            this.f37169a.f37184d = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        C7467o0 c7467o0;
        if (C7446i0.m1436c(this.f37169a, str)) {
            c7467o0 = this.f37169a.f37183b;
            c7467o0.m1408c(str);
            return true;
        }
        return false;
    }
}
