package p168r4;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* renamed from: r4.cv1 */
/* loaded from: classes2.dex */
public final class cv1 {

    /* renamed from: a */
    public final pu1 f21707a;

    /* renamed from: b */
    public final dq1 f21708b;

    /* renamed from: c */
    public final Object f21709c = new Object();

    /* renamed from: d */
    public final List<bv1> f21710d = new ArrayList();

    /* renamed from: e */
    public boolean f21711e;

    public cv1(pu1 pu1Var, dq1 dq1Var) {
        this.f21707a = pu1Var;
        this.f21708b = dq1Var;
    }

    /* renamed from: a */
    public final void m12347a() {
        this.f21707a.m8199h(new av1(this));
    }

    /* renamed from: b */
    public final JSONArray m12346b() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f21709c) {
            if (!this.f21711e) {
                if (this.f21707a.m8194m()) {
                    m12344d(this.f21707a.m8197j());
                } else {
                    m12347a();
                    return jSONArray;
                }
            }
            for (bv1 bv1Var : this.f21710d) {
                jSONArray.put(bv1Var.m12690a());
            }
            return jSONArray;
        }
    }

    /* renamed from: d */
    public final void m12344d(List<g70> list) {
        String rd0Var;
        synchronized (this.f21709c) {
            if (this.f21711e) {
                return;
            }
            for (g70 g70Var : list) {
                List<bv1> list2 = this.f21710d;
                String str = g70Var.f23921a;
                cq1 m11994c = this.f21708b.m11994c(str);
                if (m11994c == null) {
                    rd0Var = "";
                } else {
                    rd0 rd0Var2 = m11994c.f21653b;
                    if (rd0Var2 == null) {
                        rd0Var = "";
                    } else {
                        rd0Var = rd0Var2.toString();
                    }
                }
                String str2 = rd0Var;
                boolean z = g70Var.f23922b;
                list2.add(new bv1(str, str2, z ? 1 : 0, g70Var.f23924k, g70Var.f23923d));
            }
            this.f21711e = true;
        }
    }
}
