package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: b5.r8 */
/* loaded from: classes2.dex */
public final class C0853r8 extends AbstractC0665g7<Float> implements RandomAccess, InterfaceC0753la {

    /* renamed from: k */
    public static final C0853r8 f2263k;

    /* renamed from: b */
    public float[] f2264b;

    /* renamed from: d */
    public int f2265d;

    public C0853r8() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m25927d();
        if (i >= 0 && i <= (i2 = this.f2265d)) {
            float[] fArr = this.f2264b;
            if (i2 < fArr.length) {
                System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
            } else {
                float[] fArr2 = new float[((i2 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i);
                System.arraycopy(this.f2264b, i, fArr2, i + 1, this.f2265d - i);
                this.f2264b = fArr2;
            }
            this.f2264b[i] = floatValue;
            this.f2265d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m25425g(i));
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
        if (!(obj instanceof C0853r8)) {
            return super.equals(obj);
        }
        C0853r8 c0853r8 = (C0853r8) obj;
        if (this.f2265d != c0853r8.f2265d) {
            return false;
        }
        float[] fArr = c0853r8.f2264b;
        for (int i = 0; i < this.f2265d; i++) {
            if (Float.floatToIntBits(this.f2264b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final String m25425g(int i) {
        int i2 = this.f2265d;
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
        for (int i2 = 0; i2 < this.f2265d; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f2264b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final void m25424i(int i) {
        if (i < 0 || i >= this.f2265d) {
            throw new IndexOutOfBoundsException(m25425g(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2265d;
    }

    static {
        C0853r8 c0853r8 = new C0853r8(new float[0], 0);
        f2263k = c0853r8;
        c0853r8.mo25929a();
    }

    public C0853r8(float[] fArr, int i) {
        this.f2264b = fArr;
        this.f2265d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f2265d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2264b[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: p0 */
    public final /* bridge */ /* synthetic */ InterfaceC0633e9 mo24861p0(int i) {
        if (i >= this.f2265d) {
            return new C0853r8(Arrays.copyOf(this.f2264b, i), this.f2265d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m25927d();
        m25424i(i);
        float[] fArr = this.f2264b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m25927d();
        C0650f9.m25946e(collection);
        if (!(collection instanceof C0853r8)) {
            return super.addAll(collection);
        }
        C0853r8 c0853r8 = (C0853r8) collection;
        int i = c0853r8.f2265d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2265d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f2264b;
            if (i3 > fArr.length) {
                this.f2264b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(c0853r8.f2264b, 0, this.f2264b, this.f2265d, c0853r8.f2265d);
            this.f2265d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m25426e(float f) {
        m25927d();
        int i = this.f2265d;
        float[] fArr = this.f2264b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f2264b = fArr2;
        }
        float[] fArr3 = this.f2264b;
        int i2 = this.f2265d;
        this.f2265d = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m25424i(i);
        return Float.valueOf(this.f2264b[i]);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m25927d();
        m25424i(i);
        float[] fArr = this.f2264b;
        float f = fArr[i];
        if (i < this.f2265d - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f2265d--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25927d();
        if (i2 >= i) {
            float[] fArr = this.f2264b;
            System.arraycopy(fArr, i2, fArr, i, this.f2265d - i2);
            this.f2265d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m25426e(((Float) obj).floatValue());
        return true;
    }
}
