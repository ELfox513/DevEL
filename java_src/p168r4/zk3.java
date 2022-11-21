package p168r4;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: r4.zk3 */
/* loaded from: classes2.dex */
public final class zk3 extends vk3<Boolean> implements RandomAccess, ho3 {

    /* renamed from: k */
    public static final zk3 f34662k;

    /* renamed from: b */
    public boolean[] f34663b;

    /* renamed from: d */
    public int f34664d;

    public zk3() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m6129d();
        if (i >= 0 && i <= (i2 = this.f34664d)) {
            boolean[] zArr = this.f34663b;
            if (i2 < zArr.length) {
                System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
            } else {
                boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i);
                System.arraycopy(this.f34663b, i, zArr2, i + 1, this.f34664d - i);
                this.f34663b = zArr2;
            }
            this.f34663b[i] = booleanValue;
            this.f34664d++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m4189i(i));
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
        if (!(obj instanceof zk3)) {
            return super.equals(obj);
        }
        zk3 zk3Var = (zk3) obj;
        if (this.f34664d != zk3Var.f34664d) {
            return false;
        }
        boolean[] zArr = zk3Var.f34663b;
        for (int i = 0; i < this.f34664d; i++) {
            if (this.f34663b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m4190g(int i) {
        if (i < 0 || i >= this.f34664d) {
            throw new IndexOutOfBoundsException(m4189i(i));
        }
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f34664d; i2++) {
            i = (i * 31) + zm3.m4175f(this.f34663b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m4189i(int i) {
        int i2 = this.f34664d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34664d;
    }

    static {
        zk3 zk3Var = new zk3(new boolean[0], 0);
        f34662k = zk3Var;
        zk3Var.mo4629a();
    }

    public zk3(boolean[] zArr, int i) {
        this.f34663b = zArr;
        this.f34664d = i;
    }

    @Override // p168r4.ym3
    /* renamed from: S */
    public final /* bridge */ /* synthetic */ ym3 mo4192S(int i) {
        if (i >= this.f34664d) {
            return new zk3(Arrays.copyOf(this.f34663b, i), this.f34664d);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.f34664d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f34663b[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m6129d();
        m4190g(i);
        boolean[] zArr = this.f34663b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // p168r4.vk3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m6129d();
        zm3.m4180a(collection);
        if (!(collection instanceof zk3)) {
            return super.addAll(collection);
        }
        zk3 zk3Var = (zk3) collection;
        int i = zk3Var.f34664d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f34664d;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f34663b;
            if (i3 > zArr.length) {
                this.f34663b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(zk3Var.f34663b, 0, this.f34663b, this.f34664d, zk3Var.f34664d);
            this.f34664d = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: e */
    public final void m4191e(boolean z) {
        m6129d();
        int i = this.f34664d;
        boolean[] zArr = this.f34663b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f34663b = zArr2;
        }
        boolean[] zArr3 = this.f34663b;
        int i2 = this.f34664d;
        this.f34664d = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        m4190g(i);
        return Boolean.valueOf(this.f34663b[i]);
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        int i2;
        m6129d();
        m4190g(i);
        boolean[] zArr = this.f34663b;
        boolean z = zArr[i];
        if (i < this.f34664d - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f34664d--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6129d();
        if (i2 >= i) {
            boolean[] zArr = this.f34663b;
            System.arraycopy(zArr, i2, zArr, i, this.f34664d - i2);
            this.f34664d -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // p168r4.vk3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m4191e(((Boolean) obj).booleanValue());
        return true;
    }
}
