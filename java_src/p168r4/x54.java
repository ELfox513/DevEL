package p168r4;
/* renamed from: r4.x54 */
/* loaded from: classes2.dex */
public final class x54 implements m54 {

    /* renamed from: a */
    public final o64 f33463a;

    /* renamed from: b */
    public String f33464b;

    /* renamed from: c */
    public d14 f33465c;

    /* renamed from: d */
    public w54 f33466d;

    /* renamed from: e */
    public boolean f33467e;

    /* renamed from: l */
    public long f33474l;

    /* renamed from: f */
    public final boolean[] f33468f = new boolean[3];

    /* renamed from: g */
    public final b64 f33469g = new b64(32, 128);

    /* renamed from: h */
    public final b64 f33470h = new b64(33, 128);

    /* renamed from: i */
    public final b64 f33471i = new b64(34, 128);

    /* renamed from: j */
    public final b64 f33472j = new b64(39, 128);

    /* renamed from: k */
    public final b64 f33473k = new b64(40, 128);

    /* renamed from: m */
    public long f33475m = -9223372036854775807L;

    /* renamed from: n */
    public final C6423xb f33476n = new C6423xb();

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f33475m = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013f  */
    @Override // p168r4.m54
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4424b(p168r4.C6423xb r30) {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.x54.mo4424b(r4.xb):void");
    }

    /* renamed from: e */
    public final void m5495e(byte[] bArr, int i, int i2) {
        this.f33466d.m5834c(bArr, i, i2);
        if (!this.f33467e) {
            this.f33469g.m12863d(bArr, i, i2);
            this.f33470h.m12863d(bArr, i, i2);
            this.f33471i.m12863d(bArr, i, i2);
        }
        this.f33472j.m12863d(bArr, i, i2);
        this.f33473k.m12863d(bArr, i, i2);
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f33474l = 0L;
        this.f33475m = -9223372036854775807L;
        C6053nb.m9130e(this.f33468f);
        this.f33469g.m12866a();
        this.f33470h.m12866a();
        this.f33471i.m12866a();
        this.f33472j.m12866a();
        this.f33473k.m12866a();
        w54 w54Var = this.f33466d;
        if (w54Var != null) {
            w54Var.m5836a();
        }
    }

    public x54(o64 o64Var) {
        this.f33463a = o64Var;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f33464b = z64Var.m4414c();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 2);
        this.f33465c = mo10795r;
        this.f33466d = new w54(mo10795r);
        this.f33463a.m8874a(d04Var, z64Var);
    }
}
