package p168r4;

import java.util.NoSuchElementException;
/* renamed from: r4.o13 */
/* loaded from: classes2.dex */
public abstract class o13<E> extends s53<E> {

    /* renamed from: a */
    public final int f28770a;

    /* renamed from: b */
    public int f28771b;

    public o13(int i, int i2) {
        z03.m4491f(i2, i, "index");
        this.f28770a = i;
        this.f28771b = i2;
    }

    /* renamed from: a */
    public abstract E mo8931a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f28771b < this.f28770a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f28771b > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f28771b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f28771b - 1;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f28771b;
            this.f28771b = i + 1;
            return mo8931a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f28771b - 1;
            this.f28771b = i;
            return mo8931a(i);
        }
        throw new NoSuchElementException();
    }
}
