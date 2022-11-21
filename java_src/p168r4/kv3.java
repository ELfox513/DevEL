package p168r4;
/* renamed from: r4.kv3 */
/* loaded from: classes2.dex */
public final class kv3 implements Comparable<kv3> {

    /* renamed from: a */
    public final boolean f26757a;

    /* renamed from: b */
    public final String f26758b;

    /* renamed from: d */
    public final ov3 f26759d;

    /* renamed from: k */
    public final boolean f26760k;

    /* renamed from: p */
    public final int f26761p;

    /* renamed from: q */
    public final int f26762q;

    /* renamed from: r */
    public final int f26763r;

    /* renamed from: s */
    public final int f26764s;

    /* renamed from: t */
    public final int f26765t;

    /* renamed from: u */
    public final boolean f26766u;

    /* renamed from: v */
    public final int f26767v;

    /* renamed from: w */
    public final int f26768w;

    /* renamed from: x */
    public final int f26769x;

    /* renamed from: y */
    public final int f26770y;

    @Override // java.lang.Comparable
    /* renamed from: c */
    public final int compareTo(kv3 kv3Var) {
        b53 b53Var;
        b53 mo4452a;
        b53 b53Var2;
        if (this.f26760k) {
            mo4452a = uv3.f32456f;
        } else {
            b53Var = uv3.f32456f;
            mo4452a = b53Var.mo4452a();
        }
        c33 mo4470a = c33.m12635i().mo4467d(this.f26760k, kv3Var.f26760k).mo4470a(Integer.valueOf(this.f26762q), Integer.valueOf(kv3Var.f26762q), b53.m12868b().mo4452a()).mo4469b(this.f26761p, kv3Var.f26761p).mo4469b(this.f26763r, kv3Var.f26763r).mo4467d(true, true).mo4470a(Integer.valueOf(this.f26770y), Integer.valueOf(kv3Var.f26770y), b53.m12868b().mo4452a());
        Integer valueOf = Integer.valueOf(this.f26769x);
        Integer valueOf2 = Integer.valueOf(kv3Var.f26769x);
        boolean z = this.f26759d.f28225u;
        b53Var2 = uv3.f32457g;
        c33 mo4470a2 = mo4470a.mo4470a(valueOf, valueOf2, b53Var2).mo4467d(this.f26766u, kv3Var.f26766u).mo4470a(Integer.valueOf(this.f26764s), Integer.valueOf(kv3Var.f26764s), b53.m12868b().mo4452a()).mo4469b(this.f26765t, kv3Var.f26765t).mo4470a(Integer.valueOf(this.f26767v), Integer.valueOf(kv3Var.f26767v), mo4452a).mo4470a(Integer.valueOf(this.f26768w), Integer.valueOf(kv3Var.f26768w), mo4452a);
        Integer valueOf3 = Integer.valueOf(this.f26769x);
        Integer valueOf4 = Integer.valueOf(kv3Var.f26769x);
        if (!C5979lc.m9729H(this.f26758b, kv3Var.f26758b)) {
            mo4452a = uv3.f32457g;
        }
        return mo4470a2.mo4470a(valueOf3, valueOf4, mo4452a).mo4466e();
    }

    public kv3(C5713e5 c5713e5, ov3 ov3Var, int i) {
        int i2;
        int i3;
        boolean z;
        int i4;
        this.f26759d = ov3Var;
        this.f26758b = uv3.m6326l(c5713e5.f22805c);
        int i5 = 0;
        this.f26760k = uv3.m6327k(i, false);
        int i6 = 0;
        while (true) {
            i2 = Integer.MAX_VALUE;
            if (i6 < ov3Var.f28217m.size()) {
                i3 = uv3.m6325m(c5713e5, ov3Var.f28217m.get(i6), false);
                if (i3 > 0) {
                    break;
                }
                i6++;
            } else {
                i6 = Integer.MAX_VALUE;
                i3 = 0;
                break;
            }
        }
        this.f26762q = i6;
        this.f26761p = i3;
        this.f26763r = Integer.bitCount(0);
        if (1 != (c5713e5.f22806d & 1)) {
            z = false;
        } else {
            z = true;
        }
        this.f26766u = z;
        this.f26767v = c5713e5.f22827y;
        this.f26768w = c5713e5.f22828z;
        this.f26769x = c5713e5.f22810h;
        this.f26757a = true;
        String[] m9681y = C5979lc.m9681y();
        int i7 = 0;
        while (true) {
            if (i7 < m9681y.length) {
                i4 = uv3.m6325m(c5713e5, m9681y[i7], false);
                if (i4 > 0) {
                    break;
                }
                i7++;
            } else {
                i7 = Integer.MAX_VALUE;
                i4 = 0;
                break;
            }
        }
        this.f26764s = i7;
        this.f26765t = i4;
        while (true) {
            if (i5 < ov3Var.f28221q.size()) {
                String str = c5713e5.f22814l;
                if (str != null && str.equals(ov3Var.f28221q.get(i5))) {
                    i2 = i5;
                    break;
                }
                i5++;
            } else {
                break;
            }
        }
        this.f26770y = i2;
    }
}
