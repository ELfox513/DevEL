package p168r4;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import p060f4.InterfaceC3512a;
/* renamed from: r4.p12 */
/* loaded from: classes2.dex */
public final class p12 implements qe0 {

    /* renamed from: a */
    public final qe0 f29311a;

    /* renamed from: b */
    public final qe0 f29312b;

    public p12(qe0 qe0Var, qe0 qe0Var2) {
        this.f29311a = qe0Var;
        this.f29312b = qe0Var2;
    }

    @Override // p168r4.qe0
    /* renamed from: U */
    public final void mo7880U(InterfaceC3512a interfaceC3512a) {
        m8519f().mo7880U(interfaceC3512a);
    }

    @Override // p168r4.qe0
    /* renamed from: a */
    public final String mo7879a(Context context) {
        return m8519f().mo7879a(context);
    }

    @Override // p168r4.qe0
    /* renamed from: c */
    public final void mo7877c(InterfaceC3512a interfaceC3512a, View view) {
        m8519f().mo7877c(interfaceC3512a, view);
    }

    @Override // p168r4.qe0
    /* renamed from: e */
    public final void mo7875e(InterfaceC3512a interfaceC3512a, View view) {
        m8519f().mo7875e(interfaceC3512a, view);
    }

    @Override // p168r4.qe0
    /* renamed from: e0 */
    public final boolean mo7874e0(Context context) {
        return m8519f().mo7874e0(context);
    }

    @Override // p168r4.qe0
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        m8519f().zzf(interfaceC3512a);
    }

    /* renamed from: f */
    public final qe0 m8519f() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31149w3)).booleanValue()) {
            return this.f29311a;
        }
        return this.f29312b;
    }

    @Override // p168r4.qe0
    /* renamed from: b */
    public final InterfaceC3512a mo7878b(String str, WebView webView, String str2, String str3, String str4, String str5, se0 se0Var, re0 re0Var, String str6) {
        return m8519f().mo7878b(str, webView, "", "javascript", str4, str5, se0Var, re0Var, str6);
    }

    @Override // p168r4.qe0
    /* renamed from: d */
    public final InterfaceC3512a mo7876d(String str, WebView webView, String str2, String str3, String str4, se0 se0Var, re0 re0Var, String str5) {
        return m8519f().mo7876d(str, webView, "", "javascript", str4, se0Var, re0Var, str5);
    }
}
