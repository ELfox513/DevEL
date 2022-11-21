package p109l;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: l.b */
/* loaded from: classes.dex */
public class C4533b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    public C4536c<K, V> f18550a;

    /* renamed from: b */
    public C4536c<K, V> f18551b;

    /* renamed from: d */
    public WeakHashMap<InterfaceC4539f<K, V>, Boolean> f18552d = new WeakHashMap<>();

    /* renamed from: k */
    public int f18553k = 0;

    /* renamed from: l.b$a */
    /* loaded from: classes.dex */
    public static class C4534a<K, V> extends AbstractC4538e<K, V> {
        public C4534a(C4536c<K, V> c4536c, C4536c<K, V> c4536c2) {
            super(c4536c, c4536c2);
        }

        @Override // p109l.C4533b.AbstractC4538e
        /* renamed from: b */
        public C4536c<K, V> mo16061b(C4536c<K, V> c4536c) {
            return c4536c.f18557k;
        }

        @Override // p109l.C4533b.AbstractC4538e
        /* renamed from: c */
        public C4536c<K, V> mo16060c(C4536c<K, V> c4536c) {
            return c4536c.f18556d;
        }
    }

    /* renamed from: l.b$b */
    /* loaded from: classes.dex */
    public static class C4535b<K, V> extends AbstractC4538e<K, V> {
        public C4535b(C4536c<K, V> c4536c, C4536c<K, V> c4536c2) {
            super(c4536c, c4536c2);
        }

        @Override // p109l.C4533b.AbstractC4538e
        /* renamed from: b */
        public C4536c<K, V> mo16061b(C4536c<K, V> c4536c) {
            return c4536c.f18556d;
        }

        @Override // p109l.C4533b.AbstractC4538e
        /* renamed from: c */
        public C4536c<K, V> mo16060c(C4536c<K, V> c4536c) {
            return c4536c.f18557k;
        }
    }

    /* renamed from: l.b$d */
    /* loaded from: classes.dex */
    public class C4537d implements Iterator<Map.Entry<K, V>>, InterfaceC4539f<K, V> {

        /* renamed from: a */
        public C4536c<K, V> f18558a;

        /* renamed from: b */
        public boolean f18559b = true;

        public C4537d() {
        }

        @Override // p109l.C4533b.InterfaceC4539f
        /* renamed from: a */
        public void mo16057a(C4536c<K, V> c4536c) {
            boolean z;
            C4536c<K, V> c4536c2 = this.f18558a;
            if (c4536c == c4536c2) {
                C4536c<K, V> c4536c3 = c4536c2.f18557k;
                this.f18558a = c4536c3;
                if (c4536c3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.f18559b = z;
            }
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            C4536c<K, V> c4536c;
            if (this.f18559b) {
                this.f18559b = false;
                this.f18558a = C4533b.this.f18550a;
            } else {
                C4536c<K, V> c4536c2 = this.f18558a;
                if (c4536c2 != null) {
                    c4536c = c4536c2.f18556d;
                } else {
                    c4536c = null;
                }
                this.f18558a = c4536c;
            }
            return this.f18558a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f18559b) {
                if (C4533b.this.f18550a != null) {
                    return true;
                }
                return false;
            }
            C4536c<K, V> c4536c = this.f18558a;
            if (c4536c != null && c4536c.f18556d != null) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: l.b$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4538e<K, V> implements Iterator<Map.Entry<K, V>>, InterfaceC4539f<K, V> {

        /* renamed from: a */
        public C4536c<K, V> f18561a;

        /* renamed from: b */
        public C4536c<K, V> f18562b;

        /* renamed from: b */
        public abstract C4536c<K, V> mo16061b(C4536c<K, V> c4536c);

        /* renamed from: c */
        public abstract C4536c<K, V> mo16060c(C4536c<K, V> c4536c);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f18562b != null;
        }

        @Override // p109l.C4533b.InterfaceC4539f
        /* renamed from: a */
        public void mo16057a(C4536c<K, V> c4536c) {
            if (this.f18561a == c4536c && c4536c == this.f18562b) {
                this.f18562b = null;
                this.f18561a = null;
            }
            C4536c<K, V> c4536c2 = this.f18561a;
            if (c4536c2 == c4536c) {
                this.f18561a = mo16061b(c4536c2);
            }
            if (this.f18562b == c4536c) {
                this.f18562b = m16058f();
            }
        }

        @Override // java.util.Iterator
        /* renamed from: e */
        public Map.Entry<K, V> next() {
            C4536c<K, V> c4536c = this.f18562b;
            this.f18562b = m16058f();
            return c4536c;
        }

        /* renamed from: f */
        public final C4536c<K, V> m16058f() {
            C4536c<K, V> c4536c = this.f18562b;
            C4536c<K, V> c4536c2 = this.f18561a;
            if (c4536c != c4536c2 && c4536c2 != null) {
                return mo16060c(c4536c);
            }
            return null;
        }

        public AbstractC4538e(C4536c<K, V> c4536c, C4536c<K, V> c4536c2) {
            this.f18561a = c4536c2;
            this.f18562b = c4536c;
        }
    }

    /* renamed from: l.b$f */
    /* loaded from: classes.dex */
    public interface InterfaceC4539f<K, V> {
        /* renamed from: a */
        void mo16057a(C4536c<K, V> c4536c);
    }

    /* renamed from: d */
    public Map.Entry<K, V> m16069d() {
        return this.f18550a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4533b)) {
            return false;
        }
        C4533b c4533b = (C4533b) obj;
        if (size() != c4533b.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c4533b.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* renamed from: i */
    public Map.Entry<K, V> m16066i() {
        return this.f18551b;
    }

    public int size() {
        return this.f18553k;
    }

    /* renamed from: l.b$c */
    /* loaded from: classes.dex */
    public static class C4536c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public final K f18554a;

        /* renamed from: b */
        public final V f18555b;

        /* renamed from: d */
        public C4536c<K, V> f18556d;

        /* renamed from: k */
        public C4536c<K, V> f18557k;

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C4536c)) {
                return false;
            }
            C4536c c4536c = (C4536c) obj;
            return this.f18554a.equals(c4536c.f18554a) && this.f18555b.equals(c4536c.f18555b);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f18554a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f18555b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f18554a.hashCode() ^ this.f18555b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f18554a + "=" + this.f18555b;
        }

        public C4536c(K k, V v) {
            this.f18554a = k;
            this.f18555b = v;
        }
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C4535b c4535b = new C4535b(this.f18551b, this.f18550a);
        this.f18552d.put(c4535b, Boolean.FALSE);
        return c4535b;
    }

    /* renamed from: e */
    public C4536c<K, V> mo16068e(K k) {
        C4536c<K, V> c4536c = this.f18550a;
        while (c4536c != null && !c4536c.f18554a.equals(k)) {
            c4536c = c4536c.f18556d;
        }
        return c4536c;
    }

    /* renamed from: g */
    public C4533b<K, V>.C4537d m16067g() {
        C4533b<K, V>.C4537d c4537d = new C4537d();
        this.f18552d.put(c4537d, Boolean.FALSE);
        return c4537d;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C4534a c4534a = new C4534a(this.f18550a, this.f18551b);
        this.f18552d.put(c4534a, Boolean.FALSE);
        return c4534a;
    }

    /* renamed from: k */
    public C4536c<K, V> m16065k(K k, V v) {
        C4536c<K, V> c4536c = new C4536c<>(k, v);
        this.f18553k++;
        C4536c<K, V> c4536c2 = this.f18551b;
        if (c4536c2 == null) {
            this.f18550a = c4536c;
            this.f18551b = c4536c;
            return c4536c;
        }
        c4536c2.f18556d = c4536c;
        c4536c.f18557k = c4536c2;
        this.f18551b = c4536c;
        return c4536c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().hashCode();
        }
        return i;
    }

    /* renamed from: l */
    public V mo16064l(K k, V v) {
        C4536c<K, V> mo16068e = mo16068e(k);
        if (mo16068e != null) {
            return mo16068e.f18555b;
        }
        m16065k(k, v);
        return null;
    }

    /* renamed from: m */
    public V mo16063m(K k) {
        C4536c<K, V> mo16068e = mo16068e(k);
        if (mo16068e == null) {
            return null;
        }
        this.f18553k--;
        if (!this.f18552d.isEmpty()) {
            for (InterfaceC4539f<K, V> interfaceC4539f : this.f18552d.keySet()) {
                interfaceC4539f.mo16057a(mo16068e);
            }
        }
        C4536c<K, V> c4536c = mo16068e.f18557k;
        if (c4536c != null) {
            c4536c.f18556d = mo16068e.f18556d;
        } else {
            this.f18550a = mo16068e.f18556d;
        }
        C4536c<K, V> c4536c2 = mo16068e.f18556d;
        if (c4536c2 != null) {
            c4536c2.f18557k = c4536c;
        } else {
            this.f18551b = c4536c;
        }
        mo16068e.f18556d = null;
        mo16068e.f18557k = null;
        return mo16068e.f18555b;
    }
}
