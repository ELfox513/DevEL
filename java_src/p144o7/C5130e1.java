package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: o7.e1 */
/* loaded from: classes2.dex */
public final class C5130e1<E> extends AbstractC5116c<E> implements RandomAccess {

    /* renamed from: k */
    public static final C5130e1<Object> f19404k;

    /* renamed from: b */
    public E[] f19405b;

    /* renamed from: d */
    public int f19406d;

    /* renamed from: e */
    public static <E> E[] m14592e(int i) {
        return (E[]) new Object[i];
    }

    /* renamed from: g */
    public static <E> C5130e1<E> m14591g() {
        return (C5130e1<E>) f19404k;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m14639d();
        int i = this.f19406d;
        E[] eArr = this.f19405b;
        if (i == eArr.length) {
            this.f19405b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f19405b;
        int i2 = this.f19406d;
        this.f19406d = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: k */
    public final String m14589k(int i) {
        return "Index:" + i + ", Size:" + this.f19406d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19406d;
    }

    static {
        C5130e1<Object> c5130e1 = new C5130e1<>(new Object[0], 0);
        f19404k = c5130e1;
        c5130e1.mo14640F();
    }

    /* renamed from: i */
    public final void m14590i(int i) {
        if (i >= 0 && i < this.f19406d) {
            return;
        }
        throw new IndexOutOfBoundsException(m14589k(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: l */
    public C5130e1<E> mo13752n(int i) {
        if (i >= this.f19406d) {
            return new C5130e1<>(Arrays.copyOf(this.f19405b, i), this.f19406d);
        }
        throw new IllegalArgumentException();
    }

    public C5130e1(E[] eArr, int i) {
        this.f19405b = eArr;
        this.f19406d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m14590i(i);
        return this.f19405b[i];
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    public E remove(int i) {
        int i2;
        m14639d();
        m14590i(i);
        E[] eArr = this.f19405b;
        E e = eArr[i];
        if (i < this.f19406d - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f19406d--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m14639d();
        m14590i(i);
        E[] eArr = this.f19405b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        m14639d();
        if (i >= 0 && i <= (i2 = this.f19406d)) {
            E[] eArr = this.f19405b;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) m14592e(((i2 * 3) / 2) + 1);
                System.arraycopy(this.f19405b, 0, eArr2, 0, i);
                System.arraycopy(this.f19405b, i, eArr2, i + 1, this.f19406d - i);
                this.f19405b = eArr2;
            }
            this.f19405b[i] = e;
            this.f19406d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m14589k(i));
    }
}
