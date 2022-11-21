package p168r4;

import java.io.Serializable;
import java.util.Comparator;
/* renamed from: r4.y23 */
/* loaded from: classes2.dex */
public final class y23<T> extends b53<T> implements Serializable {

    /* renamed from: a */
    public final Comparator<T> f33852a;

    public y23(Comparator<T> comparator) {
        comparator.getClass();
        this.f33852a = comparator;
    }

    @Override // p168r4.b53, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f33852a.compare(t, t2);
    }

    public final int hashCode() {
        return this.f33852a.hashCode();
    }

    public final String toString() {
        return this.f33852a.toString();
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y23) {
            return this.f33852a.equals(((y23) obj).f33852a);
        }
        return false;
    }
}
