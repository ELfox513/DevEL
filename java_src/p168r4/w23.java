package p168r4;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.w23 */
/* loaded from: classes2.dex */
public final class w23<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: u */
    public static final Object f33029u = new Object();

    /* renamed from: a */
    public transient Object f33030a;

    /* renamed from: b */
    public transient int[] f33031b;

    /* renamed from: d */
    public transient Object[] f33032d;

    /* renamed from: k */
    public transient Object[] f33033k;

    /* renamed from: p */
    public transient int f33034p;

    /* renamed from: q */
    public transient int f33035q;

    /* renamed from: r */
    public transient Set<K> f33036r;

    /* renamed from: s */
    public transient Set<Map.Entry<K, V>> f33037s;

    /* renamed from: t */
    public transient Collection<V> f33038t;

    public w23() {
        m5921h(3);
    }

    /* renamed from: r */
    public static /* synthetic */ Object m5911r(w23 w23Var) {
        Object obj = w23Var.f33030a;
        obj.getClass();
        return obj;
    }

    /* renamed from: v */
    public static /* synthetic */ Object m5907v(w23 w23Var, int i) {
        return w23Var.m5927b()[i];
    }

    /* renamed from: w */
    public static /* synthetic */ Object m5906w(w23 w23Var, int i) {
        return w23Var.m5926c()[i];
    }

    /* renamed from: x */
    public static /* synthetic */ void m5905x(w23 w23Var, int i, Object obj) {
        w23Var.m5926c()[i] = obj;
    }

    /* renamed from: a */
    public final int[] m5928a() {
        int[] iArr = this.f33031b;
        iArr.getClass();
        return iArr;
    }

    /* renamed from: b */
    public final Object[] m5927b() {
        Object[] objArr = this.f33032d;
        objArr.getClass();
        return objArr;
    }

    /* renamed from: c */
    public final Object[] m5926c() {
        Object[] objArr = this.f33033k;
        objArr.getClass();
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f33037s;
        if (set == null) {
            q23 q23Var = new q23(this);
            this.f33037s = q23Var;
            return q23Var;
        }
        return set;
    }

    /* renamed from: h */
    public final void m5921h(int i) {
        this.f33034p = x53.m5496a(i, 1, 1073741823);
    }

    /* renamed from: i */
    public final boolean m5920i() {
        return this.f33030a == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f33036r;
        if (set == null) {
            s23 s23Var = new s23(this);
            this.f33036r = s23Var;
            return s23Var;
        }
        return set;
    }

    /* renamed from: l */
    public final void m5917l() {
        this.f33034p += 32;
    }

    /* renamed from: p */
    public final int m5913p() {
        return isEmpty() ? -1 : 0;
    }

    /* renamed from: q */
    public final int m5912q(int i) {
        int i2 = i + 1;
        if (i2 < this.f33035q) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f33038t;
        if (collection == null) {
            v23 v23Var = new v23(this);
            this.f33038t = v23Var;
            return v23Var;
        }
        return collection;
    }

    /* renamed from: y */
    public final void m5904y(int i) {
        this.f33034p = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.f33034p & (-32));
    }

    /* renamed from: z */
    public final int m5903z() {
        return (1 << (this.f33034p & 31)) - 1;
    }

    /* renamed from: j */
    public final Map<K, V> m5919j() {
        Object obj = this.f33030a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    /* renamed from: o */
    public final void m5914o(int i, int i2) {
        Object obj = this.f33030a;
        obj.getClass();
        int[] m5928a = m5928a();
        Object[] m5927b = m5927b();
        Object[] m5926c = m5926c();
        int size = size() - 1;
        if (i < size) {
            Object obj2 = m5927b[size];
            m5927b[i] = obj2;
            m5926c[i] = m5926c[size];
            m5927b[size] = null;
            m5926c[size] = null;
            m5928a[i] = m5928a[size];
            m5928a[size] = 0;
            int m11297b = g33.m11297b(obj2) & i2;
            int m5519b = x23.m5519b(obj, m11297b);
            int i3 = size + 1;
            if (m5519b == i3) {
                x23.m5518c(obj, m11297b, i + 1);
                return;
            }
            while (true) {
                int i4 = m5519b - 1;
                int i5 = m5928a[i4];
                int i6 = i5 & i2;
                if (i6 != i3) {
                    m5519b = i6;
                } else {
                    m5928a[i4] = ((i + 1) & i2) | (i5 & (i2 ^ (-1)));
                    return;
                }
            }
        } else {
            m5927b[i] = null;
            m5926c[i] = null;
            m5928a[i] = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int min;
        if (m5920i()) {
            z03.m4495b(m5920i(), "Arrays already allocated");
            int i = this.f33034p;
            int max = Math.max(i + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            if (max > highestOneBit && (highestOneBit = highestOneBit + highestOneBit) <= 0) {
                highestOneBit = 1073741824;
            }
            int max2 = Math.max(4, highestOneBit);
            this.f33030a = x23.m5520a(max2);
            m5904y(max2 - 1);
            this.f33031b = new int[i];
            this.f33032d = new Object[i];
            this.f33033k = new Object[i];
        }
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            return m5919j.put(k, v);
        }
        int[] m5928a = m5928a();
        Object[] m5927b = m5927b();
        Object[] m5926c = m5926c();
        int i2 = this.f33035q;
        int i3 = i2 + 1;
        int m11297b = g33.m11297b(k);
        int m5903z = m5903z();
        int i4 = m11297b & m5903z;
        Object obj = this.f33030a;
        obj.getClass();
        int m5519b = x23.m5519b(obj, i4);
        if (m5519b == 0) {
            if (i3 > m5903z) {
                m5903z = m5931A(m5903z, x23.m5517d(m5903z), m11297b, i2);
            } else {
                Object obj2 = this.f33030a;
                obj2.getClass();
                x23.m5518c(obj2, i4, i3);
            }
        } else {
            int i5 = m5903z ^ (-1);
            int i6 = m11297b & i5;
            int i7 = 0;
            while (true) {
                int i8 = m5519b - 1;
                int i9 = m5928a[i8];
                int i10 = i9 & i5;
                if (i10 == i6 && v03.m6257a(k, m5927b[i8])) {
                    V v2 = (V) m5926c[i8];
                    m5926c[i8] = v;
                    return v2;
                }
                int i11 = i9 & m5903z;
                i7++;
                if (i11 == 0) {
                    if (i7 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(m5903z() + 1, 1.0f);
                        int m5913p = m5913p();
                        while (m5913p >= 0) {
                            linkedHashMap.put(m5927b()[m5913p], m5926c()[m5913p]);
                            m5913p = m5912q(m5913p);
                        }
                        this.f33030a = linkedHashMap;
                        this.f33031b = null;
                        this.f33032d = null;
                        this.f33033k = null;
                        m5917l();
                        return (V) linkedHashMap.put(k, v);
                    } else if (i3 > m5903z) {
                        m5903z = m5931A(m5903z, x23.m5517d(m5903z), m11297b, i2);
                    } else {
                        m5928a[i8] = (i3 & m5903z) | i10;
                    }
                } else {
                    m5519b = i11;
                }
            }
        }
        int length = m5928a().length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f33031b = Arrays.copyOf(m5928a(), min);
            this.f33032d = Arrays.copyOf(m5927b(), min);
            this.f33033k = Arrays.copyOf(m5926c(), min);
        }
        m5928a()[i2] = (m5903z ^ (-1)) & m11297b;
        m5927b()[i2] = k;
        m5926c()[i2] = v;
        this.f33035q = i3;
        m5917l();
        return null;
    }

    public w23(int i) {
        m5921h(8);
    }

    /* renamed from: A */
    public final int m5931A(int i, int i2, int i3, int i4) {
        Object m5520a = x23.m5520a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            x23.m5518c(m5520a, i3 & i5, i4 + 1);
        }
        Object obj = this.f33030a;
        obj.getClass();
        int[] m5928a = m5928a();
        for (int i6 = 0; i6 <= i; i6++) {
            int m5519b = x23.m5519b(obj, i6);
            while (m5519b != 0) {
                int i7 = m5519b - 1;
                int i8 = m5928a[i7];
                int i9 = ((i ^ (-1)) & i8) | i6;
                int i10 = i9 & i5;
                int m5519b2 = x23.m5519b(m5520a, i10);
                x23.m5518c(m5520a, i10, m5519b);
                m5928a[i7] = ((i5 ^ (-1)) & i9) | (m5519b2 & i5);
                m5519b = i8 & i;
            }
        }
        this.f33030a = m5520a;
        m5904y(i5);
        return i5;
    }

    /* renamed from: B */
    public final int m5930B(Object obj) {
        if (m5920i()) {
            return -1;
        }
        int m11297b = g33.m11297b(obj);
        int m5903z = m5903z();
        Object obj2 = this.f33030a;
        obj2.getClass();
        int m5519b = x23.m5519b(obj2, m11297b & m5903z);
        if (m5519b == 0) {
            return -1;
        }
        int i = m5903z ^ (-1);
        int i2 = m11297b & i;
        do {
            int i3 = m5519b - 1;
            int i4 = m5928a()[i3];
            if ((i4 & i) == i2 && v03.m6257a(obj, m5927b()[i3])) {
                return i3;
            }
            m5519b = i4 & m5903z;
        } while (m5519b != 0);
        return -1;
    }

    /* renamed from: C */
    public final Object m5929C(Object obj) {
        if (m5920i()) {
            return f33029u;
        }
        int m5903z = m5903z();
        Object obj2 = this.f33030a;
        obj2.getClass();
        int m5516e = x23.m5516e(obj, null, m5903z, obj2, m5928a(), m5927b(), null);
        if (m5516e == -1) {
            return f33029u;
        }
        Object obj3 = m5926c()[m5516e];
        m5914o(m5516e, m5903z);
        this.f33035q--;
        m5917l();
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m5920i()) {
            return;
        }
        m5917l();
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            this.f33034p = x53.m5496a(size(), 3, 1073741823);
            m5919j.clear();
            this.f33030a = null;
            this.f33035q = 0;
            return;
        }
        Arrays.fill(m5927b(), 0, this.f33035q, (Object) null);
        Arrays.fill(m5926c(), 0, this.f33035q, (Object) null);
        Object obj = this.f33030a;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(m5928a(), 0, this.f33035q, 0);
        this.f33035q = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            return m5919j.containsKey(obj);
        }
        if (m5930B(obj) == -1) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> m5919j = m5919j();
        if (m5919j == null) {
            for (int i = 0; i < this.f33035q; i++) {
                if (v03.m6257a(obj, m5926c()[i])) {
                    return true;
                }
            }
            return false;
        }
        return m5919j.containsValue(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            return m5919j.get(obj);
        }
        int m5930B = m5930B(obj);
        if (m5930B == -1) {
            return null;
        }
        return (V) m5926c()[m5930B];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            return m5919j.remove(obj);
        }
        V v = (V) m5929C(obj);
        if (v == f33029u) {
            return null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> m5919j = m5919j();
        if (m5919j != null) {
            return m5919j.size();
        }
        return this.f33035q;
    }
}
