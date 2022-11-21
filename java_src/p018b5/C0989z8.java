package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: b5.z8 */
/* loaded from: classes2.dex */
public final class C0989z8 extends AbstractC0665g7<Integer> implements RandomAccess, InterfaceC0599c9, InterfaceC0753la {

    /* renamed from: k */
    public static final C0989z8 f2463k;

    /* renamed from: b */
    public int[] f2464b;

    /* renamed from: d */
    public int f2465d;

    public C0989z8() {
        this(new int[10], 0);
    }

    /* renamed from: g */
    public static C0989z8 m24864g() {
        return f2463k;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m25927d();
        if (i >= 0 && i <= (i2 = this.f2465d)) {
            int[] iArr = this.f2464b;
            if (i2 < iArr.length) {
                System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
            } else {
                int[] iArr2 = new int[((i2 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                System.arraycopy(this.f2464b, i, iArr2, i + 1, this.f2465d - i);
                this.f2464b = iArr2;
            }
            this.f2464b[i] = intValue;
            this.f2465d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m24863i(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0989z8)) {
            return super.equals(obj);
        }
        C0989z8 c0989z8 = (C0989z8) obj;
        if (this.f2465d != c0989z8.f2465d) {
            return false;
        }
        int[] iArr = c0989z8.f2464b;
        for (int i = 0; i < this.f2465d; i++) {
            if (this.f2464b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f2465d; i2++) {
            i = (i * 31) + this.f2464b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final String m24863i(int i) {
        int i2 = this.f2465d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: k */
    public final void m24862k(int i) {
        if (i < 0 || i >= this.f2465d) {
            throw new IndexOutOfBoundsException(m24863i(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2465d;
    }

    static {
        C0989z8 c0989z8 = new C0989z8(new int[0], 0);
        f2463k = c0989z8;
        c0989z8.mo25929a();
    }

    public C0989z8(int[] iArr, int i) {
        this.f2464b = iArr;
        this.f2465d = i;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: W */
    public final InterfaceC0599c9 mo24861p0(int i) {
        if (i >= this.f2465d) {
            return new C0989z8(Arrays.copyOf(this.f2464b, i), this.f2465d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f2465d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2464b[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m25927d();
        m24862k(i);
        int[] iArr = this.f2464b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    /* renamed from: Y */
    public final void m24866Y(int i) {
        m25927d();
        int i2 = this.f2465d;
        int[] iArr = this.f2464b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f2464b = iArr2;
        }
        int[] iArr3 = this.f2464b;
        int i3 = this.f2465d;
        this.f2465d = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m25927d();
        C0650f9.m25946e(collection);
        if (!(collection instanceof C0989z8)) {
            return super.addAll(collection);
        }
        C0989z8 c0989z8 = (C0989z8) collection;
        int i = c0989z8.f2465d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2465d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f2464b;
            if (i3 > iArr.length) {
                this.f2464b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(c0989z8.f2464b, 0, this.f2464b, this.f2465d, c0989z8.f2465d);
            this.f2465d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final int m24865e(int i) {
        m24862k(i);
        return this.f2464b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m24862k(i);
        return Integer.valueOf(this.f2464b[i]);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m25927d();
        m24862k(i);
        int[] iArr = this.f2464b;
        int i3 = iArr[i];
        if (i < this.f2465d - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
        }
        this.f2465d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25927d();
        if (i2 >= i) {
            int[] iArr = this.f2464b;
            System.arraycopy(iArr, i2, iArr, i, this.f2465d - i2);
            this.f2465d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m24866Y(((Integer) obj).intValue());
        return true;
    }
}
