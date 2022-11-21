package p168r4;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;
/* renamed from: r4.y13 */
/* loaded from: classes2.dex */
public final class y13 extends b23 implements NavigableSet {

    /* renamed from: k */
    public final /* synthetic */ h23 f33838k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y13(h23 h23Var, NavigableMap navigableMap) {
        super(h23Var, navigableMap);
        this.f33838k = h23Var;
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return descendingSet().iterator();
    }

    @Override // p168r4.b23, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        return c43.m12616a(iterator());
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        return c43.m12616a(descendingIterator());
    }

    @Override // p168r4.b23, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // p168r4.b23, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f26289a)).ceilingKey(obj);
    }

    @Override // p168r4.b23
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ SortedMap mo4932d() {
        return (NavigableMap) ((SortedMap) this.f26289a);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new y13(this.f33838k, ((NavigableMap) ((SortedMap) this.f26289a)).descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f26289a)).floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new y13(this.f33838k, ((NavigableMap) ((SortedMap) this.f26289a)).headMap(obj, z));
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f26289a)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f26289a)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new y13(this.f33838k, ((NavigableMap) ((SortedMap) this.f26289a)).subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new y13(this.f33838k, ((NavigableMap) ((SortedMap) this.f26289a)).tailMap(obj, z));
    }
}
