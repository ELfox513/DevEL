package p168r4;
/* renamed from: r4.sv3 */
/* loaded from: classes2.dex */
public final class sv3 implements Comparable<sv3> {

    /* renamed from: a */
    public final boolean f31529a;

    /* renamed from: b */
    public final boolean f31530b;

    /* renamed from: d */
    public final boolean f31531d;

    /* renamed from: k */
    public final boolean f31532k;

    /* renamed from: p */
    public final int f31533p;

    /* renamed from: q */
    public final int f31534q;

    /* renamed from: r */
    public final int f31535r;

    /* renamed from: s */
    public final int f31536s;

    /* renamed from: t */
    public final boolean f31537t;

    public sv3(C5713e5 c5713e5, ov3 ov3Var, int i, String str) {
        boolean z;
        boolean z2;
        o33<String> o33Var;
        int i2;
        boolean z3;
        boolean z4 = false;
        this.f31530b = uv3.m6327k(i, false);
        int i3 = c5713e5.f22806d;
        int i4 = ov3Var.f29167A;
        if (1 != (i3 & 1)) {
            z = false;
        } else {
            z = true;
        }
        this.f31531d = z;
        if ((i3 & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f31532k = z2;
        if (ov3Var.f28222r.isEmpty()) {
            o33Var = o33.m8899r("");
        } else {
            o33Var = ov3Var.f28222r;
        }
        int i5 = 0;
        while (true) {
            if (i5 < o33Var.size()) {
                i2 = uv3.m6325m(c5713e5, o33Var.get(i5), false);
                if (i2 > 0) {
                    break;
                }
                i5++;
            } else {
                i5 = Integer.MAX_VALUE;
                i2 = 0;
                break;
            }
        }
        this.f31533p = i5;
        this.f31534q = i2;
        int bitCount = Integer.bitCount(0);
        this.f31535r = bitCount;
        this.f31537t = false;
        if (uv3.m6326l(str) == null) {
            z3 = true;
        } else {
            z3 = false;
        }
        int m6325m = uv3.m6325m(c5713e5, str, z3);
        this.f31536s = m6325m;
        if (i2 > 0 || ((ov3Var.f28222r.isEmpty() && bitCount > 0) || this.f31531d || (this.f31532k && m6325m > 0))) {
            z4 = true;
        }
        this.f31529a = z4;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public final int compareTo(sv3 sv3Var) {
        b53 mo4452a;
        c33 mo4467d = c33.m12635i().mo4467d(this.f31530b, sv3Var.f31530b).mo4470a(Integer.valueOf(this.f31533p), Integer.valueOf(sv3Var.f31533p), b53.m12868b().mo4452a()).mo4469b(this.f31534q, sv3Var.f31534q).mo4469b(this.f31535r, sv3Var.f31535r).mo4467d(this.f31531d, sv3Var.f31531d);
        Boolean valueOf = Boolean.valueOf(this.f31532k);
        Boolean valueOf2 = Boolean.valueOf(sv3Var.f31532k);
        if (this.f31534q == 0) {
            mo4452a = b53.m12868b();
        } else {
            mo4452a = b53.m12868b().mo4452a();
        }
        c33 mo4469b = mo4467d.mo4470a(valueOf, valueOf2, mo4452a).mo4469b(this.f31536s, sv3Var.f31536s);
        if (this.f31535r == 0) {
            mo4469b = mo4469b.mo4468c(false, false);
        }
        return mo4469b.mo4466e();
    }
}
