package p168r4;

import java.io.Serializable;
/* renamed from: r4.z43 */
/* loaded from: classes2.dex */
public final class z43 extends b53<Comparable<?>> implements Serializable {

    /* renamed from: a */
    public static final z43 f34333a = new z43();

    @Override // p168r4.b53
    /* renamed from: a */
    public final <S extends Comparable> b53<S> mo4452a() {
        return k53.f26309a;
    }

    public final String toString() {
        return "Ordering.natural()";
    }

    @Override // p168r4.b53, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }
}
