package p168r4;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.w33 */
/* loaded from: classes2.dex */
public class w33<K, V> extends l23<K, V> implements Serializable {

    /* renamed from: k */
    public final transient s33<K, ? extends j33<V>> f33052k;

    /* renamed from: p */
    public final transient int f33053p;

    public w33(s33<K, ? extends j33<V>> s33Var, int i) {
        this.f33052k = s33Var;
        this.f33053p = i;
    }

    @Override // p168r4.o43
    @Deprecated
    /* renamed from: a */
    public final boolean mo5895a(K k, V v) {
        throw null;
    }

    @Override // p168r4.k23
    /* renamed from: b */
    public final Set<K> mo5505b() {
        throw new AssertionError("unreachable");
    }

    @Override // p168r4.k23
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Collection mo5894c() {
        return new v33(this);
    }

    @Override // p168r4.k23
    /* renamed from: e */
    public final Map<K, Collection<V>> mo5504e() {
        throw new AssertionError("should never be called");
    }

    @Override // p168r4.k23
    /* renamed from: f */
    public final boolean mo5893f(Object obj) {
        return obj != null && super.mo5893f(obj);
    }

    @Override // p168r4.o43
    /* renamed from: g */
    public final int mo5892g() {
        throw null;
    }

    @Override // p168r4.o43
    @Deprecated
    /* renamed from: j */
    public final void mo5891j() {
        throw null;
    }

    @Override // p168r4.k23, p168r4.o43
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ Collection mo5890n() {
        throw null;
    }

    @Override // p168r4.k23, p168r4.o43
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ Map mo5889t() {
        return this.f33052k;
    }
}
