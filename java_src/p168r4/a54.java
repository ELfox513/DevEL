package p168r4;
/* renamed from: r4.a54 */
/* loaded from: classes2.dex */
public final class a54 implements a04 {

    /* renamed from: d */
    public static final g04 f20382d = z44.f34334a;

    /* renamed from: a */
    public final b54 f20383a = new b54(null);

    /* renamed from: b */
    public final C6423xb f20384b = new C6423xb(2786);

    /* renamed from: c */
    public boolean f20385c;

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f20385c = false;
        this.f20383a.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        if ((r5 - r3) >= 8192) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
        r9.mo5959k();
        r5 = r5 + 1;
     */
    @Override // p168r4.a04
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4475e(p168r4.b04 r9) {
        /*
            r8 = this;
            r4.xb r0 = new r4.xb
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.m5402q()
            r5 = r9
            r4.vz3 r5 = (p168r4.vz3) r5
            r5.mo5960i(r4, r2, r1, r2)
            r0.m5403p(r2)
            int r4 = r0.m5393z()
            r6 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r6) goto L65
            r9.mo5959k()
            r4 = r9
            r4.vz3 r4 = (p168r4.vz3) r4
            r4.m5955o(r3, r2)
            r5 = r3
        L29:
            r1 = 0
        L2a:
            byte[] r6 = r0.m5402q()
            r7 = 6
            r4.mo5960i(r6, r2, r7, r2)
            r0.m5403p(r2)
            int r6 = r0.m5396w()
            r7 = 2935(0xb77, float:4.113E-42)
            if (r6 == r7) goto L4d
            r9.mo5959k()
            int r5 = r5 + 1
            int r1 = r5 - r3
            r6 = 8192(0x2000, float:1.14794E-41)
            if (r1 >= r6) goto L4c
            r4.m5955o(r5, r2)
            goto L29
        L4c:
            return r2
        L4d:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L53
            return r6
        L53:
            byte[] r6 = r0.m5402q()
            int r6 = p168r4.gz3.m11029d(r6)
            r7 = -1
            if (r6 != r7) goto L5f
            return r2
        L5f:
            int r6 = r6 + (-6)
            r4.m5955o(r6, r2)
            goto L2a
        L65:
            r4 = 3
            r0.m5400s(r4)
            int r4 = r0.m5418a()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.m5955o(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.a54.mo4475e(r4.b04):boolean");
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        int mo4060b = b04Var.mo4060b(this.f20384b.m5402q(), 0, 2786);
        if (mo4060b == -1) {
            return -1;
        }
        this.f20384b.m5403p(0);
        this.f20384b.m5405n(mo4060b);
        if (!this.f20385c) {
            this.f20383a.mo4422d(0L, 4);
            this.f20385c = true;
        }
        this.f20383a.mo4424b(this.f20384b);
        return 0;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f20383a.mo4425a(d04Var, new z64(Integer.MIN_VALUE, 0, 1));
        d04Var.mo10788y();
        d04Var.mo10798j(new y04(-9223372036854775807L, 0L));
    }
}
