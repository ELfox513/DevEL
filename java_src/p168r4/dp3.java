package p168r4;

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
/* renamed from: r4.dp3 */
/* loaded from: classes2.dex */
public class dp3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f22399a;

    /* renamed from: k */
    public boolean f22402k;

    /* renamed from: p */
    public volatile bp3 f22403p;

    /* renamed from: b */
    public List<zo3> f22400b = Collections.emptyList();

    /* renamed from: d */
    public Map<K, V> f22401d = Collections.emptyMap();

    /* renamed from: q */
    public Map<K, V> f22404q = Collections.emptyMap();

    /* renamed from: d */
    public final boolean m12009d() {
        return this.f22402k;
    }

    /* renamed from: e */
    public final int m12008e() {
        return this.f22400b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f22403p == null) {
            this.f22403p = new bp3(this, null);
        }
        return this.f22403p;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dp3)) {
            return super.equals(obj);
        }
        dp3 dp3Var = (dp3) obj;
        int size = size();
        if (size != dp3Var.size()) {
            return false;
        }
        int m12008e = m12008e();
        if (m12008e == dp3Var.m12008e()) {
            for (int i = 0; i < m12008e; i++) {
                if (!m12007f(i).equals(dp3Var.m12007f(i))) {
                    return false;
                }
            }
            if (m12008e != size) {
                return this.f22401d.equals(dp3Var.f22401d);
            }
            return true;
        }
        return entrySet().equals(dp3Var.entrySet());
    }

    /* renamed from: f */
    public final Map.Entry<K, V> m12007f(int i) {
        return this.f22400b.get(i);
    }

    /* renamed from: m */
    public final void m12000m() {
        if (this.f22402k) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f22400b.size() + this.f22401d.size();
    }

    /* renamed from: a */
    public void mo6043a() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.f22402k) {
            if (this.f22401d.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f22401d);
            }
            this.f22401d = unmodifiableMap;
            if (this.f22404q.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f22404q);
            }
            this.f22404q = unmodifiableMap2;
            this.f22402k = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (m12001l(comparable) < 0 && !this.f22401d.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    /* renamed from: g */
    public final Iterable<Map.Entry<K, V>> m12006g() {
        if (this.f22401d.isEmpty()) {
            return yo3.m4622b();
        }
        return this.f22401d.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m12001l = m12001l(comparable);
        if (m12001l >= 0) {
            return (V) this.f22400b.get(m12001l).getValue();
        }
        return this.f22401d.get(comparable);
    }

    /* renamed from: l */
    public final int m12001l(K k) {
        int size = this.f22400b.size() - 1;
        int i = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f22400b.get(size).m4156c());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo(this.f22400b.get(i2).m4156c());
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
        m12000m();
        if (!this.f22400b.isEmpty()) {
            this.f22400b.clear();
        }
        if (!this.f22401d.isEmpty()) {
            this.f22401d.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: h */
    public final V put(K k, V v) {
        m12000m();
        int m12001l = m12001l(k);
        if (m12001l >= 0) {
            return (V) this.f22400b.get(m12001l).setValue(v);
        }
        m12000m();
        if (this.f22400b.isEmpty() && !(this.f22400b instanceof ArrayList)) {
            this.f22400b = new ArrayList(this.f22399a);
        }
        int i = -(m12001l + 1);
        if (i >= this.f22399a) {
            return m11999n().put(k, v);
        }
        int size = this.f22400b.size();
        int i2 = this.f22399a;
        if (size == i2) {
            zo3 remove = this.f22400b.remove(i2 - 1);
            m11999n().put((K) remove.m4156c(), (V) remove.getValue());
        }
        this.f22400b.add(i, new zo3(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m12008e = m12008e();
        int i = 0;
        for (int i2 = 0; i2 < m12008e; i2++) {
            i += this.f22400b.get(i2).hashCode();
        }
        if (this.f22401d.size() > 0) {
            return i + this.f22401d.hashCode();
        }
        return i;
    }

    /* renamed from: k */
    public final V m12002k(int i) {
        m12000m();
        V v = (V) this.f22400b.remove(i).getValue();
        if (!this.f22401d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m11999n().entrySet().iterator();
            List<zo3> list = this.f22400b;
            Map.Entry<K, V> next = it.next();
            list.add(new zo3(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: n */
    public final SortedMap<K, V> m11999n() {
        m12000m();
        if (this.f22401d.isEmpty() && !(this.f22401d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f22401d = treeMap;
            this.f22404q = treeMap.descendingMap();
        }
        return (SortedMap) this.f22401d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m12000m();
        Comparable comparable = (Comparable) obj;
        int m12001l = m12001l(comparable);
        if (m12001l >= 0) {
            return (V) m12002k(m12001l);
        }
        if (this.f22401d.isEmpty()) {
            return null;
        }
        return this.f22401d.remove(comparable);
    }
}
