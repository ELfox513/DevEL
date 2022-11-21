package p168r4;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import org.json.JSONObject;
/* renamed from: r4.tv2 */
/* loaded from: classes2.dex */
public final class tv2 {

    /* renamed from: a */
    public static final tv2 f32036a = new tv2();

    /* renamed from: a */
    public static tv2 m6708a() {
        return f32036a;
    }

    /* renamed from: b */
    public final void m6707b(WebView webView, JSONObject jSONObject) {
        m6702g(webView, "init", jSONObject);
    }

    /* renamed from: c */
    public final void m6706c(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        m6702g(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* renamed from: d */
    public final void m6705d(WebView webView) {
        m6702g(webView, "finishSession", new Object[0]);
    }

    /* renamed from: e */
    public final void m6704e(WebView webView, String str) {
        m6702g(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: f */
    public final void m6703f(WebView webView, float f) {
        m6702g(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: g */
    public final void m6702g(WebView webView, String str, Object... objArr) {
        String str2;
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            if (objArr.length > 0) {
                for (Object obj : objArr) {
                    if (obj == null) {
                        sb.append("\"\"");
                    } else if (obj instanceof String) {
                        String obj2 = obj.toString();
                        if (obj2.startsWith("{")) {
                            sb.append(obj2);
                        } else {
                            sb.append('\"');
                            sb.append(obj2);
                            sb.append('\"');
                        }
                    } else {
                        sb.append(obj);
                    }
                    sb.append(",");
                }
                sb.setLength(sb.length() - 1);
            }
            sb.append(")}");
            String sb2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler != null && Looper.myLooper() != handler.getLooper()) {
                handler.post(new sv2(this, webView, sb2));
                return;
            } else {
                webView.loadUrl(sb2);
                return;
            }
        }
        if (str.length() != 0) {
            str2 = "The WebView is null for ".concat(str);
        } else {
            str2 = new String("The WebView is null for ");
        }
        if (uu2.f32398a.booleanValue() && !TextUtils.isEmpty(str2)) {
            Log.i("OMIDLIB", str2);
        }
    }
}
