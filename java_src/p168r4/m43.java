package p168r4;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.m43 */
/* loaded from: classes2.dex */
public abstract class m43<K, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public transient Set<Map.Entry<K, V>> f27490a;

    /* renamed from: b */
    public transient Collection<V> f27491b;

    /* renamed from: a */
    public abstract Set<Map.Entry<K, V>> mo6934a();

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f27490a;
        if (set == null) {
            Set<Map.Entry<K, V>> mo6934a = mo6934a();
            this.f27490a = mo6934a;
            return mo6934a;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f27491b;
        if (collection == null) {
            l43 l43Var = new l43(this);
            this.f27491b = l43Var;
            return l43Var;
        }
        return collection;
    }
}
