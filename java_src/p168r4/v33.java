package p168r4;

import java.util.Iterator;
/* renamed from: r4.v33 */
/* loaded from: classes2.dex */
public final class v33<K, V> extends j33<V> {

    /* renamed from: b */
    public final transient w33<K, V> f32572b;

    public v33(w33<K, V> w33Var) {
        this.f32572b = w33Var;
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f32572b.mo5893f(obj);
    }

    @Override // p168r4.j33
    /* renamed from: d */
    public final r53<V> mo4919d() {
        return new t33(this.f32572b);
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new t33(this.f32572b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f32572b.f33053p;
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        s53 listIterator = ((o33) this.f32572b.f33052k.values()).listIterator(0);
        while (listIterator.hasNext()) {
            i = ((j33) listIterator.next()).mo6236m(objArr, i);
        }
        return i;
    }
}
