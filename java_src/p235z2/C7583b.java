package p235z2;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import p016b3.C0497k2;
import p168r4.bg0;
import p168r4.ej0;
/* renamed from: z2.b */
/* loaded from: classes.dex */
public final class C7583b {

    /* renamed from: a */
    public final Context f37541a;

    /* renamed from: b */
    public boolean f37542b;

    /* renamed from: c */
    public final ej0 f37543c;

    /* renamed from: d */
    public final bg0 f37544d = new bg0(false, Collections.emptyList());

    /* renamed from: a */
    public final void m1033a() {
        this.f37542b = true;
    }

    /* renamed from: b */
    public final boolean m1032b() {
        return !m1030d() || this.f37542b;
    }

    /* renamed from: d */
    public final boolean m1030d() {
        ej0 ej0Var = this.f37543c;
        return (ej0Var != null && ej0Var.mo4699a().f21078q) || this.f37544d.f21050a;
    }

    public C7583b(Context context, ej0 ej0Var, bg0 bg0Var) {
        this.f37541a = context;
        this.f37543c = ej0Var;
    }

    /* renamed from: c */
    public final void m1031c(String str) {
        List<String> list;
        if (!m1030d()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        ej0 ej0Var = this.f37543c;
        if (ej0Var != null) {
            ej0Var.mo4697c(str, null, 3);
            return;
        }
        bg0 bg0Var = this.f37544d;
        if (bg0Var.f21050a && (list = bg0Var.f21051b) != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    C7601t.m939d();
                    C0497k2.m26308n(this.f37541a, "", replace);
                }
            }
        }
    }
}
