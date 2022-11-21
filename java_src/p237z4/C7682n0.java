package p237z4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: z4.n0 */
/* loaded from: classes2.dex */
public final class C7682n0 extends AbstractC7637f<Integer> implements InterfaceC7621c2, RandomAccess {

    /* renamed from: k */
    public static final C7682n0 f37830k;

    /* renamed from: b */
    public int[] f37831b;

    /* renamed from: d */
    public int f37832d;

    public C7682n0() {
        this(new int[10], 0);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7682n0)) {
            return super.equals(obj);
        }
        C7682n0 c7682n0 = (C7682n0) obj;
        if (this.f37832d != c7682n0.f37832d) {
            return false;
        }
        int[] iArr = c7682n0.f37831b;
        for (int i = 0; i < this.f37832d; i++) {
            if (this.f37831b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f37832d; i2++) {
            i = (i * 31) + this.f37831b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final String m642i(int i) {
        int i2 = this.f37832d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m806d();
        for (int i = 0; i < this.f37832d; i++) {
            if (obj.equals(Integer.valueOf(this.f37831b[i]))) {
                int[] iArr = this.f37831b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f37832d - i) - 1);
                this.f37832d--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f37832d;
    }

    static {
        C7682n0 c7682n0 = new C7682n0(new int[0], 0);
        f37830k = c7682n0;
        c7682n0.mo618j0();
    }

    public C7682n0(int[] iArr, int i) {
        this.f37831b = iArr;
        this.f37832d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m644e(i, ((Integer) obj).intValue());
    }

    /* renamed from: g */
    public final void m643g(int i) {
        if (i >= 0 && i < this.f37832d) {
            return;
        }
        throw new IndexOutOfBoundsException(m642i(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m806d();
        m643g(i);
        int[] iArr = this.f37831b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // p237z4.InterfaceC7697q0
    /* renamed from: z0 */
    public final /* synthetic */ InterfaceC7697q0 mo401z0(int i) {
        if (i >= this.f37832d) {
            return new C7682n0(Arrays.copyOf(this.f37831b, i), this.f37832d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m806d();
        C7687o0.m636a(collection);
        if (!(collection instanceof C7682n0)) {
            return super.addAll(collection);
        }
        C7682n0 c7682n0 = (C7682n0) collection;
        int i = c7682n0.f37832d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f37832d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f37831b;
            if (i3 > iArr.length) {
                this.f37831b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(c7682n0.f37831b, 0, this.f37831b, this.f37832d, c7682n0.f37832d);
            this.f37832d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m644e(int i, int i2) {
        int i3;
        m806d();
        if (i >= 0 && i <= (i3 = this.f37832d)) {
            int[] iArr = this.f37831b;
            if (i3 < iArr.length) {
                System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
            } else {
                int[] iArr2 = new int[((i3 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                System.arraycopy(this.f37831b, i, iArr2, i + 1, this.f37832d - i);
                this.f37831b = iArr2;
            }
            this.f37831b[i] = i2;
            this.f37832d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m642i(i));
    }

    public final int getInt(int i) {
        m643g(i);
        return this.f37831b[i];
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m806d();
        if (i2 >= i) {
            int[] iArr = this.f37831b;
            System.arraycopy(iArr, i2, iArr, i, this.f37832d - i2);
            this.f37832d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        m806d();
        m643g(i);
        int[] iArr = this.f37831b;
        int i3 = iArr[i];
        if (i < this.f37832d - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
        }
        this.f37832d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }
}
