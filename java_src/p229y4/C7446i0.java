package p229y4;

import android.os.Handler;
import android.webkit.WebView;
/* renamed from: y4.i0 */
/* loaded from: classes2.dex */
public final class C7446i0 extends WebView {

    /* renamed from: a */
    public final Handler f37182a;

    /* renamed from: b */
    public final C7467o0 f37183b;

    /* renamed from: d */
    public boolean f37184d;

    public C7446i0(C7454k0 c7454k0, Handler handler, C7467o0 c7467o0) {
        super(c7454k0);
        this.f37184d = false;
        this.f37182a = handler;
        this.f37183b = c7467o0;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m1436c(C7446i0 c7446i0, String str) {
        return str != null && str.startsWith("consent://");
    }

    /* renamed from: b */
    public final void m1437b(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        final String sb2 = sb.toString();
        this.f37182a.post(new Runnable() { // from class: y4.f0
            @Override // java.lang.Runnable
            public final void run() {
                C7443h1.m1440a(C7446i0.this, sb2);
            }
        });
    }
}
