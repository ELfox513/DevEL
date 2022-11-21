package p168r4;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.r13 */
/* loaded from: classes2.dex */
public final class r13 extends j43 {

    /* renamed from: a */
    public final /* synthetic */ t13 f30409a;

    public r13(t13 t13Var) {
        this.f30409a = t13Var;
    }

    @Override // p168r4.j43
    /* renamed from: d */
    public final Map mo7626d() {
        return this.f30409a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new s13(this.f30409a);
    }

    @Override // p168r4.j43, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Set entrySet = this.f30409a.f31619d.entrySet();
        entrySet.getClass();
        try {
            return entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        h23.m11002s(this.f30409a.f31620k, entry.getKey());
        return true;
    }
}
