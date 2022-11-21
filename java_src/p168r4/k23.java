package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.k23 */
/* loaded from: classes2.dex */
public abstract class k23<K, V> implements o43<K, V> {

    /* renamed from: a */
    public transient Set<K> f26263a;

    /* renamed from: b */
    public transient Collection<V> f26264b;

    /* renamed from: d */
    public transient Map<K, Collection<V>> f26265d;

    /* renamed from: b */
    public abstract Set<K> mo5505b();

    /* renamed from: c */
    public abstract Collection<V> mo5894c();

    /* renamed from: d */
    public Iterator<V> mo10110d() {
        throw null;
    }

    /* renamed from: e */
    public abstract Map<K, Collection<V>> mo5504e();

    /* renamed from: h */
    public final Set<K> m10109h() {
        Set<K> set = this.f26263a;
        if (set == null) {
            Set<K> mo5505b = mo5505b();
            this.f26263a = mo5505b;
            return mo5505b;
        }
        return set;
    }

    public final int hashCode() {
        return mo5889t().hashCode();
    }

    @Override // p168r4.o43
    /* renamed from: n */
    public Collection<V> mo5890n() {
        Collection<V> collection = this.f26264b;
        if (collection == null) {
            Collection<V> mo5894c = mo5894c();
            this.f26264b = mo5894c;
            return mo5894c;
        }
        return collection;
    }

    @Override // p168r4.o43
    /* renamed from: t */
    public Map<K, Collection<V>> mo5889t() {
        Map<K, Collection<V>> map = this.f26265d;
        if (map == null) {
            Map<K, Collection<V>> mo5504e = mo5504e();
            this.f26265d = mo5504e;
            return mo5504e;
        }
        return map;
    }

    public final String toString() {
        return mo5889t().toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o43)) {
            return false;
        }
        return mo5889t().equals(((o43) obj).mo5889t());
    }

    /* renamed from: f */
    public boolean mo5893f(Object obj) {
        for (Collection<V> collection : mo5889t().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
