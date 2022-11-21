package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: r4.qm3 */
/* loaded from: classes2.dex */
public final class qm3 extends vk3<Integer> implements RandomAccess, um3, ho3 {

    /* renamed from: k */
    public static final qm3 f30203k;

    /* renamed from: b */
    public int[] f30204b;

    /* renamed from: d */
    public int f30205d;

    public qm3() {
        this(new int[10], 0);
    }

    /* renamed from: e */
    public static qm3 m7784e() {
        return f30203k;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m6129d();
        if (i >= 0 && i <= (i2 = this.f30205d)) {
            int[] iArr = this.f30204b;
            if (i2 < iArr.length) {
                System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
            } else {
                int[] iArr2 = new int[((i2 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                System.arraycopy(this.f30204b, i, iArr2, i + 1, this.f30205d - i);
                this.f30204b = iArr2;
            }
            this.f30204b[i] = intValue;
            this.f30205d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m7781k(i));
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
        if (!(obj instanceof qm3)) {
            return super.equals(obj);
        }
        qm3 qm3Var = (qm3) obj;
        if (this.f30205d != qm3Var.f30205d) {
            return false;
        }
        int[] iArr = qm3Var.f30204b;
        for (int i = 0; i < this.f30205d; i++) {
            if (this.f30204b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f30205d; i2++) {
            i = (i * 31) + this.f30204b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final void m7782i(int i) {
        if (i < 0 || i >= this.f30205d) {
            throw new IndexOutOfBoundsException(m7781k(i));
        }
    }

    /* renamed from: k */
    public final String m7781k(int i) {
        int i2 = this.f30205d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30205d;
    }

    static {
        qm3 qm3Var = new qm3(new int[0], 0);
        f30203k = qm3Var;
        qm3Var.mo4629a();
    }

    public qm3(int[] iArr, int i) {
        this.f30204b = iArr;
        this.f30205d = i;
    }

    @Override // p168r4.ym3
    /* renamed from: C */
    public final um3 mo4192S(int i) {
        if (i >= this.f30205d) {
            return new qm3(Arrays.copyOf(this.f30204b, i), this.f30205d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f30205d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f30204b[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m6129d();
        m7782i(i);
        int[] iArr = this.f30204b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // p168r4.um3
    /* renamed from: Y */
    public final void mo6483Y(int i) {
        m6129d();
        int i2 = this.f30205d;
        int[] iArr = this.f30204b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f30204b = iArr2;
        }
        int[] iArr3 = this.f30204b;
        int i3 = this.f30205d;
        this.f30205d = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m6129d();
        zm3.m4180a(collection);
        if (!(collection instanceof qm3)) {
            return super.addAll(collection);
        }
        qm3 qm3Var = (qm3) collection;
        int i = qm3Var.f30205d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f30205d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f30204b;
            if (i3 > iArr.length) {
                this.f30204b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(qm3Var.f30204b, 0, this.f30204b, this.f30205d, qm3Var.f30205d);
            this.f30205d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: g */
    public final int m7783g(int i) {
        m7782i(i);
        return this.f30204b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m7782i(i);
        return Integer.valueOf(this.f30204b[i]);
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m6129d();
        m7782i(i);
        int[] iArr = this.f30204b;
        int i3 = iArr[i];
        if (i < this.f30205d - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
        }
        this.f30205d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6129d();
        if (i2 >= i) {
            int[] iArr = this.f30204b;
            System.arraycopy(iArr, i2, iArr, i, this.f30205d - i2);
            this.f30205d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        mo6483Y(((Integer) obj).intValue());
        return true;
    }
}
