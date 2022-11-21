package p168r4;

import java.io.Serializable;
/* renamed from: r4.l53 */
/* loaded from: classes2.dex */
public final class l53<T> extends b53<T> implements Serializable {

    /* renamed from: a */
    public final b53<? super T> f27098a;

    public l53(b53<? super T> b53Var) {
        this.f27098a = b53Var;
    }

    @Override // p168r4.b53
    /* renamed from: a */
    public final <S extends T> b53<S> mo4452a() {
        return (b53<? super T>) this.f27098a;
    }

    @Override // p168r4.b53, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f27098a.compare(t2, t);
    }

    public final int hashCode() {
        return -this.f27098a.hashCode();
    }

    public final String toString() {
        return this.f27098a.toString().concat(".reverse()");
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l53) {
            return this.f27098a.equals(((l53) obj).f27098a);
        }
        return false;
    }
}
