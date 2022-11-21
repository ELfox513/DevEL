package p168r4;
/* renamed from: r4.d54 */
/* loaded from: classes2.dex */
public final class d54 implements a04 {

    /* renamed from: d */
    public static final g04 f22102d = c54.f21399a;

    /* renamed from: a */
    public final e54 f22103a = new e54(null);

    /* renamed from: b */
    public final C6423xb f22104b = new C6423xb(16384);

    /* renamed from: c */
    public boolean f22105c;

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f22105c = false;
        this.f22103a.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        r16.mo5959k();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004f, code lost:
        if ((r5 - r3) >= 8192) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0055, code lost:
        return false;
     */
    @Override // p168r4.a04
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4475e(p168r4.b04 r16) {
        /*
            r15 = this;
            r4.xb r0 = new r4.xb
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.m5402q()
            r5 = r16
            r4.vz3 r5 = (p168r4.vz3) r5
            r5.mo5960i(r4, r2, r1, r2)
            r0.m5403p(r2)
            int r4 = r0.m5393z()
            r6 = 4801587(0x494433, float:6.728456E-39)
            r7 = 3
            if (r4 == r6) goto L9e
            r16.mo5959k()
            r4 = r16
            r4.vz3 r4 = (p168r4.vz3) r4
            r4.m5955o(r3, r2)
            r5 = r3
        L2c:
            r1 = 0
        L2d:
            byte[] r6 = r0.m5402q()
            r8 = 7
            r4.mo5960i(r6, r2, r8, r2)
            r0.m5403p(r2)
            int r6 = r0.m5396w()
            r9 = 44096(0xac40, float:6.1792E-41)
            r10 = 44097(0xac41, float:6.1793E-41)
            if (r6 == r9) goto L56
            if (r6 == r10) goto L56
            r16.mo5959k()
            int r5 = r5 + 1
            int r1 = r5 - r3
            r6 = 8192(0x2000, float:1.14794E-41)
            if (r1 >= r6) goto L55
            r4.m5955o(r5, r2)
            goto L2c
        L55:
            return r2
        L56:
            r9 = 1
            int r1 = r1 + r9
            r11 = 4
            if (r1 < r11) goto L5c
            return r9
        L5c:
            byte[] r9 = r0.m5402q()
            int[] r12 = p168r4.jz3.f26197a
            int r12 = r9.length
            r13 = -1
            if (r12 >= r8) goto L68
            r12 = -1
            goto L95
        L68:
            r12 = 2
            r12 = r9[r12]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r12 = r12 << 8
            r14 = r9[r7]
            r14 = r14 & 255(0xff, float:3.57E-43)
            r12 = r12 | r14
            r14 = 65535(0xffff, float:9.1834E-41)
            if (r12 != r14) goto L8f
            r11 = r9[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 16
            r12 = 5
            r12 = r9[r12]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r12 = r12 << 8
            r11 = r11 | r12
            r12 = 6
            r9 = r9[r12]
            r9 = r9 & 255(0xff, float:3.57E-43)
            r12 = r11 | r9
            goto L90
        L8f:
            r8 = 4
        L90:
            if (r6 != r10) goto L94
            int r8 = r8 + 2
        L94:
            int r12 = r12 + r8
        L95:
            if (r12 != r13) goto L98
            return r2
        L98:
            int r12 = r12 + (-7)
            r4.m5955o(r12, r2)
            goto L2d
        L9e:
            r0.m5400s(r7)
            int r4 = r0.m5418a()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.m5955o(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.d54.mo4475e(r4.b04):boolean");
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        int mo4060b = b04Var.mo4060b(this.f22104b.m5402q(), 0, 16384);
        if (mo4060b == -1) {
            return -1;
        }
        this.f22104b.m5403p(0);
        this.f22104b.m5405n(mo4060b);
        if (!this.f22105c) {
            this.f22103a.mo4422d(0L, 4);
            this.f22105c = true;
        }
        this.f22103a.mo4424b(this.f22104b);
        return 0;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f22103a.mo4425a(d04Var, new z64(Integer.MIN_VALUE, 0, 1));
        d04Var.mo10788y();
        d04Var.mo10798j(new y04(-9223372036854775807L, 0L));
    }
}
