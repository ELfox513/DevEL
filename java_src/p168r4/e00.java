package p168r4;

import java.util.HashMap;
import java.util.Map;
@Deprecated
/* renamed from: r4.e00 */
/* loaded from: classes2.dex */
public final class e00 {

    /* renamed from: a */
    public final Map<String, d00> f22711a = new HashMap();

    /* renamed from: b */
    public final h00 f22712b;

    public e00(h00 h00Var) {
        this.f22712b = h00Var;
    }

    /* renamed from: a */
    public final void m11893a(String str, d00 d00Var) {
        this.f22711a.put(str, d00Var);
    }

    /* renamed from: c */
    public final h00 m11891c() {
        return this.f22712b;
    }

    /* renamed from: b */
    public final void m11892b(String str, String str2, long j) {
        h00 h00Var = this.f22712b;
        d00 d00Var = this.f22711a.get(str2);
        String[] strArr = {str};
        if (d00Var != null) {
            h00Var.m11026b(d00Var, j, strArr);
        }
        this.f22711a.put(str, new d00(j, null, null));
    }
}
