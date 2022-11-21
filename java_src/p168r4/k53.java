package p168r4;

import java.io.Serializable;
/* renamed from: r4.k53 */
/* loaded from: classes2.dex */
public final class k53 extends b53<Comparable<?>> implements Serializable {

    /* renamed from: a */
    public static final k53 f26309a = new k53();

    @Override // p168r4.b53
    /* renamed from: a */
    public final <S extends Comparable> b53<S> mo4452a() {
        return z43.f34333a;
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }

    @Override // p168r4.b53, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }
}
