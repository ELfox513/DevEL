package p168r4;
/* renamed from: r4.cz3 */
/* loaded from: classes2.dex */
public final class cz3 {

    /* renamed from: a */
    public static final int[] f21998a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b */
    public static final int[] f21999b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: c */
    public static int m12251c(C6386wb c6386wb) {
        int m5785h = c6386wb.m5785h(5);
        if (m5785h == 31) {
            return c6386wb.m5785h(6) + 32;
        }
        return m5785h;
    }

    /* renamed from: d */
    public static int m12250d(C6386wb c6386wb) {
        int m5785h = c6386wb.m5785h(4);
        if (m5785h == 15) {
            return c6386wb.m5785h(24);
        }
        if (m5785h < 13) {
            return f21998a[m5785h];
        }
        throw C5973l6.m9787b(null, null);
    }

    /* renamed from: a */
    public static az3 m12253a(byte[] bArr) {
        return m12252b(new C6386wb(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bd, code lost:
        if (r12 != 3) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.az3 m12252b(p168r4.C6386wb r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.cz3.m12252b(r4.wb, boolean):r4.az3");
    }
}
