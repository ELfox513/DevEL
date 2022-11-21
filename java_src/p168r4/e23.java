package p168r4;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.e23 */
/* loaded from: classes2.dex */
public class e23 extends AbstractCollection {

    /* renamed from: a */
    public final Object f22758a;

    /* renamed from: b */
    public Collection f22759b;

    /* renamed from: d */
    public final e23 f22760d;

    /* renamed from: k */
    public final Collection f22761k;

    /* renamed from: p */
    public final /* synthetic */ h23 f22762p;

    public e23(h23 h23Var, Object obj, Collection collection, e23 e23Var) {
        this.f22762p = h23Var;
        this.f22758a = obj;
        this.f22759b = collection;
        this.f22760d = e23Var;
        this.f22761k = e23Var == null ? null : e23Var.f22759b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m11876a() {
        Map map;
        e23 e23Var = this.f22760d;
        if (e23Var != null) {
            e23Var.m11876a();
        } else if (this.f22759b.isEmpty()) {
            map = this.f22762p.f24413k;
            map.remove(this.f22758a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m11875d() {
        Map map;
        e23 e23Var = this.f22760d;
        if (e23Var != null) {
            e23Var.m11875d();
            if (this.f22760d.f22759b != this.f22761k) {
                throw new ConcurrentModificationException();
            }
        } else if (this.f22759b.isEmpty()) {
            map = this.f22762p.f24413k;
            Collection collection = (Collection) map.get(this.f22758a);
            if (collection != null) {
                this.f22759b = collection;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m11874e() {
        Map map;
        e23 e23Var = this.f22760d;
        if (e23Var != null) {
            e23Var.m11874e();
            return;
        }
        map = this.f22762p.f24413k;
        map.put(this.f22758a, this.f22759b);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        m11875d();
        return this.f22759b.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        m11875d();
        boolean isEmpty = this.f22759b.isEmpty();
        boolean add = this.f22759b.add(obj);
        if (add) {
            h23 h23Var = this.f22762p;
            i = h23Var.f24414p;
            h23Var.f24414p = i + 1;
            if (isEmpty) {
                m11874e();
                return true;
            }
        }
        return add;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.f22759b.addAll(collection);
        if (addAll) {
            int size2 = this.f22759b.size();
            h23 h23Var = this.f22762p;
            i = h23Var.f24414p;
            h23Var.f24414p = i + (size2 - size);
            if (size == 0) {
                m11874e();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i;
        int size = size();
        if (size == 0) {
            return;
        }
        this.f22759b.clear();
        h23 h23Var = this.f22762p;
        i = h23Var.f24414p;
        h23Var.f24414p = i - size;
        m11876a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        m11875d();
        return this.f22759b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        m11875d();
        return this.f22759b.containsAll(collection);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        m11875d();
        return this.f22759b.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        m11875d();
        return new c23(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        m11875d();
        boolean remove = this.f22759b.remove(obj);
        if (remove) {
            h23 h23Var = this.f22762p;
            i = h23Var.f24414p;
            h23Var.f24414p = i - 1;
            m11876a();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.f22759b.removeAll(collection);
        if (removeAll) {
            int size2 = this.f22759b.size();
            h23 h23Var = this.f22762p;
            i = h23Var.f24414p;
            h23Var.f24414p = i + (size2 - size);
            m11876a();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        int i;
        collection.getClass();
        int size = size();
        boolean retainAll = this.f22759b.retainAll(collection);
        if (retainAll) {
            int size2 = this.f22759b.size();
            h23 h23Var = this.f22762p;
            i = h23Var.f24414p;
            h23Var.f24414p = i + (size2 - size);
            m11876a();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        m11875d();
        return this.f22759b.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        m11875d();
        return this.f22759b.toString();
    }
}
