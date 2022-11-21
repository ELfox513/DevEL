package p168r4;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* renamed from: r4.b23 */
/* loaded from: classes2.dex */
public class b23 extends w13 implements SortedSet {

    /* renamed from: d */
    public final /* synthetic */ h23 f20817d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b23(h23 h23Var, SortedMap sortedMap) {
        super(h23Var, sortedMap);
        this.f20817d = h23Var;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return mo4932d().comparator();
    }

    /* renamed from: d */
    public SortedMap mo4932d() {
        return (SortedMap) this.f26289a;
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return mo4932d().firstKey();
    }

    @Override // java.util.SortedSet
    public SortedSet headSet(Object obj) {
        return new b23(this.f20817d, mo4932d().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return mo4932d().lastKey();
    }

    @Override // java.util.SortedSet
    public SortedSet subSet(Object obj, Object obj2) {
        return new b23(this.f20817d, mo4932d().subMap(obj, obj2));
    }

    @Override // java.util.SortedSet
    public SortedSet tailSet(Object obj) {
        return new b23(this.f20817d, mo4932d().tailMap(obj));
    }
}
