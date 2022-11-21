package p168r4;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: r4.lr3 */
/* loaded from: classes2.dex */
public final class lr3<E> extends AbstractList<E> {

    /* renamed from: d */
    public static final mr3 f27337d = mr3.m9276b(lr3.class);

    /* renamed from: a */
    public final List<E> f27338a;

    /* renamed from: b */
    public final Iterator<E> f27339b;

    public lr3(List<E> list, Iterator<E> it) {
        this.f27338a = list;
        this.f27339b = it;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new kr3(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        if (this.f27338a.size() > i) {
            return this.f27338a.get(i);
        }
        if (this.f27339b.hasNext()) {
            this.f27338a.add(this.f27339b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        mr3 mr3Var = f27337d;
        mr3Var.mo9277a("potentially expensive size() call");
        mr3Var.mo9277a("blowup running");
        while (this.f27339b.hasNext()) {
            this.f27338a.add(this.f27339b.next());
        }
        return this.f27338a.size();
    }
}
