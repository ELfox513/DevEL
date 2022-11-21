package p168r4;
/* renamed from: r4.u14 */
/* loaded from: classes2.dex */
public final class u14 implements a04 {

    /* renamed from: q */
    public static final g04 f32129q = t14.f31621a;

    /* renamed from: f */
    public d04 f32135f;

    /* renamed from: h */
    public boolean f32137h;

    /* renamed from: i */
    public long f32138i;

    /* renamed from: j */
    public int f32139j;

    /* renamed from: k */
    public int f32140k;

    /* renamed from: l */
    public int f32141l;

    /* renamed from: m */
    public long f32142m;

    /* renamed from: n */
    public boolean f32143n;

    /* renamed from: o */
    public s14 f32144o;

    /* renamed from: p */
    public y14 f32145p;

    /* renamed from: a */
    public final C6423xb f32130a = new C6423xb(4);

    /* renamed from: b */
    public final C6423xb f32131b = new C6423xb(9);

    /* renamed from: c */
    public final C6423xb f32132c = new C6423xb(11);

    /* renamed from: d */
    public final C6423xb f32133d = new C6423xb();

    /* renamed from: e */
    public final v14 f32134e = new v14();

    /* renamed from: g */
    public int f32136g = 1;

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f32135f = d04Var;
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        if (j == 0) {
            this.f32136g = 1;
            this.f32137h = false;
        } else {
            this.f32136g = 3;
        }
        this.f32139j = 0;
    }

    /* renamed from: a */
    public final C6423xb m6649a(b04 b04Var) {
        if (this.f32141l > this.f32133d.m5401r()) {
            C6423xb c6423xb = this.f32133d;
            int m5401r = c6423xb.m5401r();
            c6423xb.m5409j(new byte[Math.max(m5401r + m5401r, this.f32141l)], 0);
        } else {
            this.f32133d.m5403p(0);
        }
        this.f32133d.m5405n(this.f32141l);
        ((vz3) b04Var).mo5961f(this.f32133d.m5402q(), 0, this.f32141l, false);
        return this.f32133d;
    }

    /* renamed from: b */
    public final void m6648b() {
        if (!this.f32143n) {
            this.f32135f.mo10798j(new y04(-9223372036854775807L, 0L));
            this.f32143n = true;
        }
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        vz3 vz3Var = (vz3) b04Var;
        vz3Var.mo5960i(this.f32130a.m5402q(), 0, 3, false);
        this.f32130a.m5403p(0);
        if (this.f32130a.m5393z() != 4607062) {
            return false;
        }
        vz3Var.mo5960i(this.f32130a.m5402q(), 0, 2, false);
        this.f32130a.m5403p(0);
        if ((this.f32130a.m5396w() & 250) != 0) {
            return false;
        }
        vz3Var.mo5960i(this.f32130a.m5402q(), 0, 4, false);
        this.f32130a.m5403p(0);
        int m5423D = this.f32130a.m5423D();
        b04Var.mo5959k();
        vz3 vz3Var2 = (vz3) b04Var;
        vz3Var2.m5955o(m5423D, false);
        vz3Var2.mo5960i(this.f32130a.m5402q(), 0, 4, false);
        this.f32130a.m5403p(0);
        if (this.f32130a.m5423D() != 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0009 A[SYNTHETIC] */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r17, p168r4.w04 r18) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.u14.mo4474f(r4.b04, r4.w04):int");
    }
}
