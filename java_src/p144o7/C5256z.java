package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p144o7.C5102a0;
/* renamed from: o7.z */
/* loaded from: classes2.dex */
public final class C5256z extends AbstractC5116c<Integer> implements C5102a0.InterfaceC5109g, RandomAccess, InterfaceC5115b1 {

    /* renamed from: k */
    public static final C5256z f19723k;

    /* renamed from: b */
    public int[] f19724b;

    /* renamed from: d */
    public int f19725d;

    public C5256z() {
        this(new int[10], 0);
    }

    /* renamed from: k */
    public static C5256z m13755k() {
        return f19723k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, Integer num) {
        m13756i(i, num.intValue());
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5256z)) {
            return super.equals(obj);
        }
        C5256z c5256z = (C5256z) obj;
        if (this.f19725d != c5256z.f19725d) {
            return false;
        }
        int[] iArr = c5256z.f19724b;
        for (int i = 0; i < this.f19725d; i++) {
            if (this.f19724b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: g */
    public boolean add(Integer num) {
        mo13759P(num.intValue());
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19725d; i2++) {
            i = (i * 31) + this.f19724b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public Integer get(int i) {
        return Integer.valueOf(getInt(i));
    }

    /* renamed from: o */
    public final String m13751o(int i) {
        return "Index:" + i + ", Size:" + this.f19725d;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: r */
    public Integer set(int i, Integer num) {
        return Integer.valueOf(m13748s(i, num.intValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19725d;
    }

    static {
        C5256z c5256z = new C5256z(new int[0], 0);
        f19723k = c5256z;
        c5256z.mo14640F();
    }

    public C5256z(int[] iArr, int i) {
        this.f19724b = iArr;
        this.f19725d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19724b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final void m13754l(int i) {
        if (i >= 0 && i < this.f19725d) {
            return;
        }
        throw new IndexOutOfBoundsException(m13751o(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: n */
    public C5102a0.InterfaceC5111i<Integer> mo13752n(int i) {
        if (i >= this.f19725d) {
            return new C5256z(Arrays.copyOf(this.f19724b, i), this.f19725d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.C5102a0.InterfaceC5109g
    /* renamed from: P */
    public void mo13759P(int i) {
        m14639d();
        int i2 = this.f19725d;
        int[] iArr = this.f19724b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f19724b = iArr2;
        }
        int[] iArr3 = this.f19724b;
        int i3 = this.f19725d;
        this.f19725d = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m14639d();
        C5102a0.m14659a(collection);
        if (!(collection instanceof C5256z)) {
            return super.addAll(collection);
        }
        C5256z c5256z = (C5256z) collection;
        int i = c5256z.f19725d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19725d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f19724b;
            if (i3 > iArr.length) {
                this.f19724b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(c5256z.f19724b, 0, this.f19724b, this.f19725d, c5256z.f19725d);
            this.f19725d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p144o7.C5102a0.InterfaceC5109g
    public int getInt(int i) {
        m13754l(i);
        return this.f19724b[i];
    }

    /* renamed from: i */
    public final void m13756i(int i, int i2) {
        int i3;
        m14639d();
        if (i >= 0 && i <= (i3 = this.f19725d)) {
            int[] iArr = this.f19724b;
            if (i3 < iArr.length) {
                System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
            } else {
                int[] iArr2 = new int[((i3 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                System.arraycopy(this.f19724b, i, iArr2, i + 1, this.f19725d - i);
                this.f19724b = iArr2;
            }
            this.f19724b[i] = i2;
            this.f19725d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m13751o(i));
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: q */
    public Integer remove(int i) {
        int i2;
        m14639d();
        m13754l(i);
        int[] iArr = this.f19724b;
        int i3 = iArr[i];
        if (i < this.f19725d - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
        }
        this.f19725d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m14639d();
        if (i2 >= i) {
            int[] iArr = this.f19724b;
            System.arraycopy(iArr, i2, iArr, i, this.f19725d - i2);
            this.f19725d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* renamed from: s */
    public int m13748s(int i, int i2) {
        m14639d();
        m13754l(i);
        int[] iArr = this.f19724b;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }
}
