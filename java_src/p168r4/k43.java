package p168r4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.k43 */
/* loaded from: classes2.dex */
public class k43<K, V> extends m53<K> {

    /* renamed from: a */
    public final Map<K, V> f26289a;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f26289a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f26289a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<K> iterator() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f26289a.size();
    }

    public k43(Map<K, V> map) {
        map.getClass();
        this.f26289a = map;
    }
}
