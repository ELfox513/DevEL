package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: b5.h8 */
/* loaded from: classes2.dex */
public final class C0683h8 extends AbstractC0665g7<Double> implements RandomAccess, InterfaceC0753la {

    /* renamed from: k */
    public static final C0683h8 f1847k;

    /* renamed from: b */
    public double[] f1848b;

    /* renamed from: d */
    public int f1849d;

    public C0683h8() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m25927d();
        if (i >= 0 && i <= (i2 = this.f1849d)) {
            double[] dArr = this.f1848b;
            if (i2 < dArr.length) {
                System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
            } else {
                double[] dArr2 = new double[((i2 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i);
                System.arraycopy(this.f1848b, i, dArr2, i + 1, this.f1849d - i);
                this.f1848b = dArr2;
            }
            this.f1848b[i] = doubleValue;
            this.f1849d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m25867g(i));
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
        if (!(obj instanceof C0683h8)) {
            return super.equals(obj);
        }
        C0683h8 c0683h8 = (C0683h8) obj;
        if (this.f1849d != c0683h8.f1849d) {
            return false;
        }
        double[] dArr = c0683h8.f1848b;
        for (int i = 0; i < this.f1849d; i++) {
            if (Double.doubleToLongBits(this.f1848b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final String m25867g(int i) {
        int i2 = this.f1849d;
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
        for (int i2 = 0; i2 < this.f1849d; i2++) {
            i = (i * 31) + C0650f9.m25948c(Double.doubleToLongBits(this.f1848b[i2]));
        }
        return i;
    }

    /* renamed from: i */
    public final void m25866i(int i) {
        if (i < 0 || i >= this.f1849d) {
            throw new IndexOutOfBoundsException(m25867g(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1849d;
    }

    static {
        C0683h8 c0683h8 = new C0683h8(new double[0], 0);
        f1847k = c0683h8;
        c0683h8.mo25929a();
    }

    public C0683h8(double[] dArr, int i) {
        this.f1848b = dArr;
        this.f1849d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f1849d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f1848b[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: p0 */
    public final /* bridge */ /* synthetic */ InterfaceC0633e9 mo24861p0(int i) {
        if (i >= this.f1849d) {
            return new C0683h8(Arrays.copyOf(this.f1848b, i), this.f1849d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m25927d();
        m25866i(i);
        double[] dArr = this.f1848b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m25927d();
        C0650f9.m25946e(collection);
        if (!(collection instanceof C0683h8)) {
            return super.addAll(collection);
        }
        C0683h8 c0683h8 = (C0683h8) collection;
        int i = c0683h8.f1849d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f1849d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f1848b;
            if (i3 > dArr.length) {
                this.f1848b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(c0683h8.f1848b, 0, this.f1848b, this.f1849d, c0683h8.f1849d);
            this.f1849d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m25868e(double d) {
        m25927d();
        int i = this.f1849d;
        double[] dArr = this.f1848b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f1848b = dArr2;
        }
        double[] dArr3 = this.f1848b;
        int i2 = this.f1849d;
        this.f1849d = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m25866i(i);
        return Double.valueOf(this.f1848b[i]);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m25927d();
        m25866i(i);
        double[] dArr = this.f1848b;
        double d = dArr[i];
        if (i < this.f1849d - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f1849d--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25927d();
        if (i2 >= i) {
            double[] dArr = this.f1848b;
            System.arraycopy(dArr, i2, dArr, i, this.f1849d - i2);
            this.f1849d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m25868e(((Double) obj).doubleValue());
        return true;
    }
}
