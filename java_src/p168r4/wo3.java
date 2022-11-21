package p168r4;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: r4.wo3 */
/* loaded from: classes2.dex */
public final class wo3 implements Iterator<Object> {
    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
