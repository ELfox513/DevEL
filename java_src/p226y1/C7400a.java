package p226y1;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: y1.a */
/* loaded from: classes.dex */
public final class C7400a implements Comparable<C7400a> {

    /* renamed from: p */
    public static final ConcurrentMap<String, C7400a> f37018p = new ConcurrentHashMap(10000, 0.75f);

    /* renamed from: a */
    public final String f37019a;

    /* renamed from: b */
    public final C7402c f37020b;

    /* renamed from: d */
    public final C7401b f37021d;

    /* renamed from: k */
    public C7401b f37022k;

    /* renamed from: c */
    public static void m1570c() {
        f37018p.clear();
    }

    /* renamed from: z */
    public static C7400a m1559z(C7400a c7400a) {
        C7400a putIfAbsent = f37018p.putIfAbsent(c7400a.m1567h(), c7400a);
        return putIfAbsent != null ? putIfAbsent : c7400a;
    }

    @Override // java.lang.Comparable
    /* renamed from: d */
    public int compareTo(C7400a c7400a) {
        if (this == c7400a) {
            return 0;
        }
        int compareTo = this.f37020b.compareTo(c7400a.f37020b);
        if (compareTo != 0) {
            return compareTo;
        }
        int size = this.f37021d.size();
        int size2 = c7400a.f37021d.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int compareTo2 = this.f37021d.m1558A(i).compareTo(c7400a.f37021d.m1558A(i));
            if (compareTo2 != 0) {
                return compareTo2;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    /* renamed from: h */
    public String m1567h() {
        return this.f37019a;
    }

    public int hashCode() {
        return this.f37019a.hashCode();
    }

    /* renamed from: l */
    public C7401b m1565l() {
        return this.f37021d;
    }

    /* renamed from: n */
    public C7402c m1564n() {
        return this.f37020b;
    }

    public String toString() {
        return this.f37019a;
    }

    /* renamed from: f */
    public static C7400a m1568f(String str) {
        int i;
        C7400a c7400a = f37018p.get(str);
        if (c7400a != null) {
            return c7400a;
        }
        C7402c[] m1560x = m1560x(str);
        int i2 = 1;
        int i3 = 0;
        while (true) {
            char charAt = str.charAt(i2);
            if (charAt == ')') {
                C7402c m1541F = C7402c.m1541F(str.substring(i2 + 1));
                C7401b c7401b = new C7401b(i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    c7401b.m1551I(i4, m1560x[i4]);
                }
                return new C7400a(str, m1541F, c7401b);
            }
            int i5 = i2;
            while (charAt == '[') {
                i5++;
                charAt = str.charAt(i5);
            }
            if (charAt == 'L') {
                int indexOf = str.indexOf(59, i5);
                if (indexOf != -1) {
                    i = indexOf + 1;
                } else {
                    throw new IllegalArgumentException("bad descriptor");
                }
            } else {
                i = i5 + 1;
            }
            m1560x[i3] = C7402c.m1543D(str.substring(i2, i));
            i3++;
            i2 = i;
        }
    }

    /* renamed from: p */
    public static C7400a m1563p(String str) {
        if (str != null) {
            C7400a c7400a = f37018p.get(str);
            if (c7400a != null) {
                return c7400a;
            }
            return m1559z(m1568f(str));
        }
        throw new NullPointerException("descriptor == null");
    }

    /* renamed from: v */
    public static C7400a m1561v(C7402c c7402c, int i) {
        StringBuilder sb = new StringBuilder(100);
        sb.append('(');
        for (int i2 = 0; i2 < i; i2++) {
            sb.append('I');
        }
        sb.append(')');
        sb.append(c7402c.m1524z());
        return m1563p(sb.toString());
    }

    /* renamed from: A */
    public C7400a m1571A(C7402c c7402c) {
        String str = "(" + c7402c.m1524z() + this.f37019a.substring(1);
        C7401b m1549K = this.f37021d.m1549K(c7402c);
        m1549K.setImmutable();
        return m1559z(new C7400a(str, this.f37020b, m1549K));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7400a)) {
            return false;
        }
        return this.f37019a.equals(((C7400a) obj).f37019a);
    }

    /* renamed from: j */
    public C7401b m1566j() {
        if (this.f37022k == null) {
            int size = this.f37021d.size();
            C7401b c7401b = new C7401b(size);
            boolean z = false;
            for (int i = 0; i < size; i++) {
                C7402c m1558A = this.f37021d.m1558A(i);
                if (m1558A.m1536L()) {
                    m1558A = C7402c.f37097y;
                    z = true;
                }
                c7401b.m1551I(i, m1558A);
            }
            if (!z) {
                c7401b = this.f37021d;
            }
            this.f37022k = c7401b;
        }
        return this.f37022k;
    }

    public C7400a(String str, C7402c c7402c, C7401b c7401b) {
        if (str != null) {
            if (c7402c != null) {
                if (c7401b != null) {
                    this.f37019a = str;
                    this.f37020b = c7402c;
                    this.f37021d = c7401b;
                    this.f37022k = null;
                    return;
                }
                throw new NullPointerException("parameterTypes == null");
            }
            throw new NullPointerException("returnType == null");
        }
        throw new NullPointerException("descriptor == null");
    }

    /* renamed from: u */
    public static C7400a m1562u(String str, C7402c c7402c, boolean z, boolean z2) {
        C7400a m1563p = m1563p(str);
        if (z) {
            return m1563p;
        }
        if (z2) {
            c7402c = c7402c.m1531c(Integer.MAX_VALUE);
        }
        return m1563p.m1571A(c7402c);
    }

    /* renamed from: x */
    public static C7402c[] m1560x(String str) {
        int length = str.length();
        int i = 0;
        if (str.charAt(0) == '(') {
            int i2 = 1;
            int i3 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                char charAt = str.charAt(i2);
                if (charAt == ')') {
                    i = i2;
                    break;
                }
                if (charAt >= 'A' && charAt <= 'Z') {
                    i3++;
                }
                i2++;
            }
            if (i != 0 && i != length - 1) {
                if (str.indexOf(41, i + 1) == -1) {
                    return new C7402c[i3];
                }
                throw new IllegalArgumentException("bad descriptor");
            }
            throw new IllegalArgumentException("bad descriptor");
        }
        throw new IllegalArgumentException("bad descriptor");
    }
}
