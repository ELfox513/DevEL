package p168r4;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import p235z2.C7601t;
/* renamed from: r4.b71 */
/* loaded from: classes2.dex */
public final class b71 extends AbstractBinderC5816gx {

    /* renamed from: a */
    public final String f20881a;

    /* renamed from: b */
    public final String f20882b;

    /* renamed from: d */
    public final List<C5664cu> f20883d;

    /* renamed from: k */
    public final long f20884k;

    /* renamed from: p */
    public final String f20885p;

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: c */
    public final String mo10772c() {
        return this.f20881a;
    }

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: d */
    public final String mo10771d() {
        return this.f20882b;
    }

    /* renamed from: f7 */
    public final long m12861f7() {
        return this.f20884k;
    }

    /* renamed from: g7 */
    public final String m12860g7() {
        return this.f20885p;
    }

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: g */
    public final List<C5664cu> mo10770g() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue()) {
            return null;
        }
        return this.f20883d;
    }

    public b71(no2 no2Var, String str, v12 v12Var, so2 so2Var) {
        String str2;
        String str3;
        String str4 = null;
        if (no2Var == null) {
            str2 = null;
        } else {
            str2 = no2Var.f28401X;
        }
        this.f20882b = str2;
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                str4 = no2Var.f28435v.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.f20881a = str4 != null ? str4 : str;
        this.f20883d = v12Var.m6247e();
        this.f20884k = C7601t.m932k().mo24763a() / 1000;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30813G6)).booleanValue() && so2Var != null && !TextUtils.isEmpty(so2Var.f31432h)) {
            str3 = so2Var.f31432h;
        } else {
            str3 = "";
        }
        this.f20885p = str3;
    }
}
