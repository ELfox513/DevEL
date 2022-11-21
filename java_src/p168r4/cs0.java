package p168r4;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import p004a3.BinderC0073n;
import p026c4.InterfaceC1055p;
import p060f4.InterfaceC3512a;
import p235z2.C7582a;
import p235z2.InterfaceC7593l;
/* renamed from: r4.cs0 */
/* loaded from: classes2.dex */
public interface cs0 extends InterfaceC5812gt, cf1, tr0, e80, bt0, gt0, s80, InterfaceC6064nm, kt0, InterfaceC7593l, nt0, ot0, po0, pt0 {
    /* renamed from: B0 */
    InterfaceC3512a mo5135B0();

    /* renamed from: C */
    b20 mo5134C();

    @Override // p168r4.po0
    /* renamed from: D */
    void mo5132D(String str, qq0 qq0Var);

    /* renamed from: D0 */
    Context mo5131D0();

    /* renamed from: E */
    void mo5130E();

    /* renamed from: F */
    InterfaceC5622bo mo5129F();

    @Override // p168r4.tr0
    /* renamed from: G */
    no2 mo5128G();

    /* renamed from: G0 */
    boolean mo5127G0();

    @Override // p168r4.nt0
    /* renamed from: H */
    C6300u mo5126H();

    @Override // p168r4.pt0
    /* renamed from: I */
    View mo5124I();

    /* renamed from: I0 */
    WebViewClient mo5123I0();

    /* renamed from: J */
    WebView mo5122J();

    @Override // p168r4.po0
    /* renamed from: K */
    void mo5121K(at0 at0Var);

    /* renamed from: L0 */
    void mo5118L0(no2 no2Var, so2 so2Var);

    @Override // p168r4.bt0
    /* renamed from: M */
    so2 mo5117M();

    /* renamed from: O */
    void mo5115O();

    /* renamed from: O0 */
    boolean mo5114O0();

    /* renamed from: P */
    String mo5113P();

    /* renamed from: P0 */
    void mo5112P0(boolean z);

    /* renamed from: R */
    void mo5110R();

    /* renamed from: R0 */
    void mo5109R0(b20 b20Var);

    /* renamed from: T */
    boolean mo5106T();

    /* renamed from: U0 */
    boolean mo5104U0();

    /* renamed from: V0 */
    void mo5103V0(boolean z);

    /* renamed from: W */
    h83<String> mo5102W();

    /* renamed from: W0 */
    void mo5101W0();

    /* renamed from: X */
    void mo5100X();

    /* renamed from: X0 */
    void mo5099X0(BinderC0073n binderC0073n);

    /* renamed from: Y0 */
    void mo5098Y0(boolean z);

    /* renamed from: Z */
    BinderC0073n mo5097Z();

    /* renamed from: a0 */
    void mo5095a0(boolean z);

    /* renamed from: a1 */
    void mo5094a1(String str, InterfaceC1055p<u50<? super cs0>> interfaceC1055p);

    /* renamed from: b1 */
    boolean mo5092b1();

    /* renamed from: c1 */
    void mo5089c1(String str, String str2, String str3);

    boolean canGoBack();

    /* renamed from: d1 */
    void mo5087d1(BinderC0073n binderC0073n);

    void destroy();

    @Override // p168r4.po0
    /* renamed from: f */
    at0 mo5084f();

    /* renamed from: f0 */
    boolean mo5083f0();

    /* renamed from: g0 */
    void mo5080g0(String str, u50<? super cs0> u50Var);

    @Override // p168r4.gt0, p168r4.po0
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    @Override // p168r4.gt0, p168r4.po0
    /* renamed from: h */
    Activity mo5078h();

    /* renamed from: h0 */
    void mo5077h0(y10 y10Var);

    @Override // p168r4.po0
    /* renamed from: i */
    C7582a mo5075i();

    /* renamed from: k0 */
    void mo5069k0();

    /* renamed from: l0 */
    void mo5066l0(boolean z);

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    @Override // p168r4.po0
    /* renamed from: m */
    e00 mo5064m();

    void measure(int i, int i2);

    @Override // p168r4.ot0, p168r4.po0
    /* renamed from: n */
    im0 mo5061n();

    /* renamed from: o0 */
    st0 mo5057o0();

    void onPause();

    void onResume();

    /* renamed from: p0 */
    void mo5054p0(boolean z);

    /* renamed from: q0 */
    void mo5051q0(Context context);

    @Override // p168r4.mt0
    /* renamed from: r */
    vt0 mo5049r();

    @Override // p168r4.po0
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    /* renamed from: t */
    void mo5046t();

    /* renamed from: t0 */
    boolean mo5045t0(boolean z, int i);

    /* renamed from: u0 */
    void mo5043u0(vt0 vt0Var);

    /* renamed from: v0 */
    void mo5040v0(String str, u50<? super cs0> u50Var);

    /* renamed from: w */
    void mo5038w(int i);

    /* renamed from: w0 */
    void mo5037w0();

    /* renamed from: x */
    BinderC0073n mo5035x();

    /* renamed from: x0 */
    void mo5034x0(int i);

    /* renamed from: y0 */
    void mo5032y0(InterfaceC3512a interfaceC3512a);

    /* renamed from: z0 */
    void mo5029z0(InterfaceC5622bo interfaceC5622bo);
}
