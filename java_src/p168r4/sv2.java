package p168r4;

import android.webkit.WebView;
/* renamed from: r4.sv2 */
/* loaded from: classes2.dex */
public final class sv2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ WebView f31527a;

    /* renamed from: b */
    public final /* synthetic */ String f31528b;

    public sv2(tv2 tv2Var, WebView webView, String str) {
        this.f31527a = webView;
        this.f31528b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31527a.loadUrl(this.f31528b);
    }
}
