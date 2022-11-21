package p145p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: p.f */
/* loaded from: classes.dex */
public abstract class AbstractC5277f<K, V> {

    /* renamed from: a */
    public AbstractC5277f<K, V>.C5279b f19801a;

    /* renamed from: b */
    public AbstractC5277f<K, V>.C5280c f19802b;

    /* renamed from: c */
    public AbstractC5277f<K, V>.C5282e f19803c;

    /* renamed from: p.f$a */
    /* loaded from: classes.dex */
    public final class C5278a<T> implements Iterator<T> {

        /* renamed from: a */
        public final int f19804a;

        /* renamed from: b */
        public int f19805b;

        /* renamed from: d */
        public int f19806d;

        /* renamed from: k */
        public boolean f19807k = false;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19806d < this.f19805b;
        }

        public C5278a(int i) {
            this.f19804a = i;
            this.f19805b = AbstractC5277f.this.mo13685d();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f19807k) {
                int i = this.f19806d - 1;
                this.f19806d = i;
                this.f19805b--;
                this.f19807k = false;
                AbstractC5277f.this.mo13681h(i);
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC5277f.this.mo13687b(this.f19806d, this.f19804a);
                this.f19806d++;
                this.f19807k = true;
                return t;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: p.f$b */
    /* loaded from: classes.dex */
    public final class C5279b implements Set<Map.Entry<K, V>> {
        public C5279b() {
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC5277f.this.mo13688a();
        }

        @Override // java.util.Set, java.util.Collection
        /* renamed from: d */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC5277f.m13678k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC5277f.this.mo13685d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5281d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC5277f.this.mo13685d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo13685d = AbstractC5277f.this.mo13685d();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC5277f.this.mo13682g(entry.getKey(), entry.getValue());
            }
            if (mo13685d != AbstractC5277f.this.mo13685d()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo13684e = AbstractC5277f.this.mo13684e(entry.getKey());
            if (mo13684e < 0) {
                return false;
            }
            return C5274c.m13712c(AbstractC5277f.this.mo13687b(mo13684e, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int hashCode;
            int hashCode2;
            int i = 0;
            for (int mo13685d = AbstractC5277f.this.mo13685d() - 1; mo13685d >= 0; mo13685d--) {
                Object mo13687b = AbstractC5277f.this.mo13687b(mo13685d, 0);
                Object mo13687b2 = AbstractC5277f.this.mo13687b(mo13685d, 1);
                if (mo13687b == null) {
                    hashCode = 0;
                } else {
                    hashCode = mo13687b.hashCode();
                }
                if (mo13687b2 == null) {
                    hashCode2 = 0;
                } else {
                    hashCode2 = mo13687b2.hashCode();
                }
                i += hashCode ^ hashCode2;
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: p.f$c */
    /* loaded from: classes.dex */
    public final class C5280c implements Set<K> {
        public C5280c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC5277f.this.mo13688a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC5277f.this.mo13684e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC5277f.m13679j(AbstractC5277f.this.mo13686c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC5277f.m13678k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC5277f.this.mo13685d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C5278a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC5277f.m13674o(AbstractC5277f.this.mo13686c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC5277f.m13673p(AbstractC5277f.this.mo13686c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC5277f.this.mo13685d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC5277f.this.m13672q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int hashCode;
            int i = 0;
            for (int mo13685d = AbstractC5277f.this.mo13685d() - 1; mo13685d >= 0; mo13685d--) {
                Object mo13687b = AbstractC5277f.this.mo13687b(mo13685d, 0);
                if (mo13687b == null) {
                    hashCode = 0;
                } else {
                    hashCode = mo13687b.hashCode();
                }
                i += hashCode;
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo13684e = AbstractC5277f.this.mo13684e(obj);
            if (mo13684e >= 0) {
                AbstractC5277f.this.mo13681h(mo13684e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC5277f.this.m13671r(tArr, 0);
        }
    }

    /* renamed from: p.f$d */
    /* loaded from: classes.dex */
    public final class C5281d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        public int f19811a;

        /* renamed from: d */
        public boolean f19813d = false;

        /* renamed from: b */
        public int f19812b = -1;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19812b < this.f19811a;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        public C5281d() {
            this.f19811a = AbstractC5277f.this.mo13685d() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f19813d) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!C5274c.m13712c(entry.getKey(), AbstractC5277f.this.mo13687b(this.f19812b, 0)) || !C5274c.m13712c(entry.getValue(), AbstractC5277f.this.mo13687b(this.f19812b, 1))) {
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f19813d) {
                return (K) AbstractC5277f.this.mo13687b(this.f19812b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f19813d) {
                return (V) AbstractC5277f.this.mo13687b(this.f19812b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            if (this.f19813d) {
                int i = 0;
                Object mo13687b = AbstractC5277f.this.mo13687b(this.f19812b, 0);
                Object mo13687b2 = AbstractC5277f.this.mo13687b(this.f19812b, 1);
                if (mo13687b == null) {
                    hashCode = 0;
                } else {
                    hashCode = mo13687b.hashCode();
                }
                if (mo13687b2 != null) {
                    i = mo13687b2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f19813d) {
                AbstractC5277f.this.mo13681h(this.f19812b);
                this.f19812b--;
                this.f19811a--;
                this.f19813d = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f19813d) {
                return (V) AbstractC5277f.this.mo13680i(this.f19812b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f19812b++;
                this.f19813d = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: p.f$e */
    /* loaded from: classes.dex */
    public final class C5282e implements Collection<V> {
        public C5282e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            AbstractC5277f.this.mo13688a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC5277f.this.mo13683f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return AbstractC5277f.this.mo13685d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C5278a(1);
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC5277f.this.mo13685d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC5277f.this.m13672q(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo13683f = AbstractC5277f.this.mo13683f(obj);
            if (mo13683f >= 0) {
                AbstractC5277f.this.mo13681h(mo13683f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo13685d = AbstractC5277f.this.mo13685d();
            int i = 0;
            boolean z = false;
            while (i < mo13685d) {
                if (collection.contains(AbstractC5277f.this.mo13687b(i, 1))) {
                    AbstractC5277f.this.mo13681h(i);
                    i--;
                    mo13685d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo13685d = AbstractC5277f.this.mo13685d();
            int i = 0;
            boolean z = false;
            while (i < mo13685d) {
                if (!collection.contains(AbstractC5277f.this.mo13687b(i, 1))) {
                    AbstractC5277f.this.mo13681h(i);
                    i--;
                    mo13685d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC5277f.this.m13671r(tArr, 1);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: k */
    public static <T> boolean m13678k(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: a */
    public abstract void mo13688a();

    /* renamed from: b */
    public abstract Object mo13687b(int i, int i2);

    /* renamed from: c */
    public abstract Map<K, V> mo13686c();

    /* renamed from: d */
    public abstract int mo13685d();

    /* renamed from: e */
    public abstract int mo13684e(Object obj);

    /* renamed from: f */
    public abstract int mo13683f(Object obj);

    /* renamed from: g */
    public abstract void mo13682g(K k, V v);

    /* renamed from: h */
    public abstract void mo13681h(int i);

    /* renamed from: i */
    public abstract V mo13680i(int i, V v);

    /* renamed from: l */
    public Set<Map.Entry<K, V>> m13677l() {
        if (this.f19801a == null) {
            this.f19801a = new C5279b();
        }
        return this.f19801a;
    }

    /* renamed from: m */
    public Set<K> m13676m() {
        if (this.f19802b == null) {
            this.f19802b = new C5280c();
        }
        return this.f19802b;
    }

    /* renamed from: n */
    public Collection<V> m13675n() {
        if (this.f19803c == null) {
            this.f19803c = new C5282e();
        }
        return this.f19803c;
    }

    /* renamed from: j */
    public static <K, V> boolean m13679j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: o */
    public static <K, V> boolean m13674o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        if (size != map.size()) {
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public static <K, V> boolean m13673p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        if (size != map.size()) {
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public Object[] m13672q(int i) {
        int mo13685d = mo13685d();
        Object[] objArr = new Object[mo13685d];
        for (int i2 = 0; i2 < mo13685d; i2++) {
            objArr[i2] = mo13687b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public <T> T[] m13671r(T[] tArr, int i) {
        int mo13685d = mo13685d();
        if (tArr.length < mo13685d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo13685d));
        }
        for (int i2 = 0; i2 < mo13685d; i2++) {
            tArr[i2] = mo13687b(i2, i);
        }
        if (tArr.length > mo13685d) {
            tArr[mo13685d] = null;
        }
        return tArr;
    }
}
