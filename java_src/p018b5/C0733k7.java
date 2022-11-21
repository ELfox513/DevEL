package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: b5.k7 */
/* loaded from: classes2.dex */
public final class C0733k7 extends AbstractC0665g7<Boolean> implements RandomAccess, InterfaceC0753la {

    /* renamed from: k */
    public static final C0733k7 f1930k;

    /* renamed from: b */
    public boolean[] f1931b;

    /* renamed from: d */
    public int f1932d;

    public C0733k7() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m25927d();
        if (i >= 0 && i <= (i2 = this.f1932d)) {
            boolean[] zArr = this.f1931b;
            if (i2 < zArr.length) {
                System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
            } else {
                boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i);
                System.arraycopy(this.f1931b, i, zArr2, i + 1, this.f1932d - i);
                this.f1931b = zArr2;
            }
            this.f1931b[i] = booleanValue;
            this.f1932d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m25703g(i));
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
        if (!(obj instanceof C0733k7)) {
            return super.equals(obj);
        }
        C0733k7 c0733k7 = (C0733k7) obj;
        if (this.f1932d != c0733k7.f1932d) {
            return false;
        }
        boolean[] zArr = c0733k7.f1931b;
        for (int i = 0; i < this.f1932d; i++) {
            if (this.f1931b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final String m25703g(int i) {
        int i2 = this.f1932d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f1932d; i2++) {
            i = (i * 31) + C0650f9.m25950a(this.f1931b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final void m25702i(int i) {
        if (i < 0 || i >= this.f1932d) {
            throw new IndexOutOfBoundsException(m25703g(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1932d;
    }

    static {
        C0733k7 c0733k7 = new C0733k7(new boolean[0], 0);
        f1930k = c0733k7;
        c0733k7.mo25929a();
    }

    public C0733k7(boolean[] zArr, int i) {
        this.f1931b = zArr;
        this.f1932d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f1932d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f1931b[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: p0 */
    public final /* bridge */ /* synthetic */ InterfaceC0633e9 mo24861p0(int i) {
        if (i >= this.f1932d) {
            return new C0733k7(Arrays.copyOf(this.f1931b, i), this.f1932d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m25927d();
        m25702i(i);
        boolean[] zArr = this.f1931b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m25927d();
        C0650f9.m25946e(collection);
        if (!(collection instanceof C0733k7)) {
            return super.addAll(collection);
        }
        C0733k7 c0733k7 = (C0733k7) collection;
        int i = c0733k7.f1932d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f1932d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f1931b;
            if (i3 > zArr.length) {
                this.f1931b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(c0733k7.f1931b, 0, this.f1931b, this.f1932d, c0733k7.f1932d);
            this.f1932d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m25704e(boolean z) {
        m25927d();
        int i = this.f1932d;
        boolean[] zArr = this.f1931b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f1931b = zArr2;
        }
        boolean[] zArr3 = this.f1931b;
        int i2 = this.f1932d;
        this.f1932d = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m25702i(i);
        return Boolean.valueOf(this.f1931b[i]);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m25927d();
        m25702i(i);
        boolean[] zArr = this.f1931b;
        boolean z = zArr[i];
        if (i < this.f1932d - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f1932d--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25927d();
        if (i2 >= i) {
            boolean[] zArr = this.f1931b;
            System.arraycopy(zArr, i2, zArr, i, this.f1932d - i2);
            this.f1932d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m25704e(((Boolean) obj).booleanValue());
        return true;
    }
}
