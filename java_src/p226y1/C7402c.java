package p226y1;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.pool.TypePool;
import p015b2.C0438g;
/* renamed from: y1.c */
/* loaded from: classes.dex */
public final class C7402c implements InterfaceC7403d, Comparable<C7402c> {

    /* renamed from: X */
    public static final C7402c f37082X;

    /* renamed from: Y */
    public static final C7402c f37083Y;

    /* renamed from: Z */
    public static final C7402c f37084Z;

    /* renamed from: a0 */
    public static final C7402c f37085a0;

    /* renamed from: b0 */
    public static final C7402c f37086b0;

    /* renamed from: c0 */
    public static final C7402c f37087c0;

    /* renamed from: d0 */
    public static final C7402c f37088d0;

    /* renamed from: e0 */
    public static final C7402c f37089e0;

    /* renamed from: f0 */
    public static final C7402c f37090f0;

    /* renamed from: s */
    public static final ConcurrentMap<String, C7402c> f37091s = new ConcurrentHashMap(10000, 0.75f);

    /* renamed from: a */
    public final String f37099a;

    /* renamed from: b */
    public final int f37100b;

    /* renamed from: d */
    public final int f37101d;

    /* renamed from: k */
    public String f37102k;

    /* renamed from: p */
    public C7402c f37103p;

    /* renamed from: q */
    public C7402c f37104q;

    /* renamed from: r */
    public C7402c f37105r;

    /* renamed from: t */
    public static final C7402c f37092t = new C7402c("Z", 1);

    /* renamed from: u */
    public static final C7402c f37093u = new C7402c("B", 2);

    /* renamed from: v */
    public static final C7402c f37094v = new C7402c("C", 3);

    /* renamed from: w */
    public static final C7402c f37095w = new C7402c("D", 4);

    /* renamed from: x */
    public static final C7402c f37096x = new C7402c("F", 5);

    /* renamed from: y */
    public static final C7402c f37097y = new C7402c("I", 6);

    /* renamed from: z */
    public static final C7402c f37098z = new C7402c("J", 7);

    /* renamed from: A */
    public static final C7402c f37059A = new C7402c("S", 8);

    /* renamed from: B */
    public static final C7402c f37060B = new C7402c("V", 0);

    /* renamed from: C */
    public static final C7402c f37061C = new C7402c("<null>", 9);

    /* renamed from: D */
    public static final C7402c f37062D = new C7402c("<addr>", 10);

    /* renamed from: E */
    public static final C7402c f37063E = new C7402c("Ljava/lang/annotation/Annotation;", 9);

    /* renamed from: F */
    public static final C7402c f37064F = new C7402c("Ljava/lang/Class;", 9);

    /* renamed from: G */
    public static final C7402c f37065G = new C7402c("Ljava/lang/Cloneable;", 9);

    /* renamed from: H */
    public static final C7402c f37066H = new C7402c("Ljava/lang/invoke/MethodHandle;", 9);

    /* renamed from: I */
    public static final C7402c f37067I = new C7402c("Ljava/lang/invoke/MethodType;", 9);

    /* renamed from: J */
    public static final C7402c f37068J = new C7402c("Ljava/lang/invoke/VarHandle;", 9);

    /* renamed from: K */
    public static final C7402c f37069K = new C7402c(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR, 9);

    /* renamed from: L */
    public static final C7402c f37070L = new C7402c("Ljava/io/Serializable;", 9);

    /* renamed from: M */
    public static final C7402c f37071M = new C7402c("Ljava/lang/String;", 9);

    /* renamed from: N */
    public static final C7402c f37072N = new C7402c("Ljava/lang/Throwable;", 9);

    /* renamed from: O */
    public static final C7402c f37073O = new C7402c("Ljava/lang/Boolean;", 9);

    /* renamed from: P */
    public static final C7402c f37074P = new C7402c("Ljava/lang/Byte;", 9);

    /* renamed from: Q */
    public static final C7402c f37075Q = new C7402c("Ljava/lang/Character;", 9);

    /* renamed from: R */
    public static final C7402c f37076R = new C7402c("Ljava/lang/Double;", 9);

    /* renamed from: S */
    public static final C7402c f37077S = new C7402c("Ljava/lang/Float;", 9);

    /* renamed from: T */
    public static final C7402c f37078T = new C7402c("Ljava/lang/Integer;", 9);

    /* renamed from: U */
    public static final C7402c f37079U = new C7402c("Ljava/lang/Long;", 9);

    /* renamed from: V */
    public static final C7402c f37080V = new C7402c("Ljava/lang/Short;", 9);

    /* renamed from: W */
    public static final C7402c f37081W = new C7402c("Ljava/lang/Void;", 9);

    public C7402c(String str, int i, int i2) {
        if (str == null) {
            throw new NullPointerException("descriptor == null");
        }
        if (i < 0 || i >= 11) {
            throw new IllegalArgumentException("bad basicType");
        }
        if (i2 >= -1) {
            this.f37099a = str;
            this.f37100b = i;
            this.f37101d = i2;
            this.f37103p = null;
            this.f37104q = null;
            this.f37105r = null;
            return;
        }
        throw new IllegalArgumentException("newAt < -1");
    }

    /* renamed from: P */
    public static C7402c m1532P(C7402c c7402c) {
        C7402c putIfAbsent = f37091s.putIfAbsent(c7402c.m1524z(), c7402c);
        return putIfAbsent != null ? putIfAbsent : c7402c;
    }

    /* renamed from: H */
    public boolean m1540H() {
        return this.f37099a.charAt(0) == '[';
    }

    /* renamed from: I */
    public boolean m1539I() {
        return m1540H() || equals(f37061C);
    }

    /* renamed from: J */
    public boolean m1538J() {
        int i = this.f37100b;
        return (i == 4 || i == 7) ? false : true;
    }

    /* renamed from: K */
    public boolean m1537K() {
        int i = this.f37100b;
        return i == 4 || i == 7;
    }

    /* renamed from: L */
    public boolean m1536L() {
        int i = this.f37100b;
        return i == 1 || i == 2 || i == 3 || i == 6 || i == 8;
    }

    /* renamed from: M */
    public boolean m1535M() {
        switch (this.f37100b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: N */
    public boolean m1534N() {
        return this.f37100b == 9;
    }

    /* renamed from: O */
    public boolean m1533O() {
        return this.f37101d >= 0;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: f */
    public int mo1523f() {
        return this.f37100b;
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return this;
    }

    @Override // java.lang.Comparable
    /* renamed from: h */
    public int compareTo(C7402c c7402c) {
        return this.f37099a.compareTo(c7402c.f37099a);
    }

    public int hashCode() {
        return this.f37099a.hashCode();
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: l */
    public boolean mo1522l() {
        return false;
    }

    /* renamed from: n */
    public int m1527n() {
        int i = this.f37100b;
        return (i == 4 || i == 7) ? 2 : 1;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: p */
    public int mo1521p() {
        int i = this.f37100b;
        if (i == 1 || i == 2 || i == 3 || i == 6 || i == 8) {
            return 6;
        }
        return i;
    }

    public String toString() {
        return this.f37099a;
    }

    /* renamed from: z */
    public String m1524z() {
        return this.f37099a;
    }

    static {
        C7402c c7402c;
        C7402c c7402c2;
        C7402c c7402c3;
        C7402c c7402c4;
        C7402c c7402c5;
        C7402c c7402c6;
        C7402c c7402c7;
        C7402c c7402c8;
        C7402c c7402c9;
        f37082X = new C7402c("[" + c7402c.f37099a, 9);
        f37083Y = new C7402c("[" + c7402c2.f37099a, 9);
        f37084Z = new C7402c("[" + c7402c3.f37099a, 9);
        f37085a0 = new C7402c("[" + c7402c4.f37099a, 9);
        f37086b0 = new C7402c("[" + c7402c5.f37099a, 9);
        f37087c0 = new C7402c("[" + c7402c6.f37099a, 9);
        f37088d0 = new C7402c("[" + c7402c7.f37099a, 9);
        f37089e0 = new C7402c("[" + c7402c9.f37099a, 9);
        f37090f0 = new C7402c("[" + c7402c8.f37099a, 9);
        m1544C();
    }

    /* renamed from: C */
    public static void m1544C() {
        m1532P(f37092t);
        m1532P(f37093u);
        m1532P(f37094v);
        m1532P(f37095w);
        m1532P(f37096x);
        m1532P(f37097y);
        m1532P(f37098z);
        m1532P(f37059A);
        m1532P(f37063E);
        m1532P(f37064F);
        m1532P(f37065G);
        m1532P(f37066H);
        m1532P(f37068J);
        m1532P(f37069K);
        m1532P(f37070L);
        m1532P(f37071M);
        m1532P(f37072N);
        m1532P(f37073O);
        m1532P(f37074P);
        m1532P(f37075Q);
        m1532P(f37076R);
        m1532P(f37077S);
        m1532P(f37078T);
        m1532P(f37079U);
        m1532P(f37080V);
        m1532P(f37081W);
        m1532P(f37082X);
        m1532P(f37083Y);
        m1532P(f37084Z);
        m1532P(f37085a0);
        m1532P(f37086b0);
        m1532P(f37087c0);
        m1532P(f37088d0);
        m1532P(f37089e0);
        m1532P(f37090f0);
    }

    /* renamed from: D */
    public static C7402c m1543D(String str) {
        C7402c c7402c = f37091s.get(str);
        if (c7402c != null) {
            return c7402c;
        }
        try {
            char charAt = str.charAt(0);
            if (charAt == '[') {
                return m1543D(str.substring(1)).m1528j();
            }
            int length = str.length();
            if (charAt == 'L') {
                int i = length - 1;
                if (str.charAt(i) == ';') {
                    for (int i2 = 1; i2 < i; i2++) {
                        char charAt2 = str.charAt(i2);
                        if (charAt2 != '(' && charAt2 != ')' && charAt2 != '.') {
                            if (charAt2 != '/') {
                                if (charAt2 != ';' && charAt2 != '[') {
                                }
                            } else if (i2 == 1 || i2 == i || str.charAt(i2 - 1) == '/') {
                                throw new IllegalArgumentException("bad descriptor: " + str);
                            }
                        }
                        throw new IllegalArgumentException("bad descriptor: " + str);
                    }
                    return m1532P(new C7402c(str, 9));
                }
            }
            throw new IllegalArgumentException("bad descriptor: " + str);
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("descriptor is empty");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("descriptor == null");
        }
    }

    /* renamed from: E */
    public static C7402c m1542E(String str) {
        if (str != null) {
            if (str.startsWith("[")) {
                return m1543D(str);
            }
            return m1543D('L' + str + TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
        }
        throw new NullPointerException("name == null");
    }

    /* renamed from: F */
    public static C7402c m1541F(String str) {
        try {
            if (str.equals("V")) {
                return f37060B;
            }
            return m1543D(str);
        } catch (NullPointerException unused) {
            throw new NullPointerException("descriptor == null");
        }
    }

    /* renamed from: d */
    public static void m1530d() {
        f37091s.clear();
        m1544C();
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: A */
    public C7402c mo1520v() {
        int i = this.f37100b;
        if (i != 1 && i != 2 && i != 3 && i != 6 && i != 8) {
            return this;
        }
        return f37097y;
    }

    /* renamed from: B */
    public C7402c m1545B() {
        C7402c c7402c = this.f37105r;
        if (c7402c != null) {
            return c7402c;
        }
        throw new IllegalArgumentException("initialized type: " + this.f37099a);
    }

    /* renamed from: c */
    public C7402c m1531c(int i) {
        if (i >= 0) {
            if (m1534N()) {
                if (!m1533O()) {
                    C7402c c7402c = new C7402c('N' + C0438g.m26478g(i) + this.f37099a, 9, i);
                    c7402c.f37105r = this;
                    return m1532P(c7402c);
                }
                throw new IllegalArgumentException("already uninitialized: " + this.f37099a);
            }
            throw new IllegalArgumentException("not a reference type: " + this.f37099a);
        }
        throw new IllegalArgumentException("newAt < 0");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7402c)) {
            return false;
        }
        return this.f37099a.equals(((C7402c) obj).f37099a);
    }

    /* renamed from: j */
    public C7402c m1528j() {
        if (this.f37103p == null) {
            this.f37103p = m1532P(new C7402c(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH + this.f37099a, 9));
        }
        return this.f37103p;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        switch (this.f37100b) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "byte";
            case 3:
                return "char";
            case 4:
                return "double";
            case 5:
                return "float";
            case 6:
                return "int";
            case 7:
                return "long";
            case 8:
                return "short";
            case 9:
                if (m1540H()) {
                    return m1525x().toHuman() + "[]";
                }
                return m1526u().replace("/", ".");
            default:
                return this.f37099a;
        }
    }

    /* renamed from: u */
    public String m1526u() {
        if (this.f37102k == null) {
            if (m1534N()) {
                if (this.f37099a.charAt(0) == '[') {
                    this.f37102k = this.f37099a;
                } else {
                    String str = this.f37099a;
                    this.f37102k = str.substring(1, str.length() - 1);
                }
            } else {
                throw new IllegalArgumentException("not an object type: " + this.f37099a);
            }
        }
        return this.f37102k;
    }

    /* renamed from: x */
    public C7402c m1525x() {
        if (this.f37104q == null) {
            if (this.f37099a.charAt(0) == '[') {
                this.f37104q = m1543D(this.f37099a.substring(1));
            } else {
                throw new IllegalArgumentException("not an array type: " + this.f37099a);
            }
        }
        return this.f37104q;
    }

    public C7402c(String str, int i) {
        this(str, i, -1);
    }
}
