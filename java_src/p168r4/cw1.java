package p168r4;

import android.content.Context;
import android.webkit.CookieManager;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import p235z2.C7601t;
/* renamed from: r4.cw1 */
/* loaded from: classes2.dex */
public final class cw1 implements vr3<h83<String>> {

    /* renamed from: a */
    public final is3<mt2> f21922a;

    /* renamed from: b */
    public final is3<Context> f21923b;

    public cw1(is3<mt2> is3Var, is3<Context> is3Var2) {
        this.f21922a = is3Var;
        this.f21923b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        final CookieManager mo26270k = C7601t.m937f().mo26270k(this.f21923b.mo4079a());
        gt2 gt2Var = gt2.WEBVIEW_COOKIE;
        return xs2.m5027b(new Callable(mo26270k) { // from class: r4.yv1

            /* renamed from: a */
            public final CookieManager f34231a;

            {
                this.f34231a = mo26270k;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = this.f34231a;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) C5592av.m12935c().m8098c(C6225rz.f31170z0));
            }
        }, gt2Var, this.f21922a.mo4079a()).m11949h(1L, TimeUnit.SECONDS).m11951f(Exception.class, zv1.f34754a).m11948i();
    }
}
