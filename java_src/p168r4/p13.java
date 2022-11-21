package p168r4;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: r4.p13 */
/* loaded from: classes2.dex */
public class p13<K, V> extends h23<K, V> implements d43<K, V> {
    public p13(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.h23
    /* renamed from: i */
    public final <E> Collection<E> mo8518i(Collection<E> collection) {
        return Collections.unmodifiableList(collection);
    }

    @Override // p168r4.h23
    /* renamed from: k */
    public final Collection<V> mo8517k(K k, Collection<V> collection) {
        return m11004q(k, (List) collection, null);
    }
}
