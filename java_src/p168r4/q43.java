package p168r4;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: r4.q43 */
/* loaded from: classes2.dex */
public final class q43 extends u43 {

    /* renamed from: a */
    public final /* synthetic */ Comparator f29970a;

    public q43(Comparator comparator) {
        this.f29970a = comparator;
    }

    @Override // p168r4.u43
    /* renamed from: a */
    public final <K, V> Map<K, Collection<V>> mo6639a() {
        return new TreeMap(this.f29970a);
    }
}
