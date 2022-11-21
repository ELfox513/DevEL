package p168r4;

import java.util.ListIterator;
/* renamed from: r4.q53 */
/* loaded from: classes2.dex */
public abstract class q53<F, T> extends p53<F, T> implements ListIterator<T> {
    public q53(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override // java.util.ListIterator
    public final void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f29348a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f29348a).nextIndex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) mo8483a(((ListIterator) this.f29348a).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f29348a).previousIndex();
    }
}
