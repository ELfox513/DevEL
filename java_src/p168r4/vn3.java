package p168r4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.vn3 */
/* loaded from: classes2.dex */
public final class vn3 {
    /* renamed from: b */
    public static final boolean m6057b(Object obj) {
        return !((un3) obj).m6468h();
    }

    /* renamed from: a */
    public static final int m6058a(int i, Object obj, Object obj2) {
        un3 un3Var = (un3) obj;
        tn3 tn3Var = (tn3) obj2;
        if (!un3Var.isEmpty()) {
            Iterator it = un3Var.entrySet().iterator();
            if (!it.hasNext()) {
                return 0;
            }
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }

    /* renamed from: c */
    public static final Object m6056c(Object obj, Object obj2) {
        un3 un3Var = (un3) obj;
        un3 un3Var2 = (un3) obj2;
        if (!un3Var2.isEmpty()) {
            if (!un3Var.m6468h()) {
                un3Var = un3Var.m6470c();
            }
            un3Var.m6471b(un3Var2);
        }
        return un3Var;
    }
}
