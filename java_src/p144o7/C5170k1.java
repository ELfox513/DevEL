package p144o7;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import p144o7.C5226u;
/* renamed from: o7.k1 */
/* loaded from: classes2.dex */
public class C5170k1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f19474a;

    /* renamed from: b */
    public List<C5170k1<K, V>.C5177e> f19475b;

    /* renamed from: d */
    public Map<K, V> f19476d;

    /* renamed from: k */
    public boolean f19477k;

    /* renamed from: p */
    public volatile C5170k1<K, V>.C5179g f19478p;

    /* renamed from: q */
    public Map<K, V> f19479q;

    /* renamed from: r */
    public volatile C5170k1<K, V>.C5173c f19480r;

    /* renamed from: o7.k1$b */
    /* loaded from: classes2.dex */
    public class C5172b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f19481a;

        /* renamed from: b */
        public Iterator<Map.Entry<K, V>> f19482b;

        public C5172b() {
            this.f19481a = C5170k1.this.f19475b.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f19481a;
            return (i > 0 && i <= C5170k1.this.f19475b.size()) || m14231a().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m14231a() {
            if (this.f19482b == null) {
                this.f19482b = C5170k1.this.f19479q.entrySet().iterator();
            }
            return this.f19482b;
        }

        public /* synthetic */ C5172b(C5170k1 c5170k1, C5171a c5171a) {
            this();
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (m14231a().hasNext()) {
                return m14231a().next();
            }
            List list = C5170k1.this.f19475b;
            int i = this.f19481a - 1;
            this.f19481a = i;
            return (Map.Entry) list.get(i);
        }
    }

    /* renamed from: o7.k1$c */
    /* loaded from: classes2.dex */
    public class C5173c extends C5170k1<K, V>.C5179g {
        public C5173c() {
            super(C5170k1.this, null);
        }

        @Override // p144o7.C5170k1.C5179g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5172b(C5170k1.this, null);
        }

        public /* synthetic */ C5173c(C5170k1 c5170k1, C5171a c5171a) {
            this();
        }
    }

    /* renamed from: o7.k1$d */
    /* loaded from: classes2.dex */
    public static class C5174d {

        /* renamed from: a */
        public static final Iterator<Object> f19485a = new C5175a();

        /* renamed from: b */
        public static final Iterable<Object> f19486b = new C5176b();

        /* renamed from: o7.k1$d$a */
        /* loaded from: classes2.dex */
        public static class C5175a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* renamed from: o7.k1$d$b */
        /* loaded from: classes2.dex */
        public static class C5176b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return C5174d.f19485a;
            }
        }

        /* renamed from: b */
        public static <T> Iterable<T> m14228b() {
            return (Iterable<T>) f19486b;
        }
    }

    /* renamed from: o7.k1$e */
    /* loaded from: classes2.dex */
    public class C5177e implements Map.Entry<K, V>, Comparable<C5170k1<K, V>.C5177e> {

        /* renamed from: a */
        public final K f19487a;

        /* renamed from: b */
        public V f19488b;

        public C5177e(C5170k1 c5170k1, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(C5170k1<K, V>.C5177e c5177e) {
            return getKey().compareTo(c5177e.getKey());
        }

        /* renamed from: d */
        public final boolean m14226d(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return m14226d(this.f19487a, entry.getKey()) && m14226d(this.f19488b, entry.getValue());
        }

        @Override // java.util.Map.Entry
        /* renamed from: f */
        public K getKey() {
            return this.f19487a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f19488b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f19487a;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f19488b;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        public String toString() {
            return this.f19487a + "=" + this.f19488b;
        }

        public C5177e(K k, V v) {
            this.f19487a = k;
            this.f19488b = v;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            C5170k1.this.m14244g();
            V v2 = this.f19488b;
            this.f19488b = v;
            return v2;
        }
    }

    /* renamed from: o7.k1$f */
    /* loaded from: classes2.dex */
    public class C5178f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f19490a;

        /* renamed from: b */
        public boolean f19491b;

        /* renamed from: d */
        public Iterator<Map.Entry<K, V>> f19492d;

        public C5178f() {
            this.f19490a = -1;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            this.f19491b = true;
            int i = this.f19490a + 1;
            this.f19490a = i;
            if (i < C5170k1.this.f19475b.size()) {
                return (Map.Entry) C5170k1.this.f19475b.get(this.f19490a);
            }
            return m14224a().next();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m14224a() {
            if (this.f19492d == null) {
                this.f19492d = C5170k1.this.f19476d.entrySet().iterator();
            }
            return this.f19492d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f19490a + 1 < C5170k1.this.f19475b.size()) {
                return true;
            }
            if (!C5170k1.this.f19476d.isEmpty() && m14224a().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f19491b) {
                this.f19491b = false;
                C5170k1.this.m14244g();
                if (this.f19490a < C5170k1.this.f19475b.size()) {
                    C5170k1 c5170k1 = C5170k1.this;
                    int i = this.f19490a;
                    this.f19490a = i - 1;
                    c5170k1.m14233s(i);
                    return;
                }
                m14224a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }

        public /* synthetic */ C5178f(C5170k1 c5170k1, C5171a c5171a) {
            this();
        }
    }

    /* renamed from: o7.k1$g */
    /* loaded from: classes2.dex */
    public class C5179g extends AbstractSet<Map.Entry<K, V>> {
        public C5179g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C5170k1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5178f(C5170k1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C5170k1.this.size();
        }

        public /* synthetic */ C5179g(C5170k1 c5170k1, C5171a c5171a) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C5170k1.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value && (obj2 == null || !obj2.equals(value))) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                C5170k1.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: d */
        public boolean add(Map.Entry<K, V> entry) {
            if (!contains(entry)) {
                C5170k1.this.put(entry.getKey(), entry.getValue());
                return true;
            }
            return false;
        }
    }

    public /* synthetic */ C5170k1(int i, C5171a c5171a) {
        this(i);
    }

    /* renamed from: q */
    public static <FieldDescriptorType extends C5226u.InterfaceC5228b<FieldDescriptorType>> C5170k1<FieldDescriptorType, Object> m14235q(int i) {
        return new C5171a(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5170k1)) {
            return super.equals(obj);
        }
        C5170k1 c5170k1 = (C5170k1) obj;
        int size = size();
        if (size != c5170k1.size()) {
            return false;
        }
        int m14240k = m14240k();
        if (m14240k != c5170k1.m14240k()) {
            return entrySet().equals(c5170k1.entrySet());
        }
        for (int i = 0; i < m14240k; i++) {
            if (!m14241j(i).equals(c5170k1.m14241j(i))) {
                return false;
            }
        }
        if (m14240k != size) {
            return this.f19476d.equals(c5170k1.f19476d);
        }
        return true;
    }

    /* renamed from: j */
    public Map.Entry<K, V> m14241j(int i) {
        return this.f19475b.get(i);
    }

    /* renamed from: k */
    public int m14240k() {
        return this.f19475b.size();
    }

    /* renamed from: l */
    public int m14239l() {
        return this.f19476d.size();
    }

    /* renamed from: o */
    public boolean m14236o() {
        return this.f19477k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f19475b.size() + this.f19476d.size();
    }

    /* renamed from: o7.k1$a */
    /* loaded from: classes2.dex */
    public static class C5171a extends C5170k1<FieldDescriptorType, Object> {
        public C5171a(int i) {
            super(i, null);
        }

        @Override // p144o7.C5170k1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((C5226u.InterfaceC5228b) obj, obj2);
        }

        @Override // p144o7.C5170k1
        /* renamed from: p */
        public void mo14232p() {
            if (!m14236o()) {
                for (int i = 0; i < m14240k(); i++) {
                    Map.Entry<FieldDescriptorType, Object> m14241j = m14241j(i);
                    if (((C5226u.InterfaceC5228b) m14241j.getKey()).mo13769i()) {
                        m14241j.setValue(Collections.unmodifiableList((List) m14241j.getValue()));
                    }
                }
                Iterator it = m14238m().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((C5226u.InterfaceC5228b) entry.getKey()).mo13769i()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.mo14232p();
        }
    }

    public C5170k1(int i) {
        this.f19474a = i;
        this.f19475b = Collections.emptyList();
        this.f19476d = Collections.emptyMap();
        this.f19479q = Collections.emptyMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (m14245f(comparable) < 0 && !this.f19476d.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f19478p == null) {
            this.f19478p = new C5179g(this, null);
        }
        return this.f19478p;
    }

    /* renamed from: f */
    public final int m14245f(K k) {
        int size = this.f19475b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f19475b.get(size).getKey());
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
            int compareTo2 = k.compareTo(this.f19475b.get(i2).getKey());
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

    /* renamed from: g */
    public final void m14244g() {
        if (!this.f19477k) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m14245f = m14245f(comparable);
        if (m14245f >= 0) {
            return this.f19475b.get(m14245f).getValue();
        }
        return this.f19476d.get(comparable);
    }

    /* renamed from: h */
    public Set<Map.Entry<K, V>> m14243h() {
        if (this.f19480r == null) {
            this.f19480r = new C5173c(this, null);
        }
        return this.f19480r;
    }

    /* renamed from: m */
    public Iterable<Map.Entry<K, V>> m14238m() {
        if (this.f19476d.isEmpty()) {
            return C5174d.m14228b();
        }
        return this.f19476d.entrySet();
    }

    /* renamed from: p */
    public void mo14232p() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.f19477k) {
            if (this.f19476d.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f19476d);
            }
            this.f19476d = unmodifiableMap;
            if (this.f19479q.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f19479q);
            }
            this.f19479q = unmodifiableMap2;
            this.f19477k = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m14244g();
        if (!this.f19475b.isEmpty()) {
            this.f19475b.clear();
        }
        if (!this.f19476d.isEmpty()) {
            this.f19476d.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m14240k = m14240k();
        int i = 0;
        for (int i2 = 0; i2 < m14240k; i2++) {
            i += this.f19475b.get(i2).hashCode();
        }
        if (m14239l() > 0) {
            return i + this.f19476d.hashCode();
        }
        return i;
    }

    /* renamed from: i */
    public final void m14242i() {
        m14244g();
        if (this.f19475b.isEmpty() && !(this.f19475b instanceof ArrayList)) {
            this.f19475b = new ArrayList(this.f19474a);
        }
    }

    /* renamed from: n */
    public final SortedMap<K, V> m14237n() {
        m14244g();
        if (this.f19476d.isEmpty() && !(this.f19476d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f19476d = treeMap;
            this.f19479q = treeMap.descendingMap();
        }
        return (SortedMap) this.f19476d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: r */
    public V put(K k, V v) {
        m14244g();
        int m14245f = m14245f(k);
        if (m14245f >= 0) {
            return this.f19475b.get(m14245f).setValue(v);
        }
        m14242i();
        int i = -(m14245f + 1);
        if (i >= this.f19474a) {
            return m14237n().put(k, v);
        }
        int size = this.f19475b.size();
        int i2 = this.f19474a;
        if (size == i2) {
            C5170k1<K, V>.C5177e remove = this.f19475b.remove(i2 - 1);
            m14237n().put((K) remove.getKey(), remove.getValue());
        }
        this.f19475b.add(i, new C5177e(k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m14244g();
        Comparable comparable = (Comparable) obj;
        int m14245f = m14245f(comparable);
        if (m14245f >= 0) {
            return (V) m14233s(m14245f);
        }
        if (this.f19476d.isEmpty()) {
            return null;
        }
        return this.f19476d.remove(comparable);
    }

    /* renamed from: s */
    public final V m14233s(int i) {
        m14244g();
        V value = this.f19475b.remove(i).getValue();
        if (!this.f19476d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m14237n().entrySet().iterator();
            this.f19475b.add(new C5177e(this, it.next()));
            it.remove();
        }
        return value;
    }
}
