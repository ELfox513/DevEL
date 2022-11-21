package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p144o7.C5102a0;
/* renamed from: o7.m */
/* loaded from: classes2.dex */
public final class C5185m extends AbstractC5116c<Double> implements C5102a0.InterfaceC5104b, RandomAccess, InterfaceC5115b1 {

    /* renamed from: k */
    public static final C5185m f19509k;

    /* renamed from: b */
    public double[] f19510b;

    /* renamed from: d */
    public int f19511d;

    public C5185m() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, Double d) {
        m14204k(i, d.doubleValue());
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5185m)) {
            return super.equals(obj);
        }
        C5185m c5185m = (C5185m) obj;
        if (this.f19511d != c5185m.f19511d) {
            return false;
        }
        double[] dArr = c5185m.f19510b;
        for (int i = 0; i < this.f19511d; i++) {
            if (Double.doubleToLongBits(this.f19510b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: g */
    public boolean add(Double d) {
        m14205i(d.doubleValue());
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19511d; i2++) {
            i = (i * 31) + C5102a0.m14654f(Double.doubleToLongBits(this.f19510b[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public Double get(int i) {
        return Double.valueOf(m14201o(i));
    }

    /* renamed from: q */
    public final String m14200q(int i) {
        return "Index:" + i + ", Size:" + this.f19511d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19511d;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: t */
    public Double set(int i, Double d) {
        return Double.valueOf(m14196u(i, d.doubleValue()));
    }

    static {
        C5185m c5185m = new C5185m(new double[0], 0);
        f19509k = c5185m;
        c5185m.mo14640F();
    }

    public C5185m(double[] dArr, int i) {
        this.f19510b = dArr;
        this.f19511d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19510b[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final void m14203l(int i) {
        if (i >= 0 && i < this.f19511d) {
            return;
        }
        throw new IndexOutOfBoundsException(m14200q(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: r */
    public C5102a0.InterfaceC5104b mo13752n(int i) {
        if (i >= this.f19511d) {
            return new C5185m(Arrays.copyOf(this.f19510b, i), this.f19511d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        m14639d();
        C5102a0.m14659a(collection);
        if (!(collection instanceof C5185m)) {
            return super.addAll(collection);
        }
        C5185m c5185m = (C5185m) collection;
        int i = c5185m.f19511d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19511d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f19510b;
            if (i3 > dArr.length) {
                this.f19510b = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(c5185m.f19510b, 0, this.f19510b, this.f19511d, c5185m.f19511d);
            this.f19511d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: i */
    public void m14205i(double d) {
        m14639d();
        int i = this.f19511d;
        double[] dArr = this.f19510b;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f19510b = dArr2;
        }
        double[] dArr3 = this.f19510b;
        int i2 = this.f19511d;
        this.f19511d = i2 + 1;
        dArr3[i2] = d;
    }

    /* renamed from: k */
    public final void m14204k(int i, double d) {
        int i2;
        m14639d();
        if (i >= 0 && i <= (i2 = this.f19511d)) {
            double[] dArr = this.f19510b;
            if (i2 < dArr.length) {
                System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
            } else {
                double[] dArr2 = new double[((i2 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i);
                System.arraycopy(this.f19510b, i, dArr2, i + 1, this.f19511d - i);
                this.f19510b = dArr2;
            }
            this.f19510b[i] = d;
            this.f19511d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m14200q(i));
    }

    /* renamed from: o */
    public double m14201o(int i) {
        m14203l(i);
        return this.f19510b[i];
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m14639d();
        if (i2 >= i) {
            double[] dArr = this.f19510b;
            System.arraycopy(dArr, i2, dArr, i, this.f19511d - i2);
            this.f19511d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: s */
    public Double remove(int i) {
        int i2;
        m14639d();
        m14203l(i);
        double[] dArr = this.f19510b;
        double d = dArr[i];
        if (i < this.f19511d - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.f19511d--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    /* renamed from: u */
    public double m14196u(int i, double d) {
        m14639d();
        m14203l(i);
        double[] dArr = this.f19510b;
        double d2 = dArr[i];
        dArr[i] = d;
        return d2;
    }
}
