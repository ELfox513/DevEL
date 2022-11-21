package p237z4;

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
/* renamed from: z4.i2 */
/* loaded from: classes2.dex */
public class C7655i2<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f37762a;

    /* renamed from: b */
    public List<C7694p2> f37763b;

    /* renamed from: d */
    public Map<K, V> f37764d;

    /* renamed from: k */
    public boolean f37765k;

    /* renamed from: p */
    public volatile C7704r2 f37766p;

    /* renamed from: q */
    public Map<K, V> f37767q;

    /* renamed from: r */
    public volatile C7670l2 f37768r;

    public C7655i2(int i) {
        this.f37762a = i;
        this.f37763b = Collections.emptyList();
        this.f37764d = Collections.emptyMap();
        this.f37767q = Collections.emptyMap();
    }

    /* renamed from: f */
    public static <FieldDescriptorType extends InterfaceC7648h0<FieldDescriptorType>> C7655i2<FieldDescriptorType, Object> m690f(int i) {
        return new C7660j2(i);
    }

    /* renamed from: a */
    public final boolean m695a() {
        return this.f37765k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7655i2)) {
            return super.equals(obj);
        }
        C7655i2 c7655i2 = (C7655i2) obj;
        int size = size();
        if (size != c7655i2.size()) {
            return false;
        }
        int m684m = m684m();
        if (m684m != c7655i2.m684m()) {
            return entrySet().equals(c7655i2.entrySet());
        }
        for (int i = 0; i < m684m; i++) {
            if (!m689g(i).equals(c7655i2.m689g(i))) {
                return false;
            }
        }
        if (m684m != size) {
            return this.f37764d.equals(c7655i2.f37764d);
        }
        return true;
    }

    /* renamed from: g */
    public final Map.Entry<K, V> m689g(int i) {
        return this.f37763b.get(i);
    }

    /* renamed from: m */
    public final int m684m() {
        return this.f37763b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f37763b.size() + this.f37764d.size();
    }

    /* renamed from: b */
    public final int m694b(K k) {
        int size = this.f37763b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f37763b.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.f37763b.get(i2).getKey());
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (m694b(comparable) < 0 && !this.f37764d.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f37766p == null) {
            this.f37766p = new C7704r2(this, null);
        }
        return this.f37766p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m694b = m694b(comparable);
        if (m694b >= 0) {
            return (V) this.f37763b.get(m694b).getValue();
        }
        return this.f37764d.get(comparable);
    }

    /* renamed from: j */
    public void mo677j() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.f37765k) {
            if (this.f37764d.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f37764d);
            }
            this.f37764d = unmodifiableMap;
            if (this.f37767q.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f37767q);
            }
            this.f37767q = unmodifiableMap2;
            this.f37765k = true;
        }
    }

    /* renamed from: n */
    public final Iterable<Map.Entry<K, V>> m683n() {
        if (this.f37764d.isEmpty()) {
            return C7679m2.m646a();
        }
        return this.f37764d.entrySet();
    }

    /* renamed from: o */
    public final Set<Map.Entry<K, V>> m682o() {
        if (this.f37768r == null) {
            this.f37768r = new C7670l2(this, null);
        }
        return this.f37768r;
    }

    /* renamed from: p */
    public final void m681p() {
        if (!this.f37765k) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: c */
    public final V put(K k, V v) {
        m681p();
        int m694b = m694b(k);
        if (m694b >= 0) {
            return (V) this.f37763b.get(m694b).setValue(v);
        }
        m681p();
        if (this.f37763b.isEmpty() && !(this.f37763b instanceof ArrayList)) {
            this.f37763b = new ArrayList(this.f37762a);
        }
        int i = -(m694b + 1);
        if (i >= this.f37762a) {
            return m680q().put(k, v);
        }
        int size = this.f37763b.size();
        int i2 = this.f37762a;
        if (size == i2) {
            C7694p2 remove = this.f37763b.remove(i2 - 1);
            m680q().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.f37763b.add(i, new C7694p2(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m681p();
        if (!this.f37763b.isEmpty()) {
            this.f37763b.clear();
        }
        if (!this.f37764d.isEmpty()) {
            this.f37764d.clear();
        }
    }

    /* renamed from: h */
    public final V m688h(int i) {
        m681p();
        V v = (V) this.f37763b.remove(i).getValue();
        if (!this.f37764d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m680q().entrySet().iterator();
            this.f37763b.add(new C7694p2(this, it.next()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m684m = m684m();
        int i = 0;
        for (int i2 = 0; i2 < m684m; i2++) {
            i += this.f37763b.get(i2).hashCode();
        }
        if (this.f37764d.size() > 0) {
            return i + this.f37764d.hashCode();
        }
        return i;
    }

    /* renamed from: q */
    public final SortedMap<K, V> m680q() {
        m681p();
        if (this.f37764d.isEmpty() && !(this.f37764d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f37764d = treeMap;
            this.f37767q = treeMap.descendingMap();
        }
        return (SortedMap) this.f37764d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m681p();
        Comparable comparable = (Comparable) obj;
        int m694b = m694b(comparable);
        if (m694b >= 0) {
            return (V) m688h(m694b);
        }
        if (this.f37764d.isEmpty()) {
            return null;
        }
        return this.f37764d.remove(comparable);
    }

    public /* synthetic */ C7655i2(int i, C7660j2 c7660j2) {
        this(i);
    }
}
