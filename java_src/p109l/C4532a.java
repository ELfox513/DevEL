package p109l;

import java.util.HashMap;
import java.util.Map;
import p109l.C4533b;
/* renamed from: l.a */
/* loaded from: classes.dex */
public class C4532a<K, V> extends C4533b<K, V> {

    /* renamed from: p */
    public HashMap<K, C4533b.C4536c<K, V>> f18549p = new HashMap<>();

    public boolean contains(K k) {
        return this.f18549p.containsKey(k);
    }

    @Override // p109l.C4533b
    /* renamed from: e */
    public C4533b.C4536c<K, V> mo16068e(K k) {
        return this.f18549p.get(k);
    }

    @Override // p109l.C4533b
    /* renamed from: l */
    public V mo16064l(K k, V v) {
        C4533b.C4536c<K, V> mo16068e = mo16068e(k);
        if (mo16068e != null) {
            return mo16068e.f18555b;
        }
        this.f18549p.put(k, m16065k(k, v));
        return null;
    }

    @Override // p109l.C4533b
    /* renamed from: m */
    public V mo16063m(K k) {
        V v = (V) super.mo16063m(k);
        this.f18549p.remove(k);
        return v;
    }

    /* renamed from: o */
    public Map.Entry<K, V> m16070o(K k) {
        if (contains(k)) {
            return this.f18549p.get(k).f18557k;
        }
        return null;
    }
}
