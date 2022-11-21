package p168r4;
/* renamed from: r4.n84 */
/* loaded from: classes2.dex */
public class n84 {

    /* renamed from: x */
    public static final n84 f28202x;
    @Deprecated

    /* renamed from: y */
    public static final n84 f28203y;

    /* renamed from: z */
    public static final InterfaceC5674d3<n84> f28204z;

    /* renamed from: a */
    public final int f28205a = Integer.MAX_VALUE;

    /* renamed from: b */
    public final int f28206b = Integer.MAX_VALUE;

    /* renamed from: c */
    public final int f28207c = Integer.MAX_VALUE;

    /* renamed from: d */
    public final int f28208d = Integer.MAX_VALUE;

    /* renamed from: e */
    public final int f28209e = 0;

    /* renamed from: f */
    public final int f28210f = 0;

    /* renamed from: g */
    public final int f28211g = 0;

    /* renamed from: h */
    public final int f28212h = 0;

    /* renamed from: i */
    public final int f28213i;

    /* renamed from: j */
    public final int f28214j;

    /* renamed from: k */
    public final boolean f28215k;

    /* renamed from: l */
    public final o33<String> f28216l;

    /* renamed from: m */
    public final o33<String> f28217m;

    /* renamed from: n */
    public final int f28218n;

    /* renamed from: o */
    public final int f28219o;

    /* renamed from: p */
    public final int f28220p;

    /* renamed from: q */
    public final o33<String> f28221q;

    /* renamed from: r */
    public final o33<String> f28222r;

    /* renamed from: s */
    public final int f28223s;

    /* renamed from: t */
    public final boolean f28224t;

    /* renamed from: u */
    public final boolean f28225u;

    /* renamed from: v */
    public final boolean f28226v;

    /* renamed from: w */
    public final y33<Integer> f28227w;

    public n84(m74 m74Var) {
        int i;
        int i2;
        boolean z;
        o33<String> o33Var;
        o33<String> o33Var2;
        o33<String> o33Var3;
        o33<String> o33Var4;
        int i3;
        y33<Integer> y33Var;
        i = m74Var.f27527a;
        this.f28213i = i;
        i2 = m74Var.f27528b;
        this.f28214j = i2;
        z = m74Var.f27529c;
        this.f28215k = z;
        o33Var = m74Var.f27530d;
        this.f28216l = o33Var;
        o33Var2 = m74Var.f27531e;
        this.f28217m = o33Var2;
        this.f28218n = 0;
        this.f28219o = Integer.MAX_VALUE;
        this.f28220p = Integer.MAX_VALUE;
        o33Var3 = m74Var.f27532f;
        this.f28221q = o33Var3;
        o33Var4 = m74Var.f27533g;
        this.f28222r = o33Var4;
        i3 = m74Var.f27534h;
        this.f28223s = i3;
        this.f28224t = false;
        this.f28225u = false;
        this.f28226v = false;
        y33Var = m74Var.f27535i;
        this.f28227w = y33Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            n84 n84Var = (n84) obj;
            if (this.f28215k == n84Var.f28215k && this.f28213i == n84Var.f28213i && this.f28214j == n84Var.f28214j && this.f28216l.equals(n84Var.f28216l) && this.f28217m.equals(n84Var.f28217m) && this.f28221q.equals(n84Var.f28221q) && this.f28222r.equals(n84Var.f28222r) && this.f28223s == n84Var.f28223s && this.f28227w.equals(n84Var.f28227w)) {
                return true;
            }
        }
        return false;
    }

    static {
        n84 n84Var = new n84(new m74());
        f28202x = n84Var;
        f28203y = n84Var;
        f28204z = l64.f27114a;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.f28215k ? 1 : 0) - 1048002209) * 31) + this.f28213i) * 31) + this.f28214j) * 31) + this.f28216l.hashCode()) * 31) + this.f28217m.hashCode()) * 961) + Integer.MAX_VALUE) * 31) + Integer.MAX_VALUE) * 31) + this.f28221q.hashCode()) * 31) + this.f28222r.hashCode()) * 31) + this.f28223s) * 923521) + this.f28227w.hashCode();
    }
}
