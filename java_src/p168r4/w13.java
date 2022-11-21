package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.w13 */
/* loaded from: classes2.dex */
public class w13 extends k43 {

    /* renamed from: b */
    public final /* synthetic */ h23 f33021b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w13(h23 h23Var, Map map) {
        super(map);
        this.f33021b = h23Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        c43.m12615b(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return this.f26289a.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.f26289a.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f26289a.keySet().hashCode();
    }

    @Override // p168r4.k43, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new v13(this, this.f26289a.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        Collection collection = (Collection) this.f26289a.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            h23 h23Var = this.f33021b;
            i = h23Var.f24414p;
            h23Var.f24414p = i - size;
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
