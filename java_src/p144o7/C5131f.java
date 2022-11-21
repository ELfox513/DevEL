package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p144o7.C5102a0;
/* renamed from: o7.f */
/* loaded from: classes2.dex */
public final class C5131f extends AbstractC5116c<Boolean> implements C5102a0.InterfaceC5103a, RandomAccess, InterfaceC5115b1 {

    /* renamed from: k */
    public static final C5131f f19407k;

    /* renamed from: b */
    public boolean[] f19408b;

    /* renamed from: d */
    public int f19409d;

    public C5131f() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, Boolean bool) {
        m14585i(i, bool.booleanValue());
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5131f)) {
            return super.equals(obj);
        }
        C5131f c5131f = (C5131f) obj;
        if (this.f19409d != c5131f.f19409d) {
            return false;
        }
        boolean[] zArr = c5131f.f19408b;
        for (int i = 0; i < this.f19409d; i++) {
            if (this.f19408b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: g */
    public boolean add(Boolean bool) {
        m14584k(bool.booleanValue());
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19409d; i2++) {
            i = (i * 31) + C5102a0.m14657c(this.f19408b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public Boolean get(int i) {
        return Boolean.valueOf(m14581o(i));
    }

    /* renamed from: q */
    public final String m14580q(int i) {
        return "Index:" + i + ", Size:" + this.f19409d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19409d;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: t */
    public Boolean set(int i, Boolean bool) {
        return Boolean.valueOf(m14576u(i, bool.booleanValue()));
    }

    static {
        C5131f c5131f = new C5131f(new boolean[0], 0);
        f19407k = c5131f;
        c5131f.mo14640F();
    }

    public C5131f(boolean[] zArr, int i) {
        this.f19408b = zArr;
        this.f19409d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19408b[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final void m14583l(int i) {
        if (i >= 0 && i < this.f19409d) {
            return;
        }
        throw new IndexOutOfBoundsException(m14580q(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: r */
    public C5102a0.InterfaceC5103a mo13752n(int i) {
        if (i >= this.f19409d) {
            return new C5131f(Arrays.copyOf(this.f19408b, i), this.f19409d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        m14639d();
        C5102a0.m14659a(collection);
        if (!(collection instanceof C5131f)) {
            return super.addAll(collection);
        }
        C5131f c5131f = (C5131f) collection;
        int i = c5131f.f19409d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19409d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f19408b;
            if (i3 > zArr.length) {
                this.f19408b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(c5131f.f19408b, 0, this.f19408b, this.f19409d, c5131f.f19409d);
            this.f19409d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: i */
    public final void m14585i(int i, boolean z) {
        int i2;
        m14639d();
        if (i >= 0 && i <= (i2 = this.f19409d)) {
            boolean[] zArr = this.f19408b;
            if (i2 < zArr.length) {
                System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
            } else {
                boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i);
                System.arraycopy(this.f19408b, i, zArr2, i + 1, this.f19409d - i);
                this.f19408b = zArr2;
            }
            this.f19408b[i] = z;
            this.f19409d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m14580q(i));
    }

    /* renamed from: k */
    public void m14584k(boolean z) {
        m14639d();
        int i = this.f19409d;
        boolean[] zArr = this.f19408b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f19408b = zArr2;
        }
        boolean[] zArr3 = this.f19408b;
        int i2 = this.f19409d;
        this.f19409d = i2 + 1;
        zArr3[i2] = z;
    }

    /* renamed from: o */
    public boolean m14581o(int i) {
        m14583l(i);
        return this.f19408b[i];
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m14639d();
        if (i2 >= i) {
            boolean[] zArr = this.f19408b;
            System.arraycopy(zArr, i2, zArr, i, this.f19409d - i2);
            this.f19409d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: s */
    public Boolean remove(int i) {
        int i2;
        m14639d();
        m14583l(i);
        boolean[] zArr = this.f19408b;
        boolean z = zArr[i];
        if (i < this.f19409d - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f19409d--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    /* renamed from: u */
    public boolean m14576u(int i, boolean z) {
        m14639d();
        m14583l(i);
        boolean[] zArr = this.f19408b;
        boolean z2 = zArr[i];
        zArr[i] = z;
        return z2;
    }
}
