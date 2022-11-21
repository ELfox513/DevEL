package p168r4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.s23 */
/* loaded from: classes2.dex */
public final class s23 extends AbstractSet {

    /* renamed from: a */
    public final /* synthetic */ w23 f31229a;

    public s23(w23 w23Var) {
        this.f31229a = w23Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f31229a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f31229a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f31229a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        w23 w23Var = this.f31229a;
        Map m5919j = w23Var.m5919j();
        if (m5919j != null) {
            return m5919j.keySet().iterator();
        }
        return new n23(w23Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object m5929C;
        Object obj2;
        Map m5919j = this.f31229a.m5919j();
        if (m5919j != null) {
            return m5919j.keySet().remove(obj);
        }
        m5929C = this.f31229a.m5929C(obj);
        obj2 = w23.f33029u;
        if (m5929C == obj2) {
            return false;
        }
        return true;
    }
}
