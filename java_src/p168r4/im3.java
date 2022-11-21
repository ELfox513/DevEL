package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: r4.im3 */
/* loaded from: classes2.dex */
public final class im3 extends vk3<Float> implements RandomAccess, ho3 {

    /* renamed from: k */
    public static final im3 f25193k;

    /* renamed from: b */
    public float[] f25194b;

    /* renamed from: d */
    public int f25195d;

    public im3() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m6129d();
        if (i >= 0 && i <= (i2 = this.f25195d)) {
            float[] fArr = this.f25194b;
            if (i2 < fArr.length) {
                System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
            } else {
                float[] fArr2 = new float[((i2 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i);
                System.arraycopy(this.f25194b, i, fArr2, i + 1, this.f25195d - i);
                this.f25194b = fArr2;
            }
            this.f25194b[i] = floatValue;
            this.f25195d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m10591i(i));
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
        if (!(obj instanceof im3)) {
            return super.equals(obj);
        }
        im3 im3Var = (im3) obj;
        if (this.f25195d != im3Var.f25195d) {
            return false;
        }
        float[] fArr = im3Var.f25194b;
        for (int i = 0; i < this.f25195d; i++) {
            if (Float.floatToIntBits(this.f25194b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m10592g(int i) {
        if (i < 0 || i >= this.f25195d) {
            throw new IndexOutOfBoundsException(m10591i(i));
        }
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f25195d; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f25194b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m10591i(int i) {
        int i2 = this.f25195d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f25195d;
    }

    static {
        im3 im3Var = new im3(new float[0], 0);
        f25193k = im3Var;
        im3Var.mo4629a();
    }

    public im3(float[] fArr, int i) {
        this.f25194b = fArr;
        this.f25195d = i;
    }

    @Override // p168r4.ym3
    /* renamed from: S */
    public final /* bridge */ /* synthetic */ ym3 mo4192S(int i) {
        if (i >= this.f25195d) {
            return new im3(Arrays.copyOf(this.f25194b, i), this.f25195d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.f25195d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f25194b[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m6129d();
        m10592g(i);
        float[] fArr = this.f25194b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m6129d();
        zm3.m4180a(collection);
        if (!(collection instanceof im3)) {
            return super.addAll(collection);
        }
        im3 im3Var = (im3) collection;
        int i = im3Var.f25195d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f25195d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f25194b;
            if (i3 > fArr.length) {
                this.f25194b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(im3Var.f25194b, 0, this.f25194b, this.f25195d, im3Var.f25195d);
            this.f25195d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m10593e(float f) {
        m6129d();
        int i = this.f25195d;
        float[] fArr = this.f25194b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f25194b = fArr2;
        }
        float[] fArr3 = this.f25194b;
        int i2 = this.f25195d;
        this.f25195d = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m10592g(i);
        return Float.valueOf(this.f25194b[i]);
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m6129d();
        m10592g(i);
        float[] fArr = this.f25194b;
        float f = fArr[i];
        if (i < this.f25195d - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f25195d--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6129d();
        if (i2 >= i) {
            float[] fArr = this.f25194b;
            System.arraycopy(fArr, i2, fArr, i, this.f25195d - i2);
            this.f25195d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m10593e(((Float) obj).floatValue());
        return true;
    }
}
