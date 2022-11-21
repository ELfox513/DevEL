package p168r4;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.f80 */
/* loaded from: classes2.dex */
public final /* synthetic */ class f80 {
    /* renamed from: a */
    public static void m11599a(g80 g80Var, String str, JSONObject jSONObject) {
        g80Var.mo5081g(str, jSONObject.toString());
    }

    /* renamed from: b */
    public static void m11598b(g80 g80Var, String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        g80Var.mo5052q(sb.toString());
    }

    /* renamed from: c */
    public static void m11597c(g80 g80Var, String str, JSONObject jSONObject) {
        String str2;
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String sb2 = sb.toString();
        if (sb2.length() != 0) {
            str2 = "Dispatching AFMA event: ".concat(sb2);
        } else {
            str2 = new String("Dispatching AFMA event: ");
        }
        cm0.m12442a(str2);
        g80Var.mo5052q(sb.toString());
    }

    /* renamed from: d */
    public static void m11596d(g80 g80Var, String str, Map map) {
        try {
            g80Var.mo5091c(str, C7601t.m939d().m26338Q(map));
        } catch (JSONException unused) {
            cm0.m12437f("Could not convert parameters to JSON.");
        }
    }
}
