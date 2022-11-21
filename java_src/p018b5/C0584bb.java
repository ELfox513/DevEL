package p018b5;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: b5.bb */
/* loaded from: classes2.dex */
public final class C0584bb extends AbstractSet<Map.Entry> {

    /* renamed from: a */
    public final /* synthetic */ C0618db f1749a;

    public /* synthetic */ C0584bb(C0618db c0618db, C0566ab c0566ab) {
        this.f1749a = c0618db;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f1749a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new C0991za(this.f1749a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f1749a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f1749a.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f1749a.get(entry.getKey());
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
            this.f1749a.remove(entry.getKey());
            return true;
        }
        return false;
    }
}
