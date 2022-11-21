package p168r4;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* renamed from: r4.g43 */
/* loaded from: classes2.dex */
public final class g43<F, T> extends AbstractSequentialList<T> implements Serializable {

    /* renamed from: a */
    public final List<F> f23874a;

    /* renamed from: b */
    public final p03<? super F, ? extends T> f23875b;

    public g43(List<F> list, p03<? super F, ? extends T> p03Var) {
        this.f23874a = list;
        this.f23875b = p03Var;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f23874a.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int i) {
        return new e43(this, this.f23874a.listIterator(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23874a.size();
    }
}
