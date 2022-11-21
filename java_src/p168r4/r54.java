package p168r4;
/* renamed from: r4.r54 */
/* loaded from: classes2.dex */
public final class r54 implements m54 {

    /* renamed from: l */
    public static final float[] f30458l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: a */
    public final c74 f30459a;

    /* renamed from: f */
    public q54 f30464f;

    /* renamed from: g */
    public long f30465g;

    /* renamed from: h */
    public String f30466h;

    /* renamed from: i */
    public d14 f30467i;

    /* renamed from: j */
    public boolean f30468j;

    /* renamed from: c */
    public final boolean[] f30461c = new boolean[4];

    /* renamed from: d */
    public final p54 f30462d = new p54(128);

    /* renamed from: k */
    public long f30469k = -9223372036854775807L;

    /* renamed from: e */
    public final b64 f30463e = new b64(178, 128);

    /* renamed from: b */
    public final C6423xb f30460b = new C6423xb();

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f30469k = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ce A[SYNTHETIC] */
    @Override // p168r4.m54
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4424b(p168r4.C6423xb r19) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.r54.mo4424b(r4.xb):void");
    }

    @Override // p168r4.m54
    public final void zza() {
        C6053nb.m9130e(this.f30461c);
        this.f30462d.m8482a();
        q54 q54Var = this.f30464f;
        if (q54Var != null) {
            q54Var.m8023a();
        }
        this.f30463e.m12866a();
        this.f30465g = 0L;
        this.f30469k = -9223372036854775807L;
    }

    public r54(c74 c74Var) {
        this.f30459a = c74Var;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f30466h = z64Var.m4414c();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 2);
        this.f30467i = mo10795r;
        this.f30464f = new q54(mo10795r);
        this.f30459a.m12513a(d04Var, z64Var);
    }
}
