package p168r4;

import java.util.AbstractCollection;
import java.util.Iterator;
/* renamed from: r4.j23 */
/* loaded from: classes2.dex */
public final class j23 extends AbstractCollection {

    /* renamed from: a */
    public final /* synthetic */ k23 f25869a;

    public j23(k23 k23Var) {
        this.f25869a = k23Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f25869a.mo5891j();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f25869a.mo5893f(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f25869a.mo10110d();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f25869a.mo5892g();
    }
}
