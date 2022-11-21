package p168r4;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* renamed from: r4.j33 */
/* loaded from: classes2.dex */
public abstract class j33<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    public static final Object[] f25880a = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: d */
    public abstract r53<E> iterator();

    /* renamed from: e */
    public Object[] mo9200e() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public int mo9199g() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: i */
    int mo9198i() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public abstract boolean mo9197l();

    /* renamed from: m */
    public int mo6236m(Object[] objArr, int i) {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f25880a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        int size = size();
        int length = tArr.length;
        if (length < size) {
            Object[] mo9200e = mo9200e();
            if (mo9200e == null) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
            } else {
                return (T[]) Arrays.copyOfRange(mo9200e, mo9199g(), mo9198i(), tArr.getClass());
            }
        } else if (length > size) {
            tArr[size] = null;
        }
        mo6236m(tArr, 0);
        return tArr;
    }

    /* renamed from: k */
    public o33<E> mo4918k() {
        if (isEmpty()) {
            return o33.m8900q();
        }
        return o33.m8891z(toArray(f25880a));
    }
}
