package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: r4.jo3 */
/* loaded from: classes2.dex */
public final class jo3<E> extends vk3<E> implements RandomAccess {

    /* renamed from: k */
    public static final jo3<Object> f26088k;

    /* renamed from: b */
    public E[] f26089b;

    /* renamed from: d */
    public int f26090d;

    public jo3(E[] eArr, int i) {
        this.f26089b = eArr;
        this.f26090d = i;
    }

    /* renamed from: e */
    public static <E> jo3<E> m10229e() {
        return (jo3<E>) f26088k;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m6129d();
        if (i >= 0 && i <= (i2 = this.f26090d)) {
            E[] eArr = this.f26089b;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
                System.arraycopy(eArr, 0, eArr2, 0, i);
                System.arraycopy(this.f26089b, i, eArr2, i + 1, this.f26090d - i);
                this.f26089b = eArr2;
            }
            this.f26089b[i] = e;
            this.f26090d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m10227i(i));
    }

    /* renamed from: g */
    public final void m10228g(int i) {
        if (i < 0 || i >= this.f26090d) {
            throw new IndexOutOfBoundsException(m10227i(i));
        }
    }

    /* renamed from: i */
    public final String m10227i(int i) {
        int i2 = this.f26090d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26090d;
    }

    static {
        jo3<Object> jo3Var = new jo3<>(new Object[0], 0);
        f26088k = jo3Var;
        jo3Var.mo4629a();
    }

    @Override // p168r4.ym3
    /* renamed from: S */
    public final /* bridge */ /* synthetic */ ym3 mo4192S(int i) {
        if (i >= this.f26090d) {
            return new jo3(Arrays.copyOf(this.f26089b, i), this.f26090d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m10228g(i);
        return this.f26089b[i];
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        int i2;
        m6129d();
        m10228g(i);
        E[] eArr = this.f26089b;
        E e = eArr[i];
        if (i < this.f26090d - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f26090d--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m6129d();
        m10228g(i);
        E[] eArr = this.f26089b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m6129d();
        int i = this.f26090d;
        E[] eArr = this.f26089b;
        if (i == eArr.length) {
            this.f26089b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f26089b;
        int i2 = this.f26090d;
        this.f26090d = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }
}
