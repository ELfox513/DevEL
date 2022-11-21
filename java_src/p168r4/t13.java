package p168r4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.t13 */
/* loaded from: classes2.dex */
public class t13 extends m43 {

    /* renamed from: d */
    public final transient Map f31619d;

    /* renamed from: k */
    public final /* synthetic */ h23 f31620k;

    public t13(h23 h23Var, Map map) {
        this.f31620k = h23Var;
        this.f31619d = map;
    }

    @Override // p168r4.m43
    /* renamed from: a */
    public final Set<Map.Entry> mo6934a() {
        return new r13(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.f31619d.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f31619d.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set keySet() {
        return this.f31620k.m10109h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f31619d.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f31619d.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map;
        Map map2 = this.f31619d;
        map = this.f31620k.f24413k;
        if (map2 == map) {
            this.f31620k.mo5891j();
        } else {
            c43.m12615b(new s13(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f31619d;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        Collection collection = (Collection) n43.m9159a(this.f31619d, obj);
        if (collection == null) {
            return null;
        }
        return this.f31620k.mo8517k(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        int i;
        Collection collection = (Collection) this.f31619d.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection mo5503l = this.f31620k.mo5503l();
        mo5503l.addAll(collection);
        h23 h23Var = this.f31620k;
        i = h23Var.f24414p;
        h23Var.f24414p = i - collection.size();
        collection.clear();
        return mo5503l;
    }

    /* renamed from: b */
    public final Map.Entry m6933b(Map.Entry entry) {
        Object key = entry.getKey();
        return new k33(key, this.f31620k.mo8517k(key, (Collection) entry.getValue()));
    }
}
