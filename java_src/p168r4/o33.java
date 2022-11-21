package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: r4.o33 */
/* loaded from: classes2.dex */
public abstract class o33<E> extends j33<E> implements List<E>, RandomAccess {

    /* renamed from: b */
    public static final s53<Object> f28840b = new m33(c53.f21396p, 0);

    /* renamed from: E */
    public static <E> l33<E> m8902E() {
        return new l33<>(4);
    }

    /* renamed from: q */
    public static <E> o33<E> m8900q() {
        return (o33<E>) c53.f21396p;
    }

    /* renamed from: r */
    public static <E> o33<E> m8899r(E e) {
        Object[] objArr = {e};
        a53.m13046a(objArr, 1);
        return m8904A(objArr, 1);
    }

    /* renamed from: s */
    public static <E> o33<E> m8898s(E e, E e2) {
        Object[] objArr = {e, e2};
        a53.m13046a(objArr, 2);
        return m8904A(objArr, 2);
    }

    /* renamed from: t */
    public static <E> o33<E> m8897t(E e, E e2, E e3) {
        Object[] objArr = {"2011", "1009", "3010"};
        a53.m13046a(objArr, 3);
        return m8904A(objArr, 3);
    }

    /* renamed from: u */
    public static <E> o33<E> m8896u(E e, E e2, E e3, E e4, E e5) {
        Object[] objArr = {e, e2, e3, e4, e5};
        a53.m13046a(objArr, 5);
        return m8904A(objArr, 5);
    }

    /* renamed from: v */
    public static <E> o33<E> m8895v(E e, E e2, E e3, E e4, E e5, E e6) {
        Object[] objArr = {e, e2, e3, e4, e5, e6};
        a53.m13046a(objArr, 6);
        return m8904A(objArr, 6);
    }

    /* renamed from: z */
    public static <E> o33<E> m8891z(Object[] objArr) {
        return m8904A(objArr, objArr.length);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // p168r4.j33
    /* renamed from: d */
    public final r53<E> mo4919d() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (v03.m6257a(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!v03.m6257a(it.next(), it2.next())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // p168r4.j33
    @Deprecated
    /* renamed from: k */
    public final o33<E> mo4918k() {
        return this;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public int mo6236m(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: A */
    public static <E> o33<E> m8904A(Object[] objArr, int i) {
        if (i == 0) {
            return (o33<E>) c53.f21396p;
        }
        return new c53(objArr, i);
    }

    /* renamed from: x */
    public static <E> o33<E> m8893x(Collection<? extends E> collection) {
        if (collection instanceof j33) {
            o33<E> mo4918k = ((j33) collection).mo4918k();
            if (mo4918k.mo9197l()) {
                Object[] array = mo4918k.toArray();
                return m8904A(array, array.length);
            }
            return mo4918k;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        a53.m13046a(array2, length);
        return m8904A(array2, length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: w */
    public static <E> o33<E> m8894w(Iterable<? extends E> iterable) {
        iterable.getClass();
        return m8893x(iterable);
    }

    /* renamed from: y */
    public static <E> o33<E> m8892y(E[] eArr) {
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        a53.m13046a(objArr, length);
        return m8904A(objArr, length);
    }

    @Override // java.util.List
    /* renamed from: B */
    public final s53<E> listIterator(int i) {
        z03.m4491f(i, size(), "index");
        if (isEmpty()) {
            return (s53<E>) f28840b;
        }
        return new m33(this, i);
    }

    @Override // java.util.List
    /* renamed from: o */
    public o33<E> subList(int i, int i2) {
        z03.m4490g(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return (o33<E>) c53.f21396p;
        }
        return new n33(this, i, i3);
    }
}
