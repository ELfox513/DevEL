package p168r4;

import java.util.Comparator;
/* renamed from: r4.b53 */
/* loaded from: classes2.dex */
public abstract class b53<T> implements Comparator<T> {
    /* renamed from: b */
    public static <C extends Comparable> b53<C> m12868b() {
        return z43.f34333a;
    }

    /* renamed from: a */
    public <S extends T> b53<S> mo4452a() {
        return new l53(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    /* renamed from: c */
    public static <T> b53<T> m12867c(Comparator<T> comparator) {
        if (comparator instanceof b53) {
            return (b53) comparator;
        }
        return new y23(comparator);
    }
}
