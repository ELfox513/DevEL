package p168r4;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: r4.po3 */
/* loaded from: classes2.dex */
public final class po3 implements Iterator<gl3> {

    /* renamed from: a */
    public final ArrayDeque<qo3> f29546a;

    /* renamed from: b */
    public gl3 f29547b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29547b != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public final gl3 next() {
        gl3 gl3Var;
        ll3 ll3Var;
        gl3 gl3Var2 = this.f29547b;
        if (gl3Var2 != null) {
            do {
                ArrayDeque<qo3> arrayDeque = this.f29546a;
                gl3Var = null;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    break;
                }
                ll3Var = this.f29546a.pop().f30247r;
                gl3Var = m8228b(ll3Var);
            } while (gl3Var.m9634G());
            this.f29547b = gl3Var;
            return gl3Var2;
        }
        throw new NoSuchElementException();
    }

    /* renamed from: b */
    public final gl3 m8228b(ll3 ll3Var) {
        while (ll3Var instanceof qo3) {
            qo3 qo3Var = (qo3) ll3Var;
            this.f29546a.push(qo3Var);
            ll3Var = qo3Var.f30246q;
        }
        return (gl3) ll3Var;
    }

    public /* synthetic */ po3(ll3 ll3Var, oo3 oo3Var) {
        ll3 ll3Var2;
        if (ll3Var instanceof qo3) {
            qo3 qo3Var = (qo3) ll3Var;
            ArrayDeque<qo3> arrayDeque = new ArrayDeque<>(qo3Var.mo7745s());
            this.f29546a = arrayDeque;
            arrayDeque.push(qo3Var);
            ll3Var2 = qo3Var.f30246q;
            this.f29547b = m8228b(ll3Var2);
            return;
        }
        this.f29546a = null;
        this.f29547b = (gl3) ll3Var;
    }
}
