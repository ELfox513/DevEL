package p168r4;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* renamed from: r4.ln */
/* loaded from: classes2.dex */
public final class RunnableC5990ln implements Runnable {

    /* renamed from: a */
    public final ValueCallback<String> f27269a = new C5916jn(this);

    /* renamed from: b */
    public final /* synthetic */ C5657cn f27270b;

    /* renamed from: d */
    public final /* synthetic */ WebView f27271d;

    /* renamed from: k */
    public final /* synthetic */ boolean f27272k;

    /* renamed from: p */
    public final /* synthetic */ C6065nn f27273p;

    public RunnableC5990ln(C6065nn c6065nn, C5657cn c5657cn, WebView webView, boolean z) {
        this.f27273p = c6065nn;
        this.f27270b = c5657cn;
        this.f27271d = webView;
        this.f27272k = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f27271d.getSettings().getJavaScriptEnabled()) {
            try {
                this.f27271d.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f27269a);
            } catch (Throwable unused) {
                ((C5916jn) this.f27269a).onReceiveValue("");
            }
        }
    }
}
