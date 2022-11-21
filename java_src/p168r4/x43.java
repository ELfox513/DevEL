package p168r4;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.x43 */
/* loaded from: classes2.dex */
public final class x43<K, V> extends p13<K, V> {

    /* renamed from: q */
    public final transient m13<? extends List<V>> f33449q;

    public x43(Map<K, Collection<V>> map, m13<? extends List<V>> m13Var) {
        super(map);
        this.f33449q = m13Var;
    }

    @Override // p168r4.k23
    /* renamed from: b */
    public final Set<K> mo5505b() {
        return m11003r();
    }

    @Override // p168r4.k23
    /* renamed from: e */
    public final Map<K, Collection<V>> mo5504e() {
        return m11001u();
    }

    @Override // p168r4.h23
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ Collection mo5503l() {
        return this.f33449q.zza();
    }
}
