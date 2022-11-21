package p237z4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: z4.f1 */
/* loaded from: classes2.dex */
public final class C7639f1 extends AbstractC7637f<Long> implements InterfaceC7621c2, RandomAccess {

    /* renamed from: k */
    public static final C7639f1 f37684k;

    /* renamed from: b */
    public long[] f37685b;

    /* renamed from: d */
    public int f37686d;

    public C7639f1() {
        this(new long[10], 0);
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7639f1)) {
            return super.equals(obj);
        }
        C7639f1 c7639f1 = (C7639f1) obj;
        if (this.f37686d != c7639f1.f37686d) {
            return false;
        }
        long[] jArr = c7639f1.f37685b;
        for (int i = 0; i < this.f37686d; i++) {
            if (this.f37685b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m787e(i));
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f37686d; i2++) {
            i = (i * 31) + C7687o0.m627j(this.f37685b[i2]);
        }
        return i;
    }

    /* renamed from: k */
    public final String m784k(int i) {
        int i2 = this.f37686d;
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
        for (int i = 0; i < this.f37686d; i++) {
            if (obj.equals(Long.valueOf(this.f37685b[i]))) {
                long[] jArr = this.f37685b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f37686d - i) - 1);
                this.f37686d--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f37686d;
    }

    static {
        C7639f1 c7639f1 = new C7639f1(new long[0], 0);
        f37684k = c7639f1;
        c7639f1.mo618j0();
    }

    public C7639f1(long[] jArr, int i) {
        this.f37685b = jArr;
        this.f37686d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m786g(i, ((Long) obj).longValue());
    }

    /* renamed from: i */
    public final void m785i(int i) {
        if (i >= 0 && i < this.f37686d) {
            return;
        }
        throw new IndexOutOfBoundsException(m784k(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m806d();
        m785i(i);
        long[] jArr = this.f37685b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // p237z4.InterfaceC7697q0
    /* renamed from: z0 */
    public final /* synthetic */ InterfaceC7697q0 mo401z0(int i) {
        if (i >= this.f37686d) {
            return new C7639f1(Arrays.copyOf(this.f37685b, i), this.f37686d);
        }
        throw new IllegalArgumentException();
    }

    @Override // p237z4.AbstractC7637f, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m806d();
        C7687o0.m636a(collection);
        if (!(collection instanceof C7639f1)) {
            return super.addAll(collection);
        }
        C7639f1 c7639f1 = (C7639f1) collection;
        int i = c7639f1.f37686d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f37686d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f37685b;
            if (i3 > jArr.length) {
                this.f37685b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(c7639f1.f37685b, 0, this.f37685b, this.f37686d, c7639f1.f37686d);
            this.f37686d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final long m787e(int i) {
        m785i(i);
        return this.f37685b[i];
    }

    /* renamed from: g */
    public final void m786g(int i, long j) {
        int i2;
        m806d();
        if (i >= 0 && i <= (i2 = this.f37686d)) {
            long[] jArr = this.f37685b;
            if (i2 < jArr.length) {
                System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
            } else {
                long[] jArr2 = new long[((i2 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i);
                System.arraycopy(this.f37685b, i, jArr2, i + 1, this.f37686d - i);
                this.f37685b = jArr2;
            }
            this.f37685b[i] = j;
            this.f37686d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m784k(i));
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m806d();
        if (i2 >= i) {
            long[] jArr = this.f37685b;
            System.arraycopy(jArr, i2, jArr, i, this.f37686d - i2);
            this.f37686d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        m806d();
        m785i(i);
        long[] jArr = this.f37685b;
        long j = jArr[i];
        if (i < this.f37686d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f37686d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }
}
