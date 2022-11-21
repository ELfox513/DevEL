package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p144o7.C5102a0;
/* renamed from: o7.w */
/* loaded from: classes2.dex */
public final class C5244w extends AbstractC5116c<Float> implements C5102a0.InterfaceC5108f, RandomAccess, InterfaceC5115b1 {

    /* renamed from: k */
    public static final C5244w f19696k;

    /* renamed from: b */
    public float[] f19697b;

    /* renamed from: d */
    public int f19698d;

    public C5244w() {
        this(new float[10], 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, Float f) {
        m13836k(i, f.floatValue());
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5244w)) {
            return super.equals(obj);
        }
        C5244w c5244w = (C5244w) obj;
        if (this.f19698d != c5244w.f19698d) {
            return false;
        }
        float[] fArr = c5244w.f19697b;
        for (int i = 0; i < this.f19698d; i++) {
            if (Float.floatToIntBits(this.f19697b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: g */
    public boolean add(Float f) {
        m13837i(f.floatValue());
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19698d; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f19697b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public Float get(int i) {
        return Float.valueOf(m13833o(i));
    }

    /* renamed from: q */
    public final String m13832q(int i) {
        return "Index:" + i + ", Size:" + this.f19698d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19698d;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: t */
    public Float set(int i, Float f) {
        return Float.valueOf(m13828u(i, f.floatValue()));
    }

    static {
        C5244w c5244w = new C5244w(new float[0], 0);
        f19696k = c5244w;
        c5244w.mo14640F();
    }

    public C5244w(float[] fArr, int i) {
        this.f19697b = fArr;
        this.f19698d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19697b[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final void m13835l(int i) {
        if (i >= 0 && i < this.f19698d) {
            return;
        }
        throw new IndexOutOfBoundsException(m13832q(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: r */
    public C5102a0.InterfaceC5108f mo13752n(int i) {
        if (i >= this.f19698d) {
            return new C5244w(Arrays.copyOf(this.f19697b, i), this.f19698d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        m14639d();
        C5102a0.m14659a(collection);
        if (!(collection instanceof C5244w)) {
            return super.addAll(collection);
        }
        C5244w c5244w = (C5244w) collection;
        int i = c5244w.f19698d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19698d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f19697b;
            if (i3 > fArr.length) {
                this.f19697b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(c5244w.f19697b, 0, this.f19697b, this.f19698d, c5244w.f19698d);
            this.f19698d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: i */
    public void m13837i(float f) {
        m14639d();
        int i = this.f19698d;
        float[] fArr = this.f19697b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f19697b = fArr2;
        }
        float[] fArr3 = this.f19697b;
        int i2 = this.f19698d;
        this.f19698d = i2 + 1;
        fArr3[i2] = f;
    }

    /* renamed from: k */
    public final void m13836k(int i, float f) {
        int i2;
        m14639d();
        if (i >= 0 && i <= (i2 = this.f19698d)) {
            float[] fArr = this.f19697b;
            if (i2 < fArr.length) {
                System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
            } else {
                float[] fArr2 = new float[((i2 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i);
                System.arraycopy(this.f19697b, i, fArr2, i + 1, this.f19698d - i);
                this.f19697b = fArr2;
            }
            this.f19697b[i] = f;
            this.f19698d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m13832q(i));
    }

    /* renamed from: o */
    public float m13833o(int i) {
        m13835l(i);
        return this.f19697b[i];
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m14639d();
        if (i2 >= i) {
            float[] fArr = this.f19697b;
            System.arraycopy(fArr, i2, fArr, i, this.f19698d - i2);
            this.f19698d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: s */
    public Float remove(int i) {
        int i2;
        m14639d();
        m13835l(i);
        float[] fArr = this.f19697b;
        float f = fArr[i];
        if (i < this.f19698d - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f19698d--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    /* renamed from: u */
    public float m13828u(int i, float f) {
        m14639d();
        m13835l(i);
        float[] fArr = this.f19697b;
        float f2 = fArr[i];
        fArr[i] = f;
        return f2;
    }
}
