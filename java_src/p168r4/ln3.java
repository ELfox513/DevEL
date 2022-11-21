package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: r4.ln3 */
/* loaded from: classes2.dex */
public final class ln3 extends vk3<Long> implements RandomAccess, xm3, ho3 {

    /* renamed from: k */
    public static final ln3 f27279k;

    /* renamed from: b */
    public long[] f27280b;

    /* renamed from: d */
    public int f27281d;

    public ln3() {
        this(new long[10], 0);
    }

    /* renamed from: e */
    public static ln3 m9607e() {
        return f27279k;
    }

    /* renamed from: Y */
    public final void m9608Y(int i) {
        if (i < 0 || i >= this.f27281d) {
            throw new IndexOutOfBoundsException(m9604k(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m6129d();
        if (i >= 0 && i <= (i2 = this.f27281d)) {
            long[] jArr = this.f27280b;
            if (i2 < jArr.length) {
                System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
            } else {
                long[] jArr2 = new long[((i2 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i);
                System.arraycopy(this.f27280b, i, jArr2, i + 1, this.f27281d - i);
                this.f27280b = jArr2;
            }
            this.f27280b[i] = longValue;
            this.f27281d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m9604k(i));
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
        if (!(obj instanceof ln3)) {
            return super.equals(obj);
        }
        ln3 ln3Var = (ln3) obj;
        if (this.f27281d != ln3Var.f27281d) {
            return false;
        }
        long[] jArr = ln3Var.f27280b;
        for (int i = 0; i < this.f27281d; i++) {
            if (this.f27280b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f27281d; i2++) {
            i = (i * 31) + zm3.m4176e(this.f27280b[i2]);
        }
        return i;
    }

    /* renamed from: k */
    public final String m9604k(int i) {
        int i2 = this.f27281d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27281d;
    }

    static {
        ln3 ln3Var = new ln3(new long[0], 0);
        f27279k = ln3Var;
        ln3Var.mo4629a();
    }

    public ln3(long[] jArr, int i) {
        this.f27280b = jArr;
        this.f27281d = i;
    }

    @Override // p168r4.ym3
    /* renamed from: D */
    public final xm3 mo4192S(int i) {
        if (i >= this.f27281d) {
            return new ln3(Arrays.copyOf(this.f27280b, i), this.f27281d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f27281d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f27280b[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m6129d();
        m9608Y(i);
        long[] jArr = this.f27280b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m6129d();
        zm3.m4180a(collection);
        if (!(collection instanceof ln3)) {
            return super.addAll(collection);
        }
        ln3 ln3Var = (ln3) collection;
        int i = ln3Var.f27281d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f27281d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f27280b;
            if (i3 > jArr.length) {
                this.f27280b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(ln3Var.f27280b, 0, this.f27280b, this.f27281d, ln3Var.f27281d);
            this.f27281d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: g */
    public final long m9606g(int i) {
        m9608Y(i);
        return this.f27280b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m9608Y(i);
        return Long.valueOf(this.f27280b[i]);
    }

    /* renamed from: i */
    public final void m9605i(long j) {
        m6129d();
        int i = this.f27281d;
        long[] jArr = this.f27280b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f27280b = jArr2;
        }
        long[] jArr3 = this.f27280b;
        int i2 = this.f27281d;
        this.f27281d = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m6129d();
        m9608Y(i);
        long[] jArr = this.f27280b;
        long j = jArr[i];
        if (i < this.f27281d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f27281d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6129d();
        if (i2 >= i) {
            long[] jArr = this.f27280b;
            System.arraycopy(jArr, i2, jArr, i, this.f27281d - i2);
            this.f27281d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m9605i(((Long) obj).longValue());
        return true;
    }
}
