package p168r4;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import p016b3.C0497k2;
import p235z2.C7601t;
@TargetApi(11)
/* renamed from: r4.it0 */
/* loaded from: classes2.dex */
public class it0 extends js0 {
    public it0(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        super(cs0Var, c5882ip, z);
    }

    /* renamed from: K0 */
    public final WebResourceResponse m10548K0(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof cs0)) {
            cm0.m12437f("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        cs0 cs0Var = (cs0) webView;
        ej0 ej0Var = this.f26114F;
        if (ej0Var != null) {
            ej0Var.mo4697c(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.m10186c(str, map);
        }
        if (cs0Var.mo5057o0() != null) {
            cs0Var.mo5057o0().mo6999y();
        }
        if (cs0Var.mo5049r().m6018g()) {
            str2 = (String) C5592av.m12935c().m8098c(C6225rz.f30830J);
        } else if (cs0Var.mo5106T()) {
            str2 = (String) C5592av.m12935c().m8098c(C6225rz.f30822I);
        } else {
            str2 = (String) C5592av.m12935c().m8098c(C6225rz.f30814H);
        }
        C7601t.m939d();
        return C0497k2.m26326b(cs0Var.getContext(), cs0Var.mo5061n().f25171a, str2);
    }
}
