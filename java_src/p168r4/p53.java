package p168r4;

import java.util.Iterator;
/* renamed from: r4.p53 */
/* loaded from: classes2.dex */
public abstract class p53<F, T> implements Iterator<T> {

    /* renamed from: a */
    public final Iterator<? extends F> f29348a;

    public p53(Iterator<? extends F> it) {
        it.getClass();
        this.f29348a = it;
    }

    /* renamed from: a */
    public abstract T mo8483a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29348a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo8483a(this.f29348a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f29348a.remove();
    }
}
