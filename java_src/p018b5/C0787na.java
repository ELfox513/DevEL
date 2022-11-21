package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: b5.na */
/* loaded from: classes2.dex */
public final class C0787na<E> extends AbstractC0665g7<E> implements RandomAccess {

    /* renamed from: k */
    public static final C0787na<Object> f2060k;

    /* renamed from: b */
    public E[] f2061b;

    /* renamed from: d */
    public int f2062d;

    public C0787na(E[] eArr, int i) {
        this.f2061b = eArr;
        this.f2062d = i;
    }

    /* renamed from: e */
    public static <E> C0787na<E> m25575e() {
        return (C0787na<E>) f2060k;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m25927d();
        if (i >= 0 && i <= (i2 = this.f2062d)) {
            E[] eArr = this.f2061b;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
                System.arraycopy(eArr, 0, eArr2, 0, i);
                System.arraycopy(this.f2061b, i, eArr2, i + 1, this.f2062d - i);
                this.f2061b = eArr2;
            }
            this.f2061b[i] = e;
            this.f2062d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m25574g(i));
    }

    /* renamed from: g */
    public final String m25574g(int i) {
        int i2 = this.f2062d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: i */
    public final void m25573i(int i) {
        if (i < 0 || i >= this.f2062d) {
            throw new IndexOutOfBoundsException(m25574g(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2062d;
    }

    static {
        C0787na<Object> c0787na = new C0787na<>(new Object[0], 0);
        f2060k = c0787na;
        c0787na.mo25929a();
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: p0 */
    public final /* bridge */ /* synthetic */ InterfaceC0633e9 mo24861p0(int i) {
        if (i >= this.f2062d) {
            return new C0787na(Arrays.copyOf(this.f2061b, i), this.f2062d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m25573i(i);
        return this.f2061b[i];
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        int i2;
        m25927d();
        m25573i(i);
        E[] eArr = this.f2061b;
        E e = eArr[i];
        if (i < this.f2062d - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f2062d--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m25927d();
        m25573i(i);
        E[] eArr = this.f2061b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m25927d();
        int i = this.f2062d;
        E[] eArr = this.f2061b;
        if (i == eArr.length) {
            this.f2061b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f2061b;
        int i2 = this.f2062d;
        this.f2062d = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }
}
