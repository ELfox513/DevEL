package p168r4;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: r4.r23 */
/* loaded from: classes2.dex */
public abstract class r23<T> implements Iterator<T> {

    /* renamed from: a */
    public int f30425a;

    /* renamed from: b */
    public int f30426b;

    /* renamed from: d */
    public int f30427d;

    /* renamed from: k */
    public final /* synthetic */ w23 f30428k;

    public /* synthetic */ r23(w23 w23Var, u23 u23Var) {
        int i;
        this.f30428k = w23Var;
        i = w23Var.f33034p;
        this.f30425a = i;
        this.f30426b = w23Var.m5913p();
        this.f30427d = -1;
    }

    /* renamed from: a */
    public abstract T mo7623a(int i);

    /* renamed from: b */
    public final void m7622b() {
        int i;
        i = this.f30428k.f33034p;
        if (i != this.f30425a) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30426b >= 0;
    }

    @Override // java.util.Iterator
    public final T next() {
        m7622b();
        if (hasNext()) {
            int i = this.f30426b;
            this.f30427d = i;
            T mo7623a = mo7623a(i);
            this.f30426b = this.f30428k.m5912q(this.f30426b);
            return mo7623a;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        m7622b();
        if (this.f30427d >= 0) {
            z = true;
        } else {
            z = false;
        }
        z03.m4495b(z, "no calls to next() since the last call to remove()");
        this.f30425a += 32;
        w23 w23Var = this.f30428k;
        w23Var.remove(w23.m5907v(w23Var, this.f30427d));
        this.f30426b--;
        this.f30427d = -1;
    }
}
