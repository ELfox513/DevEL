package p168r4;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: r4.g03 */
/* loaded from: classes2.dex */
public abstract class g03<T> implements Iterator<T> {

    /* renamed from: a */
    public T f23818a;

    /* renamed from: b */
    public int f23819b = 2;

    /* renamed from: a */
    public abstract T mo11010a();

    /* renamed from: b */
    public final T m11313b() {
        this.f23819b = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f23819b;
        if (i != 4) {
            int i2 = i - 1;
            if (i != 0) {
                if (i2 == 0) {
                    return true;
                }
                if (i2 != 2) {
                    this.f23819b = 4;
                    this.f23818a = mo11010a();
                    if (this.f23819b != 3) {
                        this.f23819b = 1;
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f23819b = 2;
            T t = this.f23818a;
            this.f23818a = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
