package p145p;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: p.a */
/* loaded from: classes.dex */
public class C5270a<K, V> extends C5283g<K, V> implements Map<K, V> {

    /* renamed from: s */
    public AbstractC5277f<K, V> f19772s;

    /* renamed from: p.a$a */
    /* loaded from: classes.dex */
    public class C5271a extends AbstractC5277f<K, V> {
        public C5271a() {
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: a */
        public void mo13688a() {
            C5270a.this.clear();
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: b */
        public Object mo13687b(int i, int i2) {
            return C5270a.this.f19821b[(i << 1) + i2];
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: c */
        public Map<K, V> mo13686c() {
            return C5270a.this;
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: d */
        public int mo13685d() {
            return C5270a.this.f19822d;
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: e */
        public int mo13684e(Object obj) {
            return C5270a.this.m13663f(obj);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: f */
        public int mo13683f(Object obj) {
            return C5270a.this.m13661h(obj);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: g */
        public void mo13682g(K k, V v) {
            C5270a.this.put(k, v);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: h */
        public void mo13681h(int i) {
            C5270a.this.m13658k(i);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: i */
        public V mo13680i(int i, V v) {
            return C5270a.this.m13657l(i, v);
        }
    }

    public C5270a() {
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m13724n().m13677l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m13724n().m13676m();
    }

    /* renamed from: o */
    public boolean m13723o(Collection<?> collection) {
        return AbstractC5277f.m13673p(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m13724n().m13675n();
    }

    public C5270a(int i) {
        super(i);
    }

    /* renamed from: n */
    public final AbstractC5277f<K, V> m13724n() {
        if (this.f19772s == null) {
            this.f19772s = new C5271a();
        }
        return this.f19772s;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m13666c(this.f19822d + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }
}
