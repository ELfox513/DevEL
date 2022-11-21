package p168r4;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
/* renamed from: r4.h23 */
/* loaded from: classes2.dex */
public abstract class h23<K, V> extends k23<K, V> implements Serializable {

    /* renamed from: k */
    public transient Map<K, Collection<V>> f24413k;

    /* renamed from: p */
    public transient int f24414p;

    @Override // p168r4.k23
    /* renamed from: c */
    public final Collection<V> mo5894c() {
        return new j23(this);
    }

    @Override // p168r4.k23
    /* renamed from: d */
    public final Iterator<V> mo10110d() {
        return new q13(this);
    }

    @Override // p168r4.o43
    /* renamed from: g */
    public final int mo5892g() {
        return this.f24414p;
    }

    /* renamed from: i */
    public abstract <E> Collection<E> mo8518i(Collection<E> collection);

    /* renamed from: k */
    public abstract Collection<V> mo8517k(K k, Collection<V> collection);

    /* renamed from: l */
    public abstract Collection<V> mo5503l();

    /* renamed from: s */
    public static /* synthetic */ void m11002s(h23 h23Var, Object obj) {
        Collection<V> collection;
        Map<K, Collection<V>> map = h23Var.f24413k;
        map.getClass();
        try {
            collection = map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            collection = null;
        }
        Collection<V> collection2 = collection;
        if (collection2 != null) {
            int size = collection2.size();
            collection2.clear();
            h23Var.f24414p -= size;
        }
    }

    @Override // p168r4.o43
    /* renamed from: a */
    public final boolean mo5895a(K k, V v) {
        Collection<V> collection = this.f24413k.get(k);
        if (collection == null) {
            Collection<V> mo5503l = mo5503l();
            if (mo5503l.add(v)) {
                this.f24414p++;
                this.f24413k.put(k, mo5503l);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(v)) {
            this.f24414p++;
            return true;
        } else {
            return false;
        }
    }

    @Override // p168r4.o43
    /* renamed from: j */
    public final void mo5891j() {
        for (Collection<V> collection : this.f24413k.values()) {
            collection.clear();
        }
        this.f24413k.clear();
        this.f24414p = 0;
    }

    /* renamed from: q */
    public final List<V> m11004q(K k, List<V> list, e23 e23Var) {
        if (list instanceof RandomAccess) {
            return new z13(this, k, list, e23Var);
        }
        return new g23(this, k, list, e23Var);
    }

    /* renamed from: r */
    public final Set<K> m11003r() {
        Map<K, Collection<V>> map = this.f24413k;
        if (map instanceof NavigableMap) {
            return new y13(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new b23(this, (SortedMap) map);
        }
        return new w13(this, map);
    }

    /* renamed from: u */
    public final Map<K, Collection<V>> m11001u() {
        Map<K, Collection<V>> map = this.f24413k;
        if (map instanceof NavigableMap) {
            return new x13(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new a23(this, (SortedMap) map);
        }
        return new t13(this, map);
    }

    public h23(Map<K, Collection<V>> map) {
        if (map.isEmpty()) {
            this.f24413k = map;
            return;
        }
        throw new IllegalArgumentException();
    }
}
