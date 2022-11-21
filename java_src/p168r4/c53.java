package p168r4;
/* renamed from: r4.c53 */
/* loaded from: classes2.dex */
public final class c53<E> extends o33<E> {

    /* renamed from: p */
    public static final o33<Object> f21396p = new c53(new Object[0], 0);

    /* renamed from: d */
    public final transient Object[] f21397d;

    /* renamed from: k */
    public final transient int f21398k;

    public c53(Object[] objArr, int i) {
        this.f21397d = objArr;
        this.f21398k = i;
    }

    @Override // p168r4.j33
    /* renamed from: e */
    public final Object[] mo9200e() {
        return this.f21397d;
    }

    @Override // p168r4.j33
    /* renamed from: g */
    public final int mo9199g() {
        return 0;
    }

    @Override // p168r4.j33
    /* renamed from: i */
    public final int mo9198i() {
        return this.f21398k;
    }

    @Override // p168r4.j33
    /* renamed from: l */
    public final boolean mo9197l() {
        return false;
    }

    @Override // p168r4.o33, p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        System.arraycopy(this.f21397d, 0, objArr, i, this.f21398k);
        return i + this.f21398k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21398k;
    }

    @Override // java.util.List
    public final E get(int i) {
        z03.m4492e(i, this.f21398k, "index");
        E e = (E) this.f21397d[i];
        e.getClass();
        return e;
    }
}
