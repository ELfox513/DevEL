package p168r4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import p004a3.BinderC0073n;
import p016b3.C0497k2;
import p235z2.C7583b;
import p235z2.C7601t;
@TargetApi(11)
/* renamed from: r4.bs0 */
/* loaded from: classes2.dex */
public final class bs0 extends WebChromeClient {

    /* renamed from: a */
    public final cs0 f21201a;

    public bs0(cs0 cs0Var) {
        this.f21201a = cs0Var;
    }

    /* renamed from: a */
    public final boolean m12705a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        cs0 cs0Var;
        C7583b mo7009b;
        try {
            cs0Var = this.f21201a;
        } catch (WindowManager.BadTokenException e) {
            cm0.m12436g("Fail to display Dialog.", e);
        }
        if (cs0Var != null && cs0Var.mo5057o0() != null && this.f21201a.mo5057o0().mo7009b() != null && (mo7009b = this.f21201a.mo5057o0().mo7009b()) != null && !mo7009b.m1032b()) {
            StringBuilder sb = new StringBuilder(str.length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            mo7009b.m1031c(sb.toString());
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            builder.setView(linearLayout).setPositiveButton(17039370, new zr0(jsPromptResult, editText)).setNegativeButton(17039360, new yr0(jsPromptResult)).setOnCancelListener(new xr0(jsPromptResult)).create().show();
        } else {
            builder.setMessage(str3).setPositiveButton(17039370, new wr0(jsResult)).setNegativeButton(17039360, new vr0(jsResult)).setOnCancelListener(new ur0(jsResult)).create().show();
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        BinderC0073n mo5097Z = this.f21201a.mo5097Z();
        if (mo5097Z == null) {
            cm0.m12437f("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        mo5097Z.m27692o7(view, customViewCallback);
        mo5097Z.m27693n7(i);
    }

    /* renamed from: b */
    public static final Context m12704b(WebView webView) {
        if (!(webView instanceof cs0)) {
            return webView.getContext();
        }
        cs0 cs0Var = (cs0) webView;
        Activity mo5078h = cs0Var.mo5078h();
        if (mo5078h != null) {
            return mo5078h;
        }
        return cs0Var.getContext();
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof cs0)) {
            cm0.m12437f("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        BinderC0073n mo5097Z = ((cs0) webView).mo5097Z();
        if (mo5097Z == null) {
            cm0.m12437f("Tried to close an AdWebView not associated with an overlay.");
        } else {
            mo5097Z.m27702a();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f21201a.mo5123I0() != null) {
            webView2.setWebViewClient(this.f21201a.mo5123I0());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            C7601t.m939d();
            if (!C0497k2.m26320e(this.f21201a.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                C7601t.m939d();
                if (!C0497k2.m26320e(this.f21201a.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        BinderC0073n mo5097Z = this.f21201a.mo5097Z();
        if (mo5097Z == null) {
            cm0.m12437f("Could not get ad overlay when hiding custom view.");
        } else {
            mo5097Z.m27701b();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length());
        sb.append("JS: ");
        sb.append(message);
        sb.append(" (");
        sb.append(sourceId);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        if (sb2.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = as0.f20589a[consoleMessage.messageLevel().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3 && i != 4) {
                    if (i != 5) {
                        cm0.m12438e(sb2);
                    } else {
                        cm0.m12442a(sb2);
                    }
                } else {
                    cm0.m12438e(sb2);
                }
            } else {
                cm0.m12437f(sb2);
            }
        } else {
            cm0.m12440c(sb2);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(j + Math.min(131072L, j4), 1048576L);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return m12705a(m12704b(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return m12705a(m12704b(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return m12705a(m12704b(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return m12705a(m12704b(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = j + 131072;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
