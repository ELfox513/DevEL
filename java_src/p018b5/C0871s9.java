package p018b5;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: b5.s9 */
/* loaded from: classes2.dex */
public final class C0871s9 extends AbstractC0665g7<Long> implements RandomAccess, InterfaceC0616d9, InterfaceC0753la {

    /* renamed from: k */
    public static final C0871s9 f2301k;

    /* renamed from: b */
    public long[] f2302b;

    /* renamed from: d */
    public int f2303d;

    public C0871s9() {
        this(new long[10], 0);
    }

    /* renamed from: e */
    public static C0871s9 m25257e() {
        return f2301k;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m25927d();
        if (i >= 0 && i <= (i2 = this.f2303d)) {
            long[] jArr = this.f2302b;
            if (i2 < jArr.length) {
                System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
            } else {
                long[] jArr2 = new long[((i2 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i);
                System.arraycopy(this.f2302b, i, jArr2, i + 1, this.f2303d - i);
                this.f2302b = jArr2;
            }
            this.f2302b[i] = longValue;
            this.f2303d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m25254i(i));
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
        if (!(obj instanceof C0871s9)) {
            return super.equals(obj);
        }
        C0871s9 c0871s9 = (C0871s9) obj;
        if (this.f2303d != c0871s9.f2303d) {
            return false;
        }
        long[] jArr = c0871s9.f2302b;
        for (int i = 0; i < this.f2303d; i++) {
            if (this.f2302b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f2303d; i2++) {
            i = (i * 31) + C0650f9.m25948c(this.f2302b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m25254i(int i) {
        int i2 = this.f2303d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: k */
    public final void m25253k(int i) {
        if (i < 0 || i >= this.f2303d) {
            throw new IndexOutOfBoundsException(m25254i(i));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2303d;
    }

    static {
        C0871s9 c0871s9 = new C0871s9(new long[0], 0);
        f2301k = c0871s9;
        c0871s9.mo25929a();
    }

    public C0871s9(long[] jArr, int i) {
        this.f2302b = jArr;
        this.f2303d = i;
    }

    @Override // p018b5.InterfaceC0633e9
    /* renamed from: S */
    public final InterfaceC0616d9 mo24861p0(int i) {
        if (i >= this.f2303d) {
            return new C0871s9(Arrays.copyOf(this.f2302b, i), this.f2303d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f2303d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2302b[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m25927d();
        m25253k(i);
        long[] jArr = this.f2302b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m25927d();
        C0650f9.m25946e(collection);
        if (!(collection instanceof C0871s9)) {
            return super.addAll(collection);
        }
        C0871s9 c0871s9 = (C0871s9) collection;
        int i = c0871s9.f2303d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2303d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f2302b;
            if (i3 > jArr.length) {
                this.f2302b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(c0871s9.f2302b, 0, this.f2302b, this.f2303d, c0871s9.f2303d);
            this.f2303d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: g */
    public final void m25256g(long j) {
        m25927d();
        int i = this.f2303d;
        long[] jArr = this.f2302b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f2302b = jArr2;
        }
        long[] jArr3 = this.f2302b;
        int i2 = this.f2303d;
        this.f2303d = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m25253k(i);
        return Long.valueOf(this.f2302b[i]);
    }

    @Override // p018b5.InterfaceC0616d9
    /* renamed from: h */
    public final long mo25255h(int i) {
        m25253k(i);
        return this.f2302b[i];
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m25927d();
        m25253k(i);
        long[] jArr = this.f2302b;
        long j = jArr[i];
        if (i < this.f2303d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f2303d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25927d();
        if (i2 >= i) {
            long[] jArr = this.f2302b;
            System.arraycopy(jArr, i2, jArr, i, this.f2303d - i2);
            this.f2303d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p018b5.AbstractC0665g7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m25256g(((Long) obj).longValue());
        return true;
    }
}
