package p168r4;

import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.jz3 */
/* loaded from: classes2.dex */
public final class jz3 {

    /* renamed from: a */
    public static final int[] f26197a = {2002, 2000, 1920, 1601, 1600, 1001, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 960, 800, 800, 480, HttpStatus.SC_BAD_REQUEST, HttpStatus.SC_BAD_REQUEST, 2048};

    /* renamed from: b */
    public static void m10127b(int i, C6423xb c6423xb) {
        c6423xb.m5410i(7);
        byte[] m5402q = c6423xb.m5402q();
        m5402q[0] = -84;
        m5402q[1] = 64;
        m5402q[2] = -1;
        m5402q[3] = -1;
        m5402q[4] = (byte) ((i >> 16) & 255);
        m5402q[5] = (byte) ((i >> 8) & 255);
        m5402q[6] = (byte) (i & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0093, code lost:
        if (r11 != 11) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
        if (r11 != 11) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
        if (r11 != 8) goto L44;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.iz3 m10128a(p168r4.C6386wb r11) {
        /*
            r0 = 16
            int r1 = r11.m5785h(r0)
            int r0 = r11.m5785h(r0)
            r2 = 4
            r3 = 65535(0xffff, float:9.1834E-41)
            if (r0 != r3) goto L18
            r0 = 24
            int r0 = r11.m5785h(r0)
            r3 = 7
            goto L19
        L18:
            r3 = 4
        L19:
            int r0 = r0 + r3
            r3 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r3) goto L21
            int r0 = r0 + 2
        L21:
            r7 = r0
            r0 = 2
            int r1 = r11.m5785h(r0)
            r3 = 0
            r4 = 3
            if (r1 != r4) goto L3d
            r1 = 0
        L2c:
            int r5 = r11.m5785h(r0)
            int r1 = r1 + r5
            boolean r5 = r11.m5786g()
            if (r5 != 0) goto L39
            int r1 = r1 + r4
            goto L3d
        L39:
            int r1 = r1 + 1
            int r1 = r1 << r0
            goto L2c
        L3d:
            r5 = 10
            int r5 = r11.m5785h(r5)
            boolean r6 = r11.m5786g()
            if (r6 == 0) goto L52
            int r6 = r11.m5785h(r4)
            if (r6 <= 0) goto L52
            r11.m5787f(r0)
        L52:
            boolean r6 = r11.m5786g()
            r8 = 44100(0xac44, float:6.1797E-41)
            r9 = 48000(0xbb80, float:6.7262E-41)
            r10 = 1
            if (r10 == r6) goto L63
            r6 = 44100(0xac44, float:6.1797E-41)
            goto L66
        L63:
            r6 = 48000(0xbb80, float:6.7262E-41)
        L66:
            int r11 = r11.m5785h(r2)
            if (r6 != r8) goto L76
            r8 = 13
            if (r11 != r8) goto L76
            int[] r11 = p168r4.jz3.f26197a
            r11 = r11[r8]
            r8 = r11
            goto La6
        L76:
            if (r6 != r9) goto La5
            r8 = 14
            if (r11 >= r8) goto La5
            int[] r3 = p168r4.jz3.f26197a
            r3 = r3[r11]
            int r5 = r5 % 5
            r8 = 8
            if (r5 == r10) goto L9b
            r9 = 11
            if (r5 == r0) goto L96
            if (r5 == r4) goto L9b
            if (r5 == r2) goto L8f
            goto La0
        L8f:
            if (r11 == r4) goto La2
            if (r11 == r8) goto La2
            if (r11 != r9) goto La0
            goto La2
        L96:
            if (r11 == r8) goto La2
            if (r11 != r9) goto La0
            goto La2
        L9b:
            if (r11 == r4) goto La2
            if (r11 != r8) goto La0
            goto La2
        La0:
            r8 = r3
            goto La6
        La2:
            int r3 = r3 + 1
            goto La0
        La5:
            r8 = 0
        La6:
            r4.iz3 r11 = new r4.iz3
            r5 = 2
            r9 = 0
            r3 = r11
            r4 = r1
            r3.<init>(r4, r5, r6, r7, r8, r9)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.jz3.m10128a(r4.wb):r4.iz3");
    }
}
