package p168r4;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: r4.dq1 */
/* loaded from: classes2.dex */
public final class dq1 {

    /* renamed from: a */
    public final Map<String, cq1> f22407a = new HashMap();

    /* renamed from: a */
    public final synchronized void m11996a(String str, zp2 zp2Var) {
        if (this.f22407a.containsKey(str)) {
            return;
        }
        try {
            this.f22407a.put(str, new cq1(str, zp2Var.m4144C(), zp2Var.m4143a()));
        } catch (mp2 unused) {
        }
    }

    /* renamed from: b */
    public final synchronized void m11995b(String str, ed0 ed0Var) {
        if (this.f22407a.containsKey(str)) {
            return;
        }
        try {
            this.f22407a.put(str, new cq1(str, ed0Var.mo8351d(), ed0Var.mo8349g()));
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public final synchronized cq1 m11994c(String str) {
        return this.f22407a.get(str);
    }

    /* renamed from: d */
    public final cq1 m11993d(List<String> list) {
        for (String str : list) {
            cq1 m11994c = m11994c(str);
            if (m11994c != null) {
                return m11994c;
            }
        }
        return null;
    }
}
