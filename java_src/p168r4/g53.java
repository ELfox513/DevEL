package p168r4;

import java.util.Iterator;
/* renamed from: r4.g53 */
/* loaded from: classes2.dex */
public final class g53<K> extends y33<K> {

    /* renamed from: d */
    public final transient s33<K, ?> f23891d;

    /* renamed from: k */
    public final transient o33<K> f23892k;

    public g53(s33<K, ?> s33Var, o33<K> o33Var) {
        this.f23891d = s33Var;
        this.f23892k = o33Var;
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f23891d.get(obj) != null;
    }

    @Override // p168r4.y33, p168r4.j33
    /* renamed from: d */
    public final r53<K> mo4919d() {
        return this.f23892k.listIterator(0);
    }

    @Override // p168r4.y33, p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return this.f23892k.listIterator(0);
    }

    @Override // p168r4.y33, p168r4.j33
    /* renamed from: k */
    public final o33<K> mo4918k() {
        return this.f23892k;
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        return this.f23892k.mo6236m(objArr, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f23891d.size();
    }
}
