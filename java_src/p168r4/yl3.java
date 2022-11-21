package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: r4.yl3 */
/* loaded from: classes2.dex */
public final class yl3 extends vk3<Double> implements RandomAccess, ho3 {

    /* renamed from: k */
    public static final yl3 f34140k;

    /* renamed from: b */
    public double[] f34141b;

    /* renamed from: d */
    public int f34142d;

    public yl3() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m6129d();
        if (i >= 0 && i <= (i2 = this.f34142d)) {
            double[] dArr = this.f34141b;
            if (i2 < dArr.length) {
                System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
            } else {
                double[] dArr2 = new double[((i2 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i);
                System.arraycopy(this.f34141b, i, dArr2, i + 1, this.f34142d - i);
                this.f34141b = dArr2;
            }
            this.f34141b[i] = doubleValue;
            this.f34142d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m4630i(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yl3)) {
            return super.equals(obj);
        }
        yl3 yl3Var = (yl3) obj;
        if (this.f34142d != yl3Var.f34142d) {
            return false;
        }
        double[] dArr = yl3Var.f34141b;
        for (int i = 0; i < this.f34142d; i++) {
            if (Double.doubleToLongBits(this.f34141b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m4631g(int i) {
        if (i < 0 || i >= this.f34142d) {
            throw new IndexOutOfBoundsException(m4630i(i));
        }
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34142d; i2++) {
            i = (i * 31) + zm3.m4176e(Double.doubleToLongBits(this.f34141b[i2]));
        }
        return i;
    }

    /* renamed from: i */
    public final String m4630i(int i) {
        int i2 = this.f34142d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34142d;
    }

    static {
        yl3 yl3Var = new yl3(new double[0], 0);
        f34140k = yl3Var;
        yl3Var.mo4629a();
    }

    public yl3(double[] dArr, int i) {
        this.f34141b = dArr;
        this.f34142d = i;
    }

    @Override // p168r4.ym3
    /* renamed from: S */
    public final /* bridge */ /* synthetic */ ym3 mo4192S(int i) {
        if (i >= this.f34142d) {
            return new yl3(Arrays.copyOf(this.f34141b, i), this.f34142d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.f34142d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34141b[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m6129d();
        m4631g(i);
        double[] dArr = this.f34141b;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m6129d();
        zm3.m4180a(collection);
        if (!(collection instanceof yl3)) {
            return super.addAll(collection);
        }
        yl3 yl3Var = (yl3) collection;
        int i = yl3Var.f34142d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34142d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f34141b;
            if (i3 > dArr.length) {
                this.f34141b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(yl3Var.f34141b, 0, this.f34141b, this.f34142d, yl3Var.f34142d);
            this.f34142d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m4632e(double d) {
        m6129d();
        int i = this.f34142d;
        double[] dArr = this.f34141b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f34141b = dArr2;
        }
        double[] dArr3 = this.f34141b;
        int i2 = this.f34142d;
        this.f34142d = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m4631g(i);
        return Double.valueOf(this.f34141b[i]);
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m6129d();
        m4631g(i);
        double[] dArr = this.f34141b;
        double d = dArr[i];
        if (i < this.f34142d - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f34142d--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6129d();
        if (i2 >= i) {
            double[] dArr = this.f34141b;
            System.arraycopy(dArr, i2, dArr, i, this.f34142d - i2);
            this.f34142d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m4632e(((Double) obj).doubleValue());
        return true;
    }
}
