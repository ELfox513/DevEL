package p168r4;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
/* renamed from: r4.j43 */
/* loaded from: classes2.dex */
public abstract class j43<K, V> extends m53<Map.Entry<K, V>> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        mo7626d().clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    /* renamed from: d */
    public abstract Map<K, V> mo7626d();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return mo7626d().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return mo7626d().size();
    }

    @Override // p168r4.m53, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        collection.getClass();
        try {
            return n53.m9156c(this, collection);
        } catch (UnsupportedOperationException unused) {
            return n53.m9157b(this, collection.iterator());
        }
    }

    @Override // p168r4.m53, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        int i;
        collection.getClass();
        try {
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            int size = collection.size();
            if (size < 3) {
                m23.m9513b(size, "expectedSize");
                i = size + 1;
            } else if (size < 1073741824) {
                i = (int) ((size / 0.75f) + 1.0f);
            } else {
                i = Integer.MAX_VALUE;
            }
            HashSet hashSet = new HashSet(i);
            for (Object obj : collection) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    hashSet.add(((Map.Entry) obj).getKey());
                }
            }
            return mo7626d().keySet().retainAll(hashSet);
        }
    }
}
