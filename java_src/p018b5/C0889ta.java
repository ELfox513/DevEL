package p018b5;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: b5.ta */
/* loaded from: classes2.dex */
public final class C0889ta implements Iterator<Object> {
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
