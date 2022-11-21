package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* renamed from: r4.x13 */
/* loaded from: classes2.dex */
public final class x13 extends a23 implements NavigableMap {

    /* renamed from: r */
    public final /* synthetic */ h23 f33411r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x13(h23 h23Var, NavigableMap navigableMap) {
        super(h23Var, navigableMap);
        this.f33411r = h23Var;
    }

    @Override // p168r4.a23
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ SortedSet mo5526d() {
        return (NavigableSet) super.keySet();
    }

    @Override // p168r4.a23, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // p168r4.a23, p168r4.t13, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public final /* bridge */ /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return m5524f(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return m5524f(descendingMap().entrySet().iterator());
    }

    @Override // p168r4.a23, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // p168r4.a23, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) this.f31619d)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return m6933b(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f31619d)).ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new x13(this.f33411r, ((NavigableMap) ((SortedMap) this.f31619d)).descendingMap());
    }

    @Override // p168r4.a23
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ SortedMap mo5525e() {
        return (NavigableMap) ((SortedMap) this.f31619d);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) this.f31619d)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return m6933b(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) this.f31619d)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return m6933b(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f31619d)).floorKey(obj);
    }

    @Override // p168r4.a23
    /* renamed from: g */
    public final NavigableSet mo5527c() {
        return new y13(this.f33411r, (NavigableMap) ((SortedMap) this.f31619d));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new x13(this.f33411r, ((NavigableMap) ((SortedMap) this.f31619d)).headMap(obj, z));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) this.f31619d)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return m6933b(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f31619d)).higherKey(obj);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) this.f31619d)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return m6933b(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) this.f31619d)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return m6933b(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f31619d)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new x13(this.f33411r, ((NavigableMap) ((SortedMap) this.f31619d)).subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new x13(this.f33411r, ((NavigableMap) ((SortedMap) this.f31619d)).tailMap(obj, z));
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    /* renamed from: f */
    public final Map.Entry m5524f(Iterator<Map.Entry> it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry next = it.next();
        Collection mo5503l = this.f33411r.mo5503l();
        mo5503l.addAll((Collection) next.getValue());
        it.remove();
        return new k33(next.getKey(), this.f33411r.mo8518i(mo5503l));
    }
}
