package p144o7;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p144o7.C5102a0;
/* renamed from: o7.j0 */
/* loaded from: classes2.dex */
public final class C5161j0 extends AbstractC5116c<Long> implements C5102a0.InterfaceC5110h, RandomAccess, InterfaceC5115b1 {

    /* renamed from: k */
    public static final C5161j0 f19456k;

    /* renamed from: b */
    public long[] f19457b;

    /* renamed from: d */
    public int f19458d;

    public C5161j0() {
        this(new long[10], 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: e */
    public void add(int i, Long l) {
        m14426i(i, l.longValue());
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5161j0)) {
            return super.equals(obj);
        }
        C5161j0 c5161j0 = (C5161j0) obj;
        if (this.f19458d != c5161j0.f19458d) {
            return false;
        }
        long[] jArr = c5161j0.f19457b;
        for (int i = 0; i < this.f19458d; i++) {
            if (this.f19457b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: g */
    public boolean add(Long l) {
        m14425k(l.longValue());
        return true;
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19458d; i2++) {
            i = (i * 31) + C5102a0.m14654f(this.f19457b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public Long get(int i) {
        return Long.valueOf(m14422o(i));
    }

    /* renamed from: q */
    public final String m14421q(int i) {
        return "Index:" + i + ", Size:" + this.f19458d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19458d;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: t */
    public Long set(int i, Long l) {
        return Long.valueOf(m14417u(i, l.longValue()));
    }

    static {
        C5161j0 c5161j0 = new C5161j0(new long[0], 0);
        f19456k = c5161j0;
        c5161j0.mo14640F();
    }

    public C5161j0(long[] jArr, int i) {
        this.f19457b = jArr;
        this.f19458d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19457b[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final void m14424l(int i) {
        if (i >= 0 && i < this.f19458d) {
            return;
        }
        throw new IndexOutOfBoundsException(m14421q(i));
    }

    @Override // p144o7.C5102a0.InterfaceC5111i
    /* renamed from: r */
    public C5102a0.InterfaceC5110h mo13752n(int i) {
        if (i >= this.f19458d) {
            return new C5161j0(Arrays.copyOf(this.f19457b, i), this.f19458d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        m14639d();
        C5102a0.m14659a(collection);
        if (!(collection instanceof C5161j0)) {
            return super.addAll(collection);
        }
        C5161j0 c5161j0 = (C5161j0) collection;
        int i = c5161j0.f19458d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19458d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f19457b;
            if (i3 > jArr.length) {
                this.f19457b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(c5161j0.f19457b, 0, this.f19457b, this.f19458d, c5161j0.f19458d);
            this.f19458d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: i */
    public final void m14426i(int i, long j) {
        int i2;
        m14639d();
        if (i >= 0 && i <= (i2 = this.f19458d)) {
            long[] jArr = this.f19457b;
            if (i2 < jArr.length) {
                System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
            } else {
                long[] jArr2 = new long[((i2 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i);
                System.arraycopy(this.f19457b, i, jArr2, i + 1, this.f19458d - i);
                this.f19457b = jArr2;
            }
            this.f19457b[i] = j;
            this.f19458d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m14421q(i));
    }

    /* renamed from: k */
    public void m14425k(long j) {
        m14639d();
        int i = this.f19458d;
        long[] jArr = this.f19457b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f19457b = jArr2;
        }
        long[] jArr3 = this.f19457b;
        int i2 = this.f19458d;
        this.f19458d = i2 + 1;
        jArr3[i2] = j;
    }

    /* renamed from: o */
    public long m14422o(int i) {
        m14424l(i);
        return this.f19457b[i];
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m14639d();
        if (i2 >= i) {
            long[] jArr = this.f19457b;
            System.arraycopy(jArr, i2, jArr, i, this.f19458d - i2);
            this.f19458d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p144o7.AbstractC5116c, java.util.AbstractList, java.util.List
    /* renamed from: s */
    public Long remove(int i) {
        int i2;
        m14639d();
        m14424l(i);
        long[] jArr = this.f19457b;
        long j = jArr[i];
        if (i < this.f19458d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f19458d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    /* renamed from: u */
    public long m14417u(int i, long j) {
        m14639d();
        m14424l(i);
        long[] jArr = this.f19457b;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }
}
