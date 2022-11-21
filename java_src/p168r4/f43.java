package p168r4;
/* renamed from: r4.f43 */
/* loaded from: classes2.dex */
public final class f43 extends Exception {

    /* renamed from: a */
    public final String f23276a;

    /* renamed from: b */
    public final boolean f23277b;

    /* renamed from: d */
    public final e33 f23278d;

    /* renamed from: k */
    public final String f23279k;

    /* renamed from: p */
    public final f43 f23280p;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f43(p168r4.C5713e5 r11, java.lang.Throwable r12, boolean r13, int r14) {
        /*
            r10 = this;
            java.lang.String r13 = java.lang.String.valueOf(r11)
            int r0 = r13.length()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r0 = r0 + 36
            r1.<init>(r0)
            java.lang.String r0 = "Decoder init failed: ["
            r1.append(r0)
            r1.append(r14)
            java.lang.String r0 = "], "
            r1.append(r0)
            r1.append(r13)
            java.lang.String r5 = r11.f22814l
            int r11 = java.lang.Math.abs(r14)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r14 = 75
            r13.<init>(r14)
            java.lang.String r14 = "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_neg_"
            r13.append(r14)
            r13.append(r11)
            java.lang.String r3 = r1.toString()
            java.lang.String r8 = r13.toString()
            r6 = 0
            r7 = 0
            r9 = 0
            r2 = r10
            r4 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.f43.<init>(r4.e5, java.lang.Throwable, boolean, int):void");
    }

    /* renamed from: a */
    public static /* synthetic */ f43 m11640a(f43 f43Var, f43 f43Var2) {
        return new f43(f43Var.getMessage(), f43Var.getCause(), f43Var.f23276a, false, f43Var.f23278d, f43Var.f23279k, f43Var2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f43(p168r4.C5713e5 r9, java.lang.Throwable r10, boolean r11, p168r4.e33 r12) {
        /*
            r8 = this;
            java.lang.String r0 = r12.f22777a
            java.lang.String r1 = java.lang.String.valueOf(r9)
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r3 = r3.length()
            int r4 = r1.length()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r3 = r3 + 23
            int r3 = r3 + r4
            r6.<init>(r3)
            java.lang.String r3 = "Decoder init failed: "
            r6.append(r3)
            r6.append(r0)
            java.lang.String r0 = ", "
            r6.append(r0)
            r6.append(r1)
            java.lang.String r1 = r6.toString()
            java.lang.String r3 = r9.f22814l
            int r0 = p168r4.C5979lc.f27164a
            r4 = 0
            r6 = 21
            if (r0 < r6) goto L44
            boolean r0 = r10 instanceof android.media.MediaCodec$CodecException
            if (r0 == 0) goto L44
            r0 = r10
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec$CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r6 = r0
            goto L45
        L44:
            r6 = r4
        L45:
            r4 = 0
            r7 = 0
            r0 = r8
            r2 = r10
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.f43.<init>(r4.e5, java.lang.Throwable, boolean, r4.e33):void");
    }

    public f43(String str, Throwable th, String str2, boolean z, e33 e33Var, String str3, f43 f43Var) {
        super(str, th);
        this.f23276a = str2;
        this.f23277b = false;
        this.f23278d = e33Var;
        this.f23279k = str3;
        this.f23280p = f43Var;
    }
}
