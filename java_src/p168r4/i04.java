package p168r4;
/* renamed from: r4.i04 */
/* loaded from: classes2.dex */
public final class i04 {
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007f, code lost:
        if (r7 != r18.f28065f) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
        if ((r17.m5397v() * com.prineside.tdi2.tiles.CoreTile.FIXED_LEVEL_XP_REQUIREMENT) == r3) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009b, code lost:
        if (r4 == r3) goto L39;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m10750a(p168r4.C6423xb r17, p168r4.n04 r18, int r19, p168r4.h04 r20) {
        /*
            r0 = r17
            r1 = r18
            int r2 = r17.m5404o()
            long r3 = r17.m5425B()
            r5 = 16
            long r5 = r3 >>> r5
            r7 = r19
            long r7 = (long) r7
            r9 = 0
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 == 0) goto L19
            return r9
        L19:
            r7 = 1
            long r5 = r5 & r7
            r10 = 1
            int r11 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r11 != 0) goto L23
            r5 = 1
            goto L24
        L23:
            r5 = 0
        L24:
            r6 = 12
            long r11 = r3 >> r6
            r13 = 15
            long r11 = r11 & r13
            int r12 = (int) r11
            r11 = 8
            long r15 = r3 >> r11
            long r6 = r15 & r13
            int r7 = (int) r6
            r6 = 4
            long r15 = r3 >> r6
            long r13 = r13 & r15
            int r6 = (int) r13
            long r13 = r3 >> r10
            r15 = 7
            long r13 = r13 & r15
            int r8 = (int) r13
            r13 = 1
            long r3 = r3 & r13
            r11 = 7
            r13 = -1
            if (r6 > r11) goto L4b
            int r11 = r1.f28066g
            int r11 = r11 + r13
            if (r6 != r11) goto Lb1
            goto L54
        L4b:
            r11 = 10
            if (r6 > r11) goto Lb1
            int r6 = r1.f28066g
            r11 = 2
            if (r6 != r11) goto Lb1
        L54:
            if (r8 != 0) goto L59
        L56:
            r14 = 1
            goto L5e
        L59:
            int r6 = r1.f28068i
            if (r8 != r6) goto Lb1
            goto L56
        L5e:
            int r6 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r6 == 0) goto Lb1
            r3 = r20
            boolean r3 = m10747d(r0, r1, r5, r3)
            if (r3 == 0) goto Lb1
            int r3 = m10748c(r0, r12)
            if (r3 == r13) goto Lb1
            int r4 = r1.f28061b
            if (r3 > r4) goto Lb1
            int r3 = r1.f28064e
            if (r7 != 0) goto L79
            goto L9d
        L79:
            r4 = 11
            if (r7 > r4) goto L82
            int r1 = r1.f28065f
            if (r7 == r1) goto L9d
            goto Lb1
        L82:
            r1 = 12
            if (r7 != r1) goto L8f
            int r1 = r17.m5397v()
            int r1 = r1 * 1000
            if (r1 != r3) goto Lb1
            goto L9d
        L8f:
            r1 = 14
            if (r7 > r1) goto Lb1
            int r4 = r17.m5396w()
            if (r7 != r1) goto L9b
            int r4 = r4 * 10
        L9b:
            if (r4 != r3) goto Lb1
        L9d:
            int r1 = r17.m5397v()
            int r3 = r17.m5404o()
            byte[] r0 = r17.m5402q()
            int r3 = r3 + r13
            int r0 = p168r4.C5979lc.m9683w(r0, r2, r3, r9)
            if (r1 != r0) goto Lb1
            return r10
        Lb1:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.i04.m10750a(r4.xb, r4.n04, int, r4.h04):boolean");
    }

    /* renamed from: b */
    public static long m10749b(b04 b04Var, n04 n04Var) {
        int i;
        b04Var.mo5959k();
        vz3 vz3Var = (vz3) b04Var;
        boolean z = true;
        vz3Var.m5955o(1, false);
        byte[] bArr = new byte[1];
        vz3Var.mo5960i(bArr, 0, 1, false);
        int i2 = bArr[0] & 1;
        vz3Var.m5955o(2, false);
        if (1 != i2) {
            i = 6;
        } else {
            i = 7;
        }
        C6423xb c6423xb = new C6423xb(i);
        c6423xb.m5405n(e04.m11888b(b04Var, c6423xb.m5402q(), 0, i));
        b04Var.mo5959k();
        h04 h04Var = new h04();
        if (1 != i2) {
            z = false;
        }
        if (m10747d(c6423xb, n04Var, z, h04Var)) {
            return h04Var.f24391a;
        }
        throw C5973l6.m9787b(null, null);
    }

    /* renamed from: c */
    public static int m10748c(C6423xb c6423xb, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c6423xb.m5397v() + 1;
            case 7:
                return c6423xb.m5396w() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    /* renamed from: d */
    public static boolean m10747d(C6423xb c6423xb, n04 n04Var, boolean z, h04 h04Var) {
        try {
            long m5411h = c6423xb.m5411h();
            if (!z) {
                m5411h *= n04Var.f28061b;
            }
            h04Var.f24391a = m5411h;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
