package p145p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: p.b */
/* loaded from: classes.dex */
public final class C5272b<E> implements Collection<E>, Set<E> {

    /* renamed from: p */
    public static final int[] f19774p = new int[0];

    /* renamed from: q */
    public static final Object[] f19775q = new Object[0];

    /* renamed from: r */
    public static Object[] f19776r;

    /* renamed from: s */
    public static int f19777s;

    /* renamed from: t */
    public static Object[] f19778t;

    /* renamed from: u */
    public static int f19779u;

    /* renamed from: a */
    public int[] f19780a;

    /* renamed from: b */
    public Object[] f19781b;

    /* renamed from: d */
    public int f19782d;

    /* renamed from: k */
    public AbstractC5277f<E, E> f19783k;

    /* renamed from: p.b$a */
    /* loaded from: classes.dex */
    public class C5273a extends AbstractC5277f<E, E> {
        public C5273a() {
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: a */
        public void mo13688a() {
            C5272b.this.clear();
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: b */
        public Object mo13687b(int i, int i2) {
            return C5272b.this.f19781b[i];
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: c */
        public Map<E, E> mo13686c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: d */
        public int mo13685d() {
            return C5272b.this.f19782d;
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: e */
        public int mo13684e(Object obj) {
            return C5272b.this.indexOf(obj);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: f */
        public int mo13683f(Object obj) {
            return C5272b.this.indexOf(obj);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: g */
        public void mo13682g(E e, E e2) {
            C5272b.this.add(e);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: h */
        public void mo13681h(int i) {
            C5272b.this.m13716m(i);
        }

        @Override // p145p.AbstractC5277f
        /* renamed from: i */
        public E mo13680i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public C5272b() {
        this(0);
    }

    /* renamed from: g */
    public static void m13720g(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C5272b.class) {
                if (f19779u < 10) {
                    objArr[0] = f19778t;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f19778t = objArr;
                    f19779u++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C5272b.class) {
                if (f19777s < 10) {
                    objArr[0] = f19776r;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f19776r = objArr;
                    f19777s++;
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int m13718k;
        if (e == null) {
            m13718k = m13717l();
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            m13718k = m13718k(e, hashCode);
        }
        if (m13718k >= 0) {
            return false;
        }
        int i2 = m13718k ^ (-1);
        int i3 = this.f19782d;
        int[] iArr = this.f19780a;
        if (i3 >= iArr.length) {
            int i4 = 4;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i4 = 8;
            }
            Object[] objArr = this.f19781b;
            m13722d(i4);
            int[] iArr2 = this.f19780a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f19781b, 0, objArr.length);
            }
            m13720g(iArr, objArr, this.f19782d);
        }
        int i5 = this.f19782d;
        if (i2 < i5) {
            int[] iArr3 = this.f19780a;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f19781b;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f19782d - i2);
        }
        this.f19780a[i2] = i;
        this.f19781b[i2] = e;
        this.f19782d++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    /* renamed from: d */
    public final void m13722d(int i) {
        if (i == 8) {
            synchronized (C5272b.class) {
                Object[] objArr = f19778t;
                if (objArr != null) {
                    this.f19781b = objArr;
                    f19778t = (Object[]) objArr[0];
                    this.f19780a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f19779u--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C5272b.class) {
                Object[] objArr2 = f19776r;
                if (objArr2 != null) {
                    this.f19781b = objArr2;
                    f19776r = (Object[]) objArr2[0];
                    this.f19780a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f19777s--;
                    return;
                }
            }
        }
        this.f19780a = new int[i];
        this.f19781b = new Object[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f19782d; i++) {
                try {
                    if (!set.contains(m13715o(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public int indexOf(Object obj) {
        return obj == null ? m13717l() : m13718k(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f19782d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m13719i().m13676m().iterator();
    }

    /* renamed from: o */
    public E m13715o(int i) {
        return (E) this.f19781b[i];
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f19782d;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f19782d;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f19781b, 0, objArr, 0, i);
        return objArr;
    }

    public C5272b(int i) {
        if (i == 0) {
            this.f19780a = f19774p;
            this.f19781b = f19775q;
        } else {
            m13722d(i);
        }
        this.f19782d = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m13721e(this.f19782d + collection.size());
        boolean z = false;
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f19782d;
        if (i != 0) {
            m13720g(this.f19780a, this.f19781b, i);
            this.f19780a = f19774p;
            this.f19781b = f19775q;
            this.f19782d = 0;
        }
    }

    /* renamed from: e */
    public void m13721e(int i) {
        int[] iArr = this.f19780a;
        if (iArr.length < i) {
            Object[] objArr = this.f19781b;
            m13722d(i);
            int i2 = this.f19782d;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f19780a, 0, i2);
                System.arraycopy(objArr, 0, this.f19781b, 0, this.f19782d);
            }
            m13720g(iArr, objArr, this.f19782d);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f19780a;
        int i = this.f19782d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    /* renamed from: i */
    public final AbstractC5277f<E, E> m13719i() {
        if (this.f19783k == null) {
            this.f19783k = new C5273a();
        }
        return this.f19783k;
    }

    /* renamed from: k */
    public final int m13718k(Object obj, int i) {
        int i2 = this.f19782d;
        if (i2 == 0) {
            return -1;
        }
        int m13714a = C5274c.m13714a(this.f19780a, i2, i);
        if (m13714a < 0) {
            return m13714a;
        }
        if (obj.equals(this.f19781b[m13714a])) {
            return m13714a;
        }
        int i3 = m13714a + 1;
        while (i3 < i2 && this.f19780a[i3] == i) {
            if (obj.equals(this.f19781b[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = m13714a - 1; i4 >= 0 && this.f19780a[i4] == i; i4--) {
            if (obj.equals(this.f19781b[i4])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    /* renamed from: l */
    public final int m13717l() {
        int i = this.f19782d;
        if (i == 0) {
            return -1;
        }
        int m13714a = C5274c.m13714a(this.f19780a, i, 0);
        if (m13714a < 0) {
            return m13714a;
        }
        if (this.f19781b[m13714a] == null) {
            return m13714a;
        }
        int i2 = m13714a + 1;
        while (i2 < i && this.f19780a[i2] == 0) {
            if (this.f19781b[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = m13714a - 1; i3 >= 0 && this.f19780a[i3] == 0; i3--) {
            if (this.f19781b[i3] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    /* renamed from: m */
    public E m13716m(int i) {
        Object[] objArr = this.f19781b;
        E e = (E) objArr[i];
        int i2 = this.f19782d;
        if (i2 <= 1) {
            m13720g(this.f19780a, objArr, i2);
            this.f19780a = f19774p;
            this.f19781b = f19775q;
            this.f19782d = 0;
        } else {
            int[] iArr = this.f19780a;
            int i3 = 8;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                if (i2 > 8) {
                    i3 = i2 + (i2 >> 1);
                }
                m13722d(i3);
                this.f19782d--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f19780a, 0, i);
                    System.arraycopy(objArr, 0, this.f19781b, 0, i);
                }
                int i4 = this.f19782d;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr, i5, this.f19780a, i, i4 - i);
                    System.arraycopy(objArr, i5, this.f19781b, i, this.f19782d - i);
                }
            } else {
                int i6 = i2 - 1;
                this.f19782d = i6;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr, i7, iArr, i, i6 - i);
                    Object[] objArr2 = this.f19781b;
                    System.arraycopy(objArr2, i7, objArr2, i, this.f19782d - i);
                }
                this.f19781b[this.f19782d] = null;
            }
        }
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f19782d - 1; i >= 0; i--) {
            if (!collection.contains(this.f19781b[i])) {
                m13716m(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m13716m(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f19782d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f19782d));
        }
        System.arraycopy(this.f19781b, 0, tArr, 0, this.f19782d);
        int length = tArr.length;
        int i = this.f19782d;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19782d * 14);
        sb.append('{');
        for (int i = 0; i < this.f19782d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m13715o = m13715o(i);
            if (m13715o != this) {
                sb.append(m13715o);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
