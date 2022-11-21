package p168r4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.bp3 */
/* loaded from: classes2.dex */
public final class bp3 extends AbstractSet<Map.Entry> {

    /* renamed from: a */
    public final /* synthetic */ dp3 f21155a;

    public /* synthetic */ bp3(dp3 dp3Var, cp3 cp3Var) {
        this.f21155a = dp3Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f21155a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new ap3(this.f21155a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f21155a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f21155a.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f21155a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value && (obj2 == null || !obj2.equals(value))) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f21155a.remove(entry.getKey());
            return true;
        }
        return false;
    }
}
