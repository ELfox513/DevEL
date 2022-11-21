package p168r4;
/* renamed from: r4.z54 */
/* loaded from: classes2.dex */
public final class z54 implements m54 {

    /* renamed from: a */
    public final String f34356a;

    /* renamed from: b */
    public final C6423xb f34357b;

    /* renamed from: c */
    public final C6386wb f34358c;

    /* renamed from: d */
    public d14 f34359d;

    /* renamed from: e */
    public String f34360e;

    /* renamed from: f */
    public C5713e5 f34361f;

    /* renamed from: g */
    public int f34362g;

    /* renamed from: h */
    public int f34363h;

    /* renamed from: i */
    public int f34364i;

    /* renamed from: j */
    public int f34365j;

    /* renamed from: k */
    public long f34366k;

    /* renamed from: l */
    public boolean f34367l;

    /* renamed from: m */
    public int f34368m;

    /* renamed from: n */
    public int f34369n;

    /* renamed from: o */
    public int f34370o;

    /* renamed from: p */
    public boolean f34371p;

    /* renamed from: q */
    public long f34372q;

    /* renamed from: r */
    public int f34373r;

    /* renamed from: s */
    public long f34374s;

    /* renamed from: t */
    public int f34375t;

    /* renamed from: u */
    public String f34376u;

    /* renamed from: f */
    public static long m4420f(C6386wb c6386wb) {
        return c6386wb.m5785h((c6386wb.m5785h(2) + 1) * 8);
    }

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f34366k = j;
        }
    }

    /* renamed from: e */
    public final int m4421e(C6386wb c6386wb) {
        int m5791b = c6386wb.m5791b();
        az3 m12252b = cz3.m12252b(c6386wb, true);
        this.f34376u = m12252b.f20785c;
        this.f34373r = m12252b.f20783a;
        this.f34375t = m12252b.f20784b;
        return m5791b - c6386wb.m5791b();
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f34362g = 0;
        this.f34366k = -9223372036854775807L;
        this.f34367l = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0154, code lost:
        if (r14.f34367l == false) goto L105;
     */
    @Override // p168r4.m54
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4424b(p168r4.C6423xb r15) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.z54.mo4424b(r4.xb):void");
    }

    public z54(String str) {
        this.f34356a = str;
        C6423xb c6423xb = new C6423xb(1024);
        this.f34357b = c6423xb;
        byte[] m5402q = c6423xb.m5402q();
        this.f34358c = new C6386wb(m5402q, m5402q.length);
        this.f34366k = -9223372036854775807L;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f34359d = d04Var.mo10795r(z64Var.m4415b(), 1);
        this.f34360e = z64Var.m4414c();
    }
}
