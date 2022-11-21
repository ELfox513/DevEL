package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p168r4.gt0;
import p168r4.nt0;
import p168r4.pt0;
@TargetApi(17)
/* renamed from: r4.ft0 */
/* loaded from: classes2.dex */
public final class ft0<WebViewT extends gt0 & nt0 & pt0> {

    /* renamed from: a */
    public final et0 f23664a;

    /* renamed from: b */
    public final WebViewT f23665b;

    public ft0(WebViewT webviewt, et0 et0Var) {
        this.f23664a = et0Var;
        this.f23665b = webviewt;
    }

    /* renamed from: a */
    public final /* synthetic */ void m11367a(String str) {
        this.f23664a.mo11687a(Uri.parse(str));
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            C0543w1.m26251k("Click string is empty, not proceeding.");
            return "";
        }
        C6300u mo5126H = this.f23665b.mo5126H();
        if (mo5126H == null) {
            C0543w1.m26251k("Signal utils is empty, ignoring.");
            return "";
        }
        InterfaceC6152q m6683b = mo5126H.m6683b();
        if (m6683b == null) {
            C0543w1.m26251k("Signals object is empty, ignoring.");
            return "";
        } else if (this.f23665b.getContext() == null) {
            C0543w1.m26251k("Context is null, ignoring.");
            return "";
        } else {
            Context context = this.f23665b.getContext();
            WebViewT webviewt = this.f23665b;
            return m6683b.mo1016e(context, str, (View) webviewt, webviewt.mo5078h());
        }
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            cm0.m12437f("URL is empty, ignoring message");
        } else {
            C0497k2.f1630i.post(new Runnable(this, str) { // from class: r4.dt0

                /* renamed from: a */
                public final ft0 f22422a;

                /* renamed from: b */
                public final String f22423b;

                {
                    this.f22422a = this;
                    this.f22423b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22422a.m11367a(this.f22423b);
                }
            });
        }
    }
}
