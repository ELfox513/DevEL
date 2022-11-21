package p168r4;

import java.util.Arrays;
/* renamed from: r4.l14 */
/* loaded from: classes2.dex */
public final class l14 implements a04 {

    /* renamed from: p */
    public static final int[] f27034p;

    /* renamed from: s */
    public static final int f27037s;

    /* renamed from: b */
    public boolean f27039b;

    /* renamed from: c */
    public long f27040c;

    /* renamed from: d */
    public int f27041d;

    /* renamed from: e */
    public int f27042e;

    /* renamed from: f */
    public boolean f27043f;

    /* renamed from: h */
    public int f27045h;

    /* renamed from: i */
    public long f27046i;

    /* renamed from: j */
    public d04 f27047j;

    /* renamed from: k */
    public d14 f27048k;

    /* renamed from: l */
    public z04 f27049l;

    /* renamed from: m */
    public boolean f27050m;

    /* renamed from: n */
    public static final g04 f27032n = k14.f26257a;

    /* renamed from: o */
    public static final int[] f27033o = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: q */
    public static final byte[] f27035q = C5979lc.m9713X("#!AMR\n");

    /* renamed from: r */
    public static final byte[] f27036r = C5979lc.m9713X("#!AMR-WB\n");

    /* renamed from: a */
    public final byte[] f27038a = new byte[1];

    /* renamed from: g */
    public int f27044g = -1;

    public l14(int i) {
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        return m9807a(b04Var);
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f27040c = 0L;
        this.f27041d = 0;
        this.f27042e = 0;
        this.f27046i = 0L;
    }

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f27034p = iArr;
        f27037s = iArr[8];
    }

    /* renamed from: a */
    public final boolean m9807a(b04 b04Var) {
        byte[] bArr = f27035q;
        if (m9806b(b04Var, bArr)) {
            this.f27039b = false;
            ((vz3) b04Var).m5956n(bArr.length, false);
            return true;
        }
        byte[] bArr2 = f27036r;
        if (!m9806b(b04Var, bArr2)) {
            return false;
        }
        this.f27039b = true;
        ((vz3) b04Var).m5956n(bArr2.length, false);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[Catch: EOFException -> 0x0098, TryCatch #0 {EOFException -> 0x0098, blocks: (B:4:0x0007, B:6:0x001b, B:20:0x0039, B:22:0x0042, B:21:0x003e, B:31:0x005c, B:32:0x007f, B:33:0x0080, B:34:0x0097), top: B:44:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e A[Catch: EOFException -> 0x0098, TryCatch #0 {EOFException -> 0x0098, blocks: (B:4:0x0007, B:6:0x001b, B:20:0x0039, B:22:0x0042, B:21:0x003e, B:31:0x005c, B:32:0x007f, B:33:0x0080, B:34:0x0097), top: B:44:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9805c(p168r4.b04 r12) {
        /*
            r11 = this;
            int r0 = r11.f27042e
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != 0) goto L99
            r12.mo5959k()     // Catch: java.io.EOFException -> L98
            byte[] r0 = r11.f27038a     // Catch: java.io.EOFException -> L98
            r4 = r12
            r4.vz3 r4 = (p168r4.vz3) r4     // Catch: java.io.EOFException -> L98
            r4.mo5960i(r0, r3, r2, r3)     // Catch: java.io.EOFException -> L98
            byte[] r0 = r11.f27038a     // Catch: java.io.EOFException -> L98
            r0 = r0[r3]     // Catch: java.io.EOFException -> L98
            r4 = r0 & 131(0x83, float:1.84E-43)
            r5 = 0
            if (r4 > 0) goto L80
            int r0 = r0 >> 3
            r0 = r0 & 15
            boolean r4 = r11.f27039b     // Catch: java.io.EOFException -> L98
            if (r4 == 0) goto L2c
            r6 = 10
            if (r0 < r6) goto L37
            r6 = 13
            if (r0 <= r6) goto L2c
            goto L37
        L2c:
            if (r4 != 0) goto L55
            r6 = 12
            if (r0 < r6) goto L37
            r6 = 14
            if (r0 > r6) goto L37
            goto L55
        L37:
            if (r4 == 0) goto L3e
            int[] r4 = p168r4.l14.f27034p     // Catch: java.io.EOFException -> L98
            r0 = r4[r0]     // Catch: java.io.EOFException -> L98
            goto L42
        L3e:
            int[] r4 = p168r4.l14.f27033o     // Catch: java.io.EOFException -> L98
            r0 = r4[r0]     // Catch: java.io.EOFException -> L98
        L42:
            r11.f27041d = r0     // Catch: java.io.EOFException -> L98
            r11.f27042e = r0
            int r4 = r11.f27044g
            if (r4 != r1) goto L4d
            r11.f27044g = r0
            r4 = r0
        L4d:
            if (r4 != r0) goto L99
            int r4 = r11.f27045h
            int r4 = r4 + r2
            r11.f27045h = r4
            goto L99
        L55:
            java.lang.String r12 = "WB"
            java.lang.String r3 = "NB"
            if (r2 == r4) goto L5c
            r12 = r3
        L5c:
            int r2 = r12.length()     // Catch: java.io.EOFException -> L98
            int r2 = r2 + 35
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L98
            r3.<init>(r2)     // Catch: java.io.EOFException -> L98
            java.lang.String r2 = "Illegal AMR "
            r3.append(r2)     // Catch: java.io.EOFException -> L98
            r3.append(r12)     // Catch: java.io.EOFException -> L98
            java.lang.String r12 = " frame type "
            r3.append(r12)     // Catch: java.io.EOFException -> L98
            r3.append(r0)     // Catch: java.io.EOFException -> L98
            java.lang.String r12 = r3.toString()     // Catch: java.io.EOFException -> L98
            r4.l6 r12 = p168r4.C5973l6.m9787b(r12, r5)     // Catch: java.io.EOFException -> L98
            throw r12     // Catch: java.io.EOFException -> L98
        L80:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L98
            r2 = 42
            r12.<init>(r2)     // Catch: java.io.EOFException -> L98
            java.lang.String r2 = "Invalid padding bits for frame header "
            r12.append(r2)     // Catch: java.io.EOFException -> L98
            r12.append(r0)     // Catch: java.io.EOFException -> L98
            java.lang.String r12 = r12.toString()     // Catch: java.io.EOFException -> L98
            r4.l6 r12 = p168r4.C5973l6.m9787b(r12, r5)     // Catch: java.io.EOFException -> L98
            throw r12     // Catch: java.io.EOFException -> L98
        L98:
            return r1
        L99:
            r4.d14 r4 = r11.f27048k
            int r12 = p168r4.b14.m12889a(r4, r12, r0, r2)
            if (r12 != r1) goto La2
            return r1
        La2:
            int r0 = r11.f27042e
            int r0 = r0 - r12
            r11.f27042e = r0
            if (r0 <= 0) goto Laa
            return r3
        Laa:
            r4.d14 r4 = r11.f27048k
            long r5 = r11.f27040c
            r7 = 1
            int r8 = r11.f27041d
            r9 = 0
            r10 = 0
            r4.mo4005e(r5, r7, r8, r9, r10)
            long r0 = r11.f27040c
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r4
            r11.f27040c = r0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.l14.m9805c(r4.b04):int");
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        String str;
        int i;
        C5903ja.m10370e(this.f27048k);
        int i2 = C5979lc.f27164a;
        if (b04Var.mo5954p() == 0 && !m9807a(b04Var)) {
            throw C5973l6.m9787b("Could not find AMR header.", null);
        }
        if (!this.f27050m) {
            this.f27050m = true;
            boolean z = this.f27039b;
            if (true != z) {
                str = "audio/3gpp";
            } else {
                str = "audio/amr-wb";
            }
            if (true != z) {
                i = 8000;
            } else {
                i = 16000;
            }
            d14 d14Var = this.f27048k;
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n(str);
            c5639c5.m12563o(f27037s);
            c5639c5.m12610B(1);
            c5639c5.m12609C(i);
            d14Var.mo4004f(c5639c5.m12603I());
        }
        int m9805c = m9805c(b04Var);
        if (this.f27043f) {
            return m9805c;
        }
        y04 y04Var = new y04(-9223372036854775807L, 0L);
        this.f27049l = y04Var;
        this.f27047j.mo10798j(y04Var);
        this.f27043f = true;
        return m9805c;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f27047j = d04Var;
        this.f27048k = d04Var.mo10795r(0, 1);
        d04Var.mo10788y();
    }

    /* renamed from: b */
    public static boolean m9806b(b04 b04Var, byte[] bArr) {
        b04Var.mo5959k();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((vz3) b04Var).mo5960i(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }
}
