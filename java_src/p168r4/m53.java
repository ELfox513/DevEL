package p168r4;

import java.util.AbstractSet;
import java.util.Collection;
/* renamed from: r4.m53 */
/* loaded from: classes2.dex */
public abstract class m53<E> extends AbstractSet<E> {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        return n53.m9156c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        collection.getClass();
        return super.retainAll(collection);
    }
}
