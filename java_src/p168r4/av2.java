package p168r4;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: r4.av2 */
/* loaded from: classes2.dex */
public final class av2 {

    /* renamed from: a */
    public final hv2 f20628a;

    /* renamed from: b */
    public final WebView f20629b;

    /* renamed from: c */
    public final List<iv2> f20630c = new ArrayList();

    /* renamed from: d */
    public final Map<String, iv2> f20631d = new HashMap();

    /* renamed from: e */
    public final String f20632e = "";

    /* renamed from: f */
    public final String f20633f;

    /* renamed from: g */
    public final bv2 f20634g;

    /* renamed from: a */
    public static av2 m12934a(hv2 hv2Var, WebView webView, String str, String str2) {
        return new av2(hv2Var, webView, null, null, str, "", bv2.HTML);
    }

    /* renamed from: b */
    public static av2 m12933b(hv2 hv2Var, WebView webView, String str, String str2) {
        return new av2(hv2Var, webView, null, null, str, "", bv2.JAVASCRIPT);
    }

    /* renamed from: c */
    public final hv2 m12932c() {
        return this.f20628a;
    }

    /* renamed from: d */
    public final List<iv2> m12931d() {
        return Collections.unmodifiableList(this.f20630c);
    }

    /* renamed from: e */
    public final Map<String, iv2> m12930e() {
        return Collections.unmodifiableMap(this.f20631d);
    }

    /* renamed from: f */
    public final WebView m12929f() {
        return this.f20629b;
    }

    /* renamed from: g */
    public final String m12928g() {
        return this.f20633f;
    }

    /* renamed from: h */
    public final String m12927h() {
        return this.f20632e;
    }

    /* renamed from: i */
    public final bv2 m12926i() {
        return this.f20634g;
    }

    public av2(hv2 hv2Var, WebView webView, String str, List<iv2> list, String str2, String str3, bv2 bv2Var) {
        this.f20628a = hv2Var;
        this.f20629b = webView;
        this.f20634g = bv2Var;
        this.f20633f = str2;
    }
}
