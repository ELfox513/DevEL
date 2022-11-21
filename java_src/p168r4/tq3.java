package p168r4;
/* renamed from: r4.tq3 */
/* loaded from: classes2.dex */
public final class tq3 implements xt3 {

    /* renamed from: a */
    public final g04 f31963a;

    /* renamed from: b */
    public a04 f31964b;

    /* renamed from: c */
    public b04 f31965c;

    public tq3(g04 g04Var) {
        this.f31963a = g04Var;
    }

    @Override // p168r4.xt3
    /* renamed from: a */
    public final void mo4983a() {
        if (this.f31964b != null) {
            this.f31964b = null;
        }
        this.f31965c = null;
    }

    @Override // p168r4.xt3
    /* renamed from: e */
    public final long mo4979e() {
        b04 b04Var = this.f31965c;
        if (b04Var != null) {
            return b04Var.mo5954p();
        }
        return -1L;
    }

    @Override // p168r4.xt3
    /* renamed from: b */
    public final void mo4982b() {
        a04 a04Var = this.f31964b;
        if (a04Var instanceof y24) {
            ((y24) a04Var).m4929a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        if (r6.mo5954p() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
        if (r6.mo5954p() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
        r1 = false;
     */
    @Override // p168r4.xt3
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4981c(p168r4.InterfaceC5936k6 r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, p168r4.d04 r15) {
        /*
            r7 = this;
            r4.vz3 r6 = new r4.vz3
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f31965c = r6
            r4.a04 r8 = r7.f31964b
            if (r8 == 0) goto L10
            return
        L10:
            r4.g04 r8 = r7.f31963a
            r4.a04[] r8 = r8.mo4451a(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f31964b = r8
            goto L74
        L20:
            r0 = 0
        L21:
            if (r0 >= r10) goto L70
            r1 = r8[r0]
            boolean r2 = r1.mo4475e(r6)     // Catch: java.lang.Throwable -> L41 java.io.EOFException -> L56
            if (r2 == 0) goto L34
            r7.f31964b = r1     // Catch: java.lang.Throwable -> L41 java.io.EOFException -> L56
            p168r4.C5903ja.m10371d(r14)
            r6.mo5959k()
            goto L70
        L34:
            r4.a04 r1 = r7.f31964b
            if (r1 != 0) goto L66
            long r1 = r6.mo5954p()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L64
            goto L66
        L41:
            r8 = move-exception
            r4.a04 r9 = r7.f31964b
            if (r9 != 0) goto L4e
            long r9 = r6.mo5954p()
            int r15 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r15 != 0) goto L4f
        L4e:
            r13 = 1
        L4f:
            p168r4.C5903ja.m10371d(r13)
            r6.mo5959k()
            throw r8
        L56:
            r4.a04 r1 = r7.f31964b
            if (r1 != 0) goto L66
            long r1 = r6.mo5954p()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L64
            goto L66
        L64:
            r1 = 0
            goto L67
        L66:
            r1 = 1
        L67:
            p168r4.C5903ja.m10371d(r1)
            r6.mo5959k()
            int r0 = r0 + 1
            goto L21
        L70:
            r4.a04 r10 = r7.f31964b
            if (r10 == 0) goto L7a
        L74:
            r4.a04 r8 = r7.f31964b
            r8.mo4473h(r15)
            return
        L7a:
            r4.cv3 r10 = new r4.cv3
            java.lang.String r8 = p168r4.C5979lc.m9693m(r8)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            int r12 = r8.length()
            int r12 = r12 + 58
            r11.<init>(r12)
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            r10.<init>(r8, r9)
            goto La1
        La0:
            throw r10
        La1:
            goto La0
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.tq3.mo4981c(r4.k6, android.net.Uri, java.util.Map, long, long, r4.d04):void");
    }

    @Override // p168r4.xt3
    /* renamed from: d */
    public final int mo4980d(w04 w04Var) {
        a04 a04Var = this.f31964b;
        a04Var.getClass();
        b04 b04Var = this.f31965c;
        b04Var.getClass();
        return a04Var.mo4474f(b04Var, w04Var);
    }

    @Override // p168r4.xt3
    /* renamed from: l */
    public final void mo4978l(long j, long j2) {
        a04 a04Var = this.f31964b;
        a04Var.getClass();
        a04Var.mo4472i(j, j2);
    }
}
