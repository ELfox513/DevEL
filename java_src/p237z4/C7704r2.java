package p237z4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: z4.r2 */
/* loaded from: classes2.dex */
public class C7704r2 extends AbstractSet {

    /* renamed from: a */
    public final /* synthetic */ C7655i2 f37861a;

    public C7704r2(C7655i2 c7655i2) {
        this.f37861a = c7655i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f37861a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new C7699q2(this.f37861a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f37861a.size();
    }

    public /* synthetic */ C7704r2(C7655i2 c7655i2, C7660j2 c7660j2) {
        this(c7655i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f37861a.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f37861a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            if (obj2 == null || !obj2.equals(value)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f37861a.remove(entry.getKey());
            return true;
        }
        return false;
    }
}
