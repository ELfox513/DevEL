package p018b5;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: b5.db */
/* loaded from: classes2.dex */
public class C0618db<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f1778a;

    /* renamed from: k */
    public boolean f1781k;

    /* renamed from: p */
    public volatile C0584bb f1782p;

    /* renamed from: b */
    public List<C0940wa> f1779b = Collections.emptyList();

    /* renamed from: d */
    public Map<K, V> f1780d = Collections.emptyMap();

    /* renamed from: q */
    public Map<K, V> f1783q = Collections.emptyMap();

    /* renamed from: b */
    public final int m26052b() {
        return this.f1779b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f1782p == null) {
            this.f1782p = new C0584bb(this, null);
        }
        return this.f1782p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0618db)) {
            return super.equals(obj);
        }
        C0618db c0618db = (C0618db) obj;
        int size = size();
        if (size != c0618db.size()) {
            return false;
        }
        int m26052b = m26052b();
        if (m26052b == c0618db.m26052b()) {
            for (int i = 0; i < m26052b; i++) {
                if (!m26047g(i).equals(c0618db.m26047g(i))) {
                    return false;
                }
            }
            if (m26052b != size) {
                return this.f1780d.equals(c0618db.f1780d);
            }
            return true;
        }
        return entrySet().equals(c0618db.entrySet());
    }

    /* renamed from: g */
    public final Map.Entry<K, V> m26047g(int i) {
        return this.f1779b.get(i);
    }

    /* renamed from: j */
    public final boolean m26044j() {
        return this.f1781k;
    }

    /* renamed from: n */
    public final void m26040n() {
        if (this.f1781k) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f1779b.size() + this.f1780d.size();
    }

    /* renamed from: a */
    public void mo25252a() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.f1781k) {
            if (this.f1780d.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f1780d);
            }
            this.f1780d = unmodifiableMap;
            if (this.f1783q.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f1783q);
            }
            this.f1783q = unmodifiableMap2;
            this.f1781k = true;
        }
    }

    /* renamed from: c */
    public final Iterable<Map.Entry<K, V>> m26051c() {
        if (this.f1780d.isEmpty()) {
            return C0923va.m25063a();
        }
        return this.f1780d.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (m26043k(comparable) < 0 && !this.f1780d.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m26043k = m26043k(comparable);
        if (m26043k >= 0) {
            return (V) this.f1779b.get(m26043k).getValue();
        }
        return this.f1780d.get(comparable);
    }

    /* renamed from: k */
    public final int m26043k(K k) {
        int size = this.f1779b.size() - 1;
        int i = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f1779b.get(size).m25026c());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo(this.f1779b.get(i2).m25026c());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 > 0) {
                i = i2 + 1;
            } else {
                return i2;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m26040n();
        if (!this.f1779b.isEmpty()) {
            this.f1779b.clear();
        }
        if (!this.f1780d.isEmpty()) {
            this.f1780d.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: e */
    public final V put(K k, V v) {
        m26040n();
        int m26043k = m26043k(k);
        if (m26043k >= 0) {
            return (V) this.f1779b.get(m26043k).setValue(v);
        }
        m26040n();
        if (this.f1779b.isEmpty() && !(this.f1779b instanceof ArrayList)) {
            this.f1779b = new ArrayList(this.f1778a);
        }
        int i = -(m26043k + 1);
        if (i >= this.f1778a) {
            return m26041m().put(k, v);
        }
        int size = this.f1779b.size();
        int i2 = this.f1778a;
        if (size == i2) {
            C0940wa remove = this.f1779b.remove(i2 - 1);
            m26041m().put((K) remove.m25026c(), (V) remove.getValue());
        }
        this.f1779b.add(i, new C0940wa(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m26052b = m26052b();
        int i = 0;
        for (int i2 = 0; i2 < m26052b; i2++) {
            i += this.f1779b.get(i2).hashCode();
        }
        if (this.f1780d.size() > 0) {
            return i + this.f1780d.hashCode();
        }
        return i;
    }

    /* renamed from: l */
    public final V m26042l(int i) {
        m26040n();
        V v = (V) this.f1779b.remove(i).getValue();
        if (!this.f1780d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m26041m().entrySet().iterator();
            List<C0940wa> list = this.f1779b;
            Map.Entry<K, V> next = it.next();
            list.add(new C0940wa(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: m */
    public final SortedMap<K, V> m26041m() {
        m26040n();
        if (this.f1780d.isEmpty() && !(this.f1780d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f1780d = treeMap;
            this.f1783q = treeMap.descendingMap();
        }
        return (SortedMap) this.f1780d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m26040n();
        Comparable comparable = (Comparable) obj;
        int m26043k = m26043k(comparable);
        if (m26043k >= 0) {
            return (V) m26042l(m26043k);
        }
        if (this.f1780d.isEmpty()) {
            return null;
        }
        return this.f1780d.remove(comparable);
    }
}
