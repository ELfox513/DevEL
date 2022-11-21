package p168r4;

import android.webkit.WebView;
/* renamed from: r4.ew2 */
/* loaded from: classes2.dex */
public final class ew2 implements Runnable {

    /* renamed from: a */
    public final WebView f23194a;

    /* renamed from: b */
    public final /* synthetic */ fw2 f23195b;

    public ew2(fw2 fw2Var) {
        WebView webView;
        this.f23195b = fw2Var;
        webView = fw2Var.f23786d;
        this.f23194a = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23194a.destroy();
    }
}
