package p145p;

import java.util.ConcurrentModificationException;
import java.util.Map;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: p.g */
/* loaded from: classes.dex */
public class C5283g<K, V> {

    /* renamed from: k */
    public static Object[] f19816k;

    /* renamed from: p */
    public static int f19817p;

    /* renamed from: q */
    public static Object[] f19818q;

    /* renamed from: r */
    public static int f19819r;

    /* renamed from: a */
    public int[] f19820a;

    /* renamed from: b */
    public Object[] f19821b;

    /* renamed from: d */
    public int f19822d;

    public C5283g() {
        this.f19820a = C5274c.f19785a;
        this.f19821b = C5274c.f19787c;
        this.f19822d = 0;
    }

    public boolean containsKey(Object obj) {
        return m13663f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m13661h(obj) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C5283g) {
            C5283g c5283g = (C5283g) obj;
            if (size() != c5283g.size()) {
                return false;
            }
            for (int i = 0; i < this.f19822d; i++) {
                try {
                    K m13660i = m13660i(i);
                    V m13656m = m13656m(i);
                    Object obj2 = c5283g.get(m13660i);
                    if (m13656m == null) {
                        if (obj2 != null || !c5283g.containsKey(m13660i)) {
                            return false;
                        }
                    } else if (!m13656m.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f19822d; i2++) {
                try {
                    K m13660i2 = m13660i(i2);
                    V m13656m2 = m13656m(i2);
                    Object obj3 = map.get(m13660i2);
                    if (m13656m2 == null) {
                        if (obj3 != null || !map.containsKey(m13660i2)) {
                            return false;
                        }
                    } else if (!m13656m2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public int m13663f(Object obj) {
        return obj == null ? m13662g() : m13664e(obj, obj.hashCode());
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    /* renamed from: i */
    public K m13660i(int i) {
        return (K) this.f19821b[i << 1];
    }

    public boolean isEmpty() {
        return this.f19822d <= 0;
    }

    /* renamed from: m */
    public V m13656m(int i) {
        return (V) this.f19821b[(i << 1) + 1];
    }

    public V remove(Object obj) {
        int m13663f = m13663f(obj);
        if (m13663f >= 0) {
            return m13658k(m13663f);
        }
        return null;
    }

    public V replace(K k, V v) {
        int m13663f = m13663f(k);
        if (m13663f >= 0) {
            return m13657l(m13663f, v);
        }
        return null;
    }

    public int size() {
        return this.f19822d;
    }

    /* renamed from: a */
    private void m13668a(int i) {
        if (i == 8) {
            synchronized (C5283g.class) {
                Object[] objArr = f19818q;
                if (objArr != null) {
                    this.f19821b = objArr;
                    f19818q = (Object[]) objArr[0];
                    this.f19820a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f19819r--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C5283g.class) {
                Object[] objArr2 = f19816k;
                if (objArr2 != null) {
                    this.f19821b = objArr2;
                    f19816k = (Object[]) objArr2[0];
                    this.f19820a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f19817p--;
                    return;
                }
            }
        }
        this.f19820a = new int[i];
        this.f19821b = new Object[i << 1];
    }

    /* renamed from: d */
    public static void m13665d(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C5283g.class) {
                if (f19819r < 10) {
                    objArr[0] = f19818q;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f19818q = objArr;
                    f19819r++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (C5283g.class) {
                if (f19817p < 10) {
                    objArr[0] = f19816k;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f19816k = objArr;
                    f19817p++;
                }
            }
        }
    }

    /* renamed from: c */
    public void m13666c(int i) {
        int i2 = this.f19822d;
        int[] iArr = this.f19820a;
        if (iArr.length < i) {
            Object[] objArr = this.f19821b;
            m13668a(i);
            if (this.f19822d > 0) {
                System.arraycopy(iArr, 0, this.f19820a, 0, i2);
                System.arraycopy(objArr, 0, this.f19821b, 0, i2 << 1);
            }
            m13665d(iArr, objArr, i2);
        }
        if (this.f19822d == i2) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public void clear() {
        int i = this.f19822d;
        if (i > 0) {
            int[] iArr = this.f19820a;
            Object[] objArr = this.f19821b;
            this.f19820a = C5274c.f19785a;
            this.f19821b = C5274c.f19787c;
            this.f19822d = 0;
            m13665d(iArr, objArr, i);
        }
        if (this.f19822d <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: e */
    public int m13664e(Object obj, int i) {
        int i2 = this.f19822d;
        if (i2 == 0) {
            return -1;
        }
        int m13667b = m13667b(this.f19820a, i2, i);
        if (m13667b < 0) {
            return m13667b;
        }
        if (obj.equals(this.f19821b[m13667b << 1])) {
            return m13667b;
        }
        int i3 = m13667b + 1;
        while (i3 < i2 && this.f19820a[i3] == i) {
            if (obj.equals(this.f19821b[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = m13667b - 1; i4 >= 0 && this.f19820a[i4] == i; i4--) {
            if (obj.equals(this.f19821b[i4 << 1])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    /* renamed from: g */
    public int m13662g() {
        int i = this.f19822d;
        if (i == 0) {
            return -1;
        }
        int m13667b = m13667b(this.f19820a, i, 0);
        if (m13667b < 0) {
            return m13667b;
        }
        if (this.f19821b[m13667b << 1] == null) {
            return m13667b;
        }
        int i2 = m13667b + 1;
        while (i2 < i && this.f19820a[i2] == 0) {
            if (this.f19821b[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = m13667b - 1; i3 >= 0 && this.f19820a[i3] == 0; i3--) {
            if (this.f19821b[i3 << 1] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    /* renamed from: h */
    public int m13661h(Object obj) {
        int i = this.f19822d * 2;
        Object[] objArr = this.f19821b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int hashCode;
        int[] iArr = this.f19820a;
        Object[] objArr = this.f19821b;
        int i = this.f19822d;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            int i5 = iArr[i3];
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            i4 += hashCode ^ i5;
            i3++;
            i2 += 2;
        }
        return i4;
    }

    /* renamed from: j */
    public void m13659j(C5283g<? extends K, ? extends V> c5283g) {
        int i = c5283g.f19822d;
        m13666c(this.f19822d + i);
        if (this.f19822d == 0) {
            if (i > 0) {
                System.arraycopy(c5283g.f19820a, 0, this.f19820a, 0, i);
                System.arraycopy(c5283g.f19821b, 0, this.f19821b, 0, i << 1);
                this.f19822d = i;
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            put(c5283g.m13660i(i2), c5283g.m13656m(i2));
        }
    }

    /* renamed from: k */
    public V m13658k(int i) {
        Object[] objArr = this.f19821b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f19822d;
        int i4 = 0;
        if (i3 <= 1) {
            m13665d(this.f19820a, objArr, i3);
            this.f19820a = C5274c.f19785a;
            this.f19821b = C5274c.f19787c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f19820a;
            int i6 = 8;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                if (i3 > 8) {
                    i6 = i3 + (i3 >> 1);
                }
                m13668a(i6);
                if (i3 == this.f19822d) {
                    if (i > 0) {
                        System.arraycopy(iArr, 0, this.f19820a, 0, i);
                        System.arraycopy(objArr, 0, this.f19821b, 0, i2);
                    }
                    if (i < i5) {
                        int i7 = i + 1;
                        int i8 = i5 - i;
                        System.arraycopy(iArr, i7, this.f19820a, i, i8);
                        System.arraycopy(objArr, i7 << 1, this.f19821b, i2, i8 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, iArr, i, i10);
                    Object[] objArr2 = this.f19821b;
                    System.arraycopy(objArr2, i9 << 1, objArr2, i2, i10 << 1);
                }
                Object[] objArr3 = this.f19821b;
                int i11 = i5 << 1;
                objArr3[i11] = null;
                objArr3[i11 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 == this.f19822d) {
            this.f19822d = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: l */
    public V m13657l(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f19821b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public V put(K k, V v) {
        int i;
        int m13664e;
        int i2 = this.f19822d;
        if (k == null) {
            m13664e = m13662g();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            m13664e = m13664e(k, hashCode);
        }
        if (m13664e >= 0) {
            int i3 = (m13664e << 1) + 1;
            Object[] objArr = this.f19821b;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = m13664e ^ (-1);
        int[] iArr = this.f19820a;
        if (i2 >= iArr.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            Object[] objArr2 = this.f19821b;
            m13668a(i5);
            if (i2 == this.f19822d) {
                int[] iArr2 = this.f19820a;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f19821b, 0, objArr2.length);
                }
                m13665d(iArr, objArr2, i2);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i4 < i2) {
            int[] iArr3 = this.f19820a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f19821b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f19822d - i4) << 1);
        }
        int i7 = this.f19822d;
        if (i2 == i7) {
            int[] iArr4 = this.f19820a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f19821b;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f19822d = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: b */
    public static int m13667b(int[] iArr, int i, int i2) {
        try {
            return C5274c.m13714a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public V getOrDefault(Object obj, V v) {
        int m13663f = m13663f(obj);
        if (m13663f >= 0) {
            return (V) this.f19821b[(m13663f << 1) + 1];
        }
        return v;
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        if (v2 == null) {
            return put(k, v);
        }
        return v2;
    }

    public boolean remove(Object obj, Object obj2) {
        int m13663f = m13663f(obj);
        if (m13663f >= 0) {
            V m13656m = m13656m(m13663f);
            if (obj2 == m13656m || (obj2 != null && obj2.equals(m13656m))) {
                m13658k(m13663f);
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean replace(K k, V v, V v2) {
        int m13663f = m13663f(k);
        if (m13663f >= 0) {
            V m13656m = m13656m(m13663f);
            if (m13656m == v || (v != null && v.equals(m13656m))) {
                m13657l(m13663f, v2);
                return true;
            }
            return false;
        }
        return false;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19822d * 28);
        sb.append('{');
        for (int i = 0; i < this.f19822d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m13660i = m13660i(i);
            if (m13660i != this) {
                sb.append(m13660i);
            } else {
                sb.append("(this Map)");
            }
            sb.append(SignatureVisitor.INSTANCEOF);
            V m13656m = m13656m(i);
            if (m13656m != this) {
                sb.append(m13656m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public C5283g(int i) {
        if (i == 0) {
            this.f19820a = C5274c.f19785a;
            this.f19821b = C5274c.f19787c;
        } else {
            m13668a(i);
        }
        this.f19822d = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C5283g(C5283g<K, V> c5283g) {
        this();
        if (c5283g != 0) {
            m13659j(c5283g);
        }
    }
}
