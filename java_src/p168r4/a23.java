package p168r4;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* renamed from: r4.a23 */
/* loaded from: classes2.dex */
public class a23 extends t13 implements SortedMap {

    /* renamed from: p */
    public SortedSet f20346p;

    /* renamed from: q */
    public final /* synthetic */ h23 f20347q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a23(h23 h23Var, SortedMap sortedMap) {
        super(h23Var, sortedMap);
        this.f20347q = h23Var;
    }

    /* renamed from: c */
    public SortedSet mo5527c() {
        return new b23(this.f20347q, mo5525e());
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return mo5525e().comparator();
    }

    @Override // p168r4.t13, java.util.AbstractMap, java.util.Map, java.util.SortedMap
    /* renamed from: d */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f20346p;
        if (sortedSet == null) {
            SortedSet mo5527c = mo5527c();
            this.f20346p = mo5527c;
            return mo5527c;
        }
        return sortedSet;
    }

    /* renamed from: e */
    public SortedMap mo5525e() {
        return (SortedMap) this.f31619d;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return mo5525e().firstKey();
    }

    @Override // java.util.SortedMap
    public SortedMap headMap(Object obj) {
        return new a23(this.f20347q, mo5525e().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return mo5525e().lastKey();
    }

    @Override // java.util.SortedMap
    public SortedMap subMap(Object obj, Object obj2) {
        return new a23(this.f20347q, mo5525e().subMap(obj, obj2));
    }

    @Override // java.util.SortedMap
    public SortedMap tailMap(Object obj) {
        return new a23(this.f20347q, mo5525e().tailMap(obj));
    }
}
