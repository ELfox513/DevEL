package p218x1;

import com.prineside.tdi2.tiles.CoreTile;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.pool.TypePool;
import p226y1.C7402c;
/* renamed from: x1.e0 */
/* loaded from: classes.dex */
public final class C7214e0 extends AbstractC7218g0 {

    /* renamed from: a */
    public final C7402c f36583a;

    /* renamed from: b */
    public C7212d0 f36584b;

    /* renamed from: d */
    public static final ConcurrentMap<C7402c, C7214e0> f36570d = new ConcurrentHashMap(CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 0.75f);

    /* renamed from: k */
    public static final C7214e0 f36571k = new C7214e0(C7402c.f37069K);

    /* renamed from: p */
    public static final C7214e0 f36572p = new C7214e0(C7402c.f37073O);

    /* renamed from: q */
    public static final C7214e0 f36573q = new C7214e0(C7402c.f37074P);

    /* renamed from: r */
    public static final C7214e0 f36574r = new C7214e0(C7402c.f37075Q);

    /* renamed from: s */
    public static final C7214e0 f36575s = new C7214e0(C7402c.f37076R);

    /* renamed from: t */
    public static final C7214e0 f36576t = new C7214e0(C7402c.f37077S);

    /* renamed from: u */
    public static final C7214e0 f36577u = new C7214e0(C7402c.f37079U);

    /* renamed from: v */
    public static final C7214e0 f36578v = new C7214e0(C7402c.f37078T);

    /* renamed from: w */
    public static final C7214e0 f36579w = new C7214e0(C7402c.f37080V);

    /* renamed from: x */
    public static final C7214e0 f36580x = new C7214e0(C7402c.f37081W);

    /* renamed from: y */
    public static final C7214e0 f36581y = new C7214e0(C7402c.f37082X);

    /* renamed from: z */
    public static final C7214e0 f36582z = new C7214e0(C7402c.f37083Y);

    /* renamed from: A */
    public static final C7214e0 f36562A = new C7214e0(C7402c.f37084Z);

    /* renamed from: B */
    public static final C7214e0 f36563B = new C7214e0(C7402c.f37085a0);

    /* renamed from: C */
    public static final C7214e0 f36564C = new C7214e0(C7402c.f37086b0);

    /* renamed from: D */
    public static final C7214e0 f36565D = new C7214e0(C7402c.f37088d0);

    /* renamed from: E */
    public static final C7214e0 f36566E = new C7214e0(C7402c.f37087c0);

    /* renamed from: F */
    public static final C7214e0 f36567F = new C7214e0(C7402c.f37090f0);

    /* renamed from: G */
    public static final C7214e0 f36568G = new C7214e0(C7402c.f37066H);

    /* renamed from: H */
    public static final C7214e0 f36569H = new C7214e0(C7402c.f37068J);

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37064F;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return this.f36583a.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "type";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f36583a.toHuman();
    }

    public String toString() {
        return "type{" + toHuman() + '}';
    }

    /* renamed from: x */
    public C7402c m2097x() {
        return this.f36583a;
    }

    static {
        m2102B();
    }

    /* renamed from: B */
    public static void m2102B() {
        m2100D(f36571k);
        m2100D(f36572p);
        m2100D(f36573q);
        m2100D(f36574r);
        m2100D(f36575s);
        m2100D(f36576t);
        m2100D(f36577u);
        m2100D(f36578v);
        m2100D(f36579w);
        m2100D(f36580x);
        m2100D(f36581y);
        m2100D(f36582z);
        m2100D(f36562A);
        m2100D(f36563B);
        m2100D(f36564C);
        m2100D(f36565D);
        m2100D(f36566E);
        m2100D(f36567F);
        m2100D(f36568G);
    }

    /* renamed from: C */
    public static C7214e0 m2101C(C7402c c7402c) {
        C7214e0 c7214e0 = new C7214e0(c7402c);
        C7214e0 putIfAbsent = f36570d.putIfAbsent(c7402c, c7214e0);
        if (putIfAbsent != null) {
            return putIfAbsent;
        }
        return c7214e0;
    }

    /* renamed from: D */
    public static void m2100D(C7214e0 c7214e0) {
        if (f36570d.putIfAbsent(c7214e0.m2097x(), c7214e0) == null) {
            return;
        }
        throw new IllegalStateException("Attempted re-init of " + c7214e0);
    }

    /* renamed from: n */
    public static void m2099n() {
        f36570d.clear();
        m2102B();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return this.f36583a.m1524z().compareTo(((C7214e0) abstractC7204a).f36583a.m1524z());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7214e0) || this.f36583a != ((C7214e0) obj).f36583a) {
            return false;
        }
        return true;
    }

    /* renamed from: z */
    public C7212d0 m2096z() {
        if (this.f36584b == null) {
            this.f36584b = new C7212d0(this.f36583a.m1524z());
        }
        return this.f36584b;
    }

    public C7214e0(C7402c c7402c) {
        if (c7402c != null) {
            if (c7402c != C7402c.f37061C) {
                this.f36583a = c7402c;
                this.f36584b = null;
                return;
            }
            throw new UnsupportedOperationException("KNOWN_NULL is not representable");
        }
        throw new NullPointerException("type == null");
    }

    /* renamed from: u */
    public static C7214e0 m2098u(C7402c c7402c) {
        switch (c7402c.mo1523f()) {
            case 0:
                return f36580x;
            case 1:
                return f36572p;
            case 2:
                return f36573q;
            case 3:
                return f36574r;
            case 4:
                return f36575s;
            case 5:
                return f36576t;
            case 6:
                return f36578v;
            case 7:
                return f36577u;
            case 8:
                return f36579w;
            default:
                throw new IllegalArgumentException("not primitive: " + c7402c);
        }
    }

    /* renamed from: A */
    public String m2103A() {
        String m2112u = m2096z().m2112u();
        int lastIndexOf = m2112u.lastIndexOf(47);
        int lastIndexOf2 = m2112u.lastIndexOf(91);
        if (lastIndexOf == -1) {
            return "default";
        }
        return m2112u.substring(lastIndexOf2 + 2, lastIndexOf).replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
    }
}
