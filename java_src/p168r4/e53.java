package p168r4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.e53 */
/* loaded from: classes2.dex */
public final class e53<K, V> extends y33<Map.Entry<K, V>> {

    /* renamed from: d */
    public final transient s33<K, V> f22835d;

    /* renamed from: k */
    public final transient Object[] f22836k;

    /* renamed from: p */
    public final transient int f22837p;

    public e53(s33<K, V> s33Var, Object[] objArr, int i, int i2) {
        this.f22835d = s33Var;
        this.f22836k = objArr;
        this.f22837p = i2;
    }

    @Override // p168r4.y33, p168r4.j33
    /* renamed from: d */
    public final r53<Map.Entry<K, V>> mo4919d() {
        return mo4918k().listIterator(0);
    }

    @Override // p168r4.y33, p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return mo4918k().listIterator(0);
    }

    @Override // p168r4.j33
    /* renamed from: m */
    public final int mo6236m(Object[] objArr, int i) {
        return mo4918k().mo6236m(objArr, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22837p;
    }

    @Override // p168r4.y33
    /* renamed from: v */
    public final o33<Map.Entry<K, V>> mo4911v() {
        return new d53(this);
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f22835d.get(key))) {
                return true;
            }
        }
        return false;
    }
}
