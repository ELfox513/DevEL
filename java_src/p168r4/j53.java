package p168r4;

import java.util.Iterator;
/* renamed from: r4.j53 */
/* loaded from: classes2.dex */
public final class j53<E> extends y33<E> {

    /* renamed from: s */
    public static final Object[] f25901s;

    /* renamed from: t */
    public static final j53<Object> f25902t;

    /* renamed from: d */
    public final transient Object[] f25903d;

    /* renamed from: k */
    public final transient int f25904k;

    /* renamed from: p */
    public final transient Object[] f25905p;

    /* renamed from: q */
    public final transient int f25906q;

    /* renamed from: r */
    public final transient int f25907r;

    static {
        Object[] objArr = new Object[0];
        f25901s = objArr;
        f25902t = new j53<>(objArr, 0, objArr, 0, 0);
    }

    public j53(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f25903d = objArr;
        this.f25904k = i;
        this.f25905p = objArr2;
        this.f25906q = i2;
        this.f25907r = i3;
    }

    @Override // p168r4.y33, p168r4.j33
    /* renamed from: d */
    public final r53<E> mo4919d() {
        return mo4918k().listIterator(0);
    }

    @Override // p168r4.j33
    /* renamed from: e */
    public final Object[] mo9200e() {
        return this.f25903d;
    }

    @Override // p168r4.j33
    /* renamed from: g */
    public final int mo9199g() {
        return 0;
    }

    @Override // p168r4.y33, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f25904k;
    }

    @Override // p168r4.j33
    /* renamed from: i */
    public final int mo9198i() {
        return this.f25907r;
    }

    @Override // p168r4.y33, p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return mo4918k().listIterator(0);
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        System.arraycopy(this.f25903d, 0, objArr, i, this.f25907r);
        return i + this.f25907r;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f25907r;
    }

    @Override // p168r4.y33
    /* renamed from: u */
    public final boolean mo4912u() {
        return true;
    }

    @Override // p168r4.y33
    /* renamed from: v */
    public final o33<E> mo4911v() {
        return o33.m8904A(this.f25903d, this.f25907r);
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.f25905p;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int m11297b = g33.m11297b(obj);
        while (true) {
            int i = m11297b & this.f25906q;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            m11297b = i + 1;
        }
    }
}
