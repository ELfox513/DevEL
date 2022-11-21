package p168r4;
/* renamed from: r4.h53 */
/* loaded from: classes2.dex */
public final class h53 extends o33<Object> {

    /* renamed from: d */
    public final transient Object[] f24449d;

    /* renamed from: k */
    public final transient int f24450k;

    /* renamed from: p */
    public final transient int f24451p;

    public h53(Object[] objArr, int i, int i2) {
        this.f24449d = objArr;
        this.f24450k = i;
        this.f24451p = i2;
    }

    @Override // p168r4.j33
    /* renamed from: l */
    public final boolean mo9197l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24451p;
    }

    @Override // java.util.List
    public final Object get(int i) {
        z03.m4492e(i, this.f24451p, "index");
        Object obj = this.f24449d[i + i + this.f24450k];
        obj.getClass();
        return obj;
    }
}
