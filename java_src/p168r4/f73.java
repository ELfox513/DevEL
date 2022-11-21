package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: r4.f73 */
/* loaded from: classes2.dex */
public final class f73<V> extends h73<V, List<V>> {
    public f73(j33<? extends h83<? extends V>> j33Var, boolean z) {
        super(j33Var, true);
        m5464T();
    }

    @Override // p168r4.h73
    /* renamed from: X */
    public final /* bridge */ /* synthetic */ Object mo10961X(List list) {
        V v;
        ArrayList m10984a = h43.m10984a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g73 g73Var = (g73) it.next();
            if (g73Var != null) {
                v = g73Var.f23930a;
            } else {
                v = null;
            }
            m10984a.add(v);
        }
        return Collections.unmodifiableList(m10984a);
    }
}
