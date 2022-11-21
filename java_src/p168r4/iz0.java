package p168r4;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: r4.iz0 */
/* loaded from: classes2.dex */
public final class iz0 {

    /* renamed from: a */
    public final String f25641a;

    /* renamed from: b */
    public final na0 f25642b;

    /* renamed from: c */
    public final Executor f25643c;

    /* renamed from: d */
    public oz0 f25644d;

    /* renamed from: e */
    public final u50<Object> f25645e = new fz0(this);

    /* renamed from: f */
    public final u50<Object> f25646f = new hz0(this);

    /* renamed from: g */
    public static /* synthetic */ boolean m10450g(iz0 iz0Var, Map map) {
        if (map != null) {
            String str = (String) map.get("hashCode");
            if (!TextUtils.isEmpty(str) && str.equals(iz0Var.f25641a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public final void m10454c(oz0 oz0Var) {
        this.f25642b.m9137b("/updateActiveView", this.f25645e);
        this.f25642b.m9137b("/untrackActiveViewUnit", this.f25646f);
        this.f25644d = oz0Var;
    }

    /* renamed from: d */
    public final void m10453d(cs0 cs0Var) {
        cs0Var.mo5080g0("/updateActiveView", this.f25645e);
        cs0Var.mo5080g0("/untrackActiveViewUnit", this.f25646f);
    }

    /* renamed from: e */
    public final void m10452e(cs0 cs0Var) {
        cs0Var.mo5040v0("/updateActiveView", this.f25645e);
        cs0Var.mo5040v0("/untrackActiveViewUnit", this.f25646f);
    }

    /* renamed from: f */
    public final void m10451f() {
        this.f25642b.m9136c("/updateActiveView", this.f25645e);
        this.f25642b.m9136c("/untrackActiveViewUnit", this.f25646f);
    }

    public iz0(String str, na0 na0Var, Executor executor) {
        this.f25641a = str;
        this.f25642b = na0Var;
        this.f25643c = executor;
    }
}
