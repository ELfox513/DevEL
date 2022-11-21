package p168r4;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: r4.b43 */
/* loaded from: classes2.dex */
public enum b43 implements Iterator<Object> {
    INSTANCE;

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
        z03.m4495b(false, "no calls to next() since the last call to remove()");
    }
}
