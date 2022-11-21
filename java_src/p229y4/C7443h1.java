package p229y4;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.WebView;
/* renamed from: y4.h1 */
/* loaded from: classes2.dex */
public final class C7443h1 {

    /* renamed from: a */
    public static Boolean f37170a;

    @TargetApi(19)
    /* renamed from: a */
    public static void m1440a(WebView webView, String str) {
        String str2;
        boolean booleanValue;
        if (Build.VERSION.SDK_INT >= 19) {
            synchronized (C7443h1.class) {
                if (f37170a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f37170a = Boolean.TRUE;
                    } catch (IllegalStateException unused) {
                        f37170a = Boolean.FALSE;
                    }
                }
                booleanValue = f37170a.booleanValue();
            }
            if (booleanValue) {
                webView.evaluateJavascript(str, null);
                return;
            }
        }
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "javascript:".concat(valueOf);
        } else {
            str2 = new String("javascript:");
        }
        webView.loadUrl(str2);
    }
}
