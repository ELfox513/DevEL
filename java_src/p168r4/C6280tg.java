package p168r4;

import android.util.Pair;
import java.util.ArrayList;
/* renamed from: r4.tg */
/* loaded from: classes2.dex */
public final class C6280tg {

    /* renamed from: a */
    public static final int f31832a = C5988ll.m9642l("vide");

    /* renamed from: b */
    public static final int f31833b = C5988ll.m9642l("soun");

    /* renamed from: c */
    public static final int f31834c = C5988ll.m9642l("text");

    /* renamed from: d */
    public static final int f31835d = C5988ll.m9642l("sbtl");

    /* renamed from: e */
    public static final int f31836e = C5988ll.m9642l("subt");

    /* renamed from: f */
    public static final int f31837f = C5988ll.m9642l("clcp");

    /* renamed from: g */
    public static final int f31838g = C5988ll.m9642l("cenc");

    /* renamed from: h */
    public static final int f31839h = C5988ll.m9642l("meta");

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
        if (r8 == 0) goto L416;
     */
    /* JADX WARN: Removed duplicated region for block: B:398:0x07dd  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0841 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01c3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.C5726eh m6825a(p168r4.C5946kg r51, p168r4.C5983lg r52, long r53, p168r4.C5982lf r55, boolean r56) {
        /*
            Method dump skipped, instructions count: 2171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6280tg.m6825a(r4.kg, r4.lg, long, r4.lf, boolean):r4.eh");
    }

    /* renamed from: c */
    public static C6466yh m6823c(C5983lg c5983lg, boolean z) {
        if (z) {
            return null;
        }
        C5692dl c5692dl = c5983lg.f27207P0;
        c5692dl.m12114i(8);
        while (c5692dl.m12119d() >= 8) {
            int m12116g = c5692dl.m12116g();
            int m12105r = c5692dl.m12105r();
            if (c5692dl.m12105r() == C6020mg.f27594B0) {
                c5692dl.m12114i(m12116g);
                int i = m12116g + m12105r;
                c5692dl.m12113j(12);
                while (c5692dl.m12116g() < i) {
                    int m12116g2 = c5692dl.m12116g();
                    int m12105r2 = c5692dl.m12105r();
                    if (c5692dl.m12105r() == C6020mg.f27596C0) {
                        c5692dl.m12114i(m12116g2);
                        int i2 = m12116g2 + m12105r2;
                        c5692dl.m12113j(8);
                        ArrayList arrayList = new ArrayList();
                        while (c5692dl.m12116g() < i2) {
                            InterfaceC6429xh m4263a = C6502zg.m4263a(c5692dl);
                            if (m4263a != null) {
                                arrayList.add(m4263a);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return new C6466yh(arrayList);
                    }
                    c5692dl.m12113j(m12105r2 - 8);
                }
                return null;
            }
            c5692dl.m12113j(m12105r - 8);
        }
        return null;
    }

    /* renamed from: e */
    public static int m6821e(C5692dl c5692dl, int i, int i2, C6132pg c6132pg, int i3) {
        boolean z;
        boolean z2;
        boolean z3;
        int m12116g = c5692dl.m12116g();
        while (true) {
            boolean z4 = false;
            if (m12116g - i >= i2) {
                return 0;
            }
            c5692dl.m12114i(m12116g);
            int m12105r = c5692dl.m12105r();
            if (m12105r > 0) {
                z = true;
            } else {
                z = false;
            }
            C6358vk.m6139b(z, "childAtomSize should be positive");
            if (c5692dl.m12105r() == C6020mg.f27628W) {
                int i4 = m12116g + 8;
                Pair pair = null;
                Integer num = null;
                C5763fh c5763fh = null;
                boolean z5 = false;
                while (i4 - m12116g < m12105r) {
                    c5692dl.m12114i(i4);
                    int m12105r2 = c5692dl.m12105r();
                    int m12105r3 = c5692dl.m12105r();
                    if (m12105r3 == C6020mg.f27636c0) {
                        num = Integer.valueOf(c5692dl.m12105r());
                    } else if (m12105r3 == C6020mg.f27629X) {
                        c5692dl.m12113j(4);
                        if (c5692dl.m12105r() == f31838g) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    } else if (m12105r3 == C6020mg.f27630Y) {
                        int i5 = i4 + 8;
                        while (true) {
                            if (i5 - i4 < m12105r2) {
                                c5692dl.m12114i(i5);
                                int m12105r4 = c5692dl.m12105r();
                                if (c5692dl.m12105r() == C6020mg.f27631Z) {
                                    c5692dl.m12113j(6);
                                    if (c5692dl.m12111l() == 1) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    int m12111l = c5692dl.m12111l();
                                    byte[] bArr = new byte[16];
                                    c5692dl.m12112k(bArr, 0, 16);
                                    c5763fh = new C5763fh(z3, m12111l, bArr);
                                } else {
                                    i5 += m12105r4;
                                }
                            } else {
                                c5763fh = null;
                                break;
                            }
                        }
                    }
                    i4 += m12105r2;
                }
                if (z5) {
                    if (num != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    C6358vk.m6139b(z2, "frma atom is mandatory");
                    if (c5763fh != null) {
                        z4 = true;
                    }
                    C6358vk.m6139b(z4, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, c5763fh);
                }
                if (pair != null) {
                    c6132pg.f29455a[i3] = (C5763fh) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            m12116g += m12105r;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0174 A[LOOP:10: B:59:0x0174->B:60:0x0176, LOOP_START, PHI: r14 r15 r22 r25 
      PHI: (r14v3 int) = (r14v1 int), (r14v10 int) binds: [B:58:0x0172, B:60:0x0176] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r15v3 int) = (r15v1 int), (r15v9 int) binds: [B:58:0x0172, B:60:0x0176] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r22v2 int) = (r22v1 int), (r22v5 int) binds: [B:58:0x0172, B:60:0x0176] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r25v2 long) = (r25v1 long), (r25v4 long) binds: [B:58:0x0172, B:60:0x0176] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0224  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.C5837hh m6824b(p168r4.C5726eh r42, p168r4.C5946kg r43, p168r4.C6279tf r44) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6280tg.m6824b(r4.eh, r4.kg, r4.tf):r4.hh");
    }

    /* renamed from: d */
    public static Pair<String, byte[]> m6822d(C5692dl c5692dl, int i) {
        c5692dl.m12114i(i + 12);
        c5692dl.m12113j(1);
        m6820f(c5692dl);
        c5692dl.m12113j(2);
        int m12111l = c5692dl.m12111l();
        if ((m12111l & 128) != 0) {
            c5692dl.m12113j(2);
        }
        if ((m12111l & 64) != 0) {
            c5692dl.m12113j(c5692dl.m12110m());
        }
        if ((m12111l & 32) != 0) {
            c5692dl.m12113j(2);
        }
        c5692dl.m12113j(1);
        m6820f(c5692dl);
        int m12111l2 = c5692dl.m12111l();
        String str = null;
        if (m12111l2 != 32) {
            if (m12111l2 != 33) {
                if (m12111l2 != 35) {
                    if (m12111l2 != 64) {
                        if (m12111l2 != 107) {
                            if (m12111l2 != 165) {
                                if (m12111l2 != 166) {
                                    switch (m12111l2) {
                                        case 102:
                                        case 103:
                                        case 104:
                                            break;
                                        default:
                                            switch (m12111l2) {
                                                case 169:
                                                case 172:
                                                    return Pair.create("audio/vnd.dts", null);
                                                case 170:
                                                case 171:
                                                    return Pair.create("audio/vnd.dts.hd", null);
                                            }
                                    }
                                } else {
                                    str = "audio/eac3";
                                }
                            } else {
                                str = "audio/ac3";
                            }
                        } else {
                            return Pair.create("audio/mpeg", null);
                        }
                    }
                    str = "audio/mp4a-latm";
                } else {
                    str = "video/hevc";
                }
            } else {
                str = "video/avc";
            }
        } else {
            str = "video/mp4v-es";
        }
        c5692dl.m12113j(12);
        c5692dl.m12113j(1);
        int m6820f = m6820f(c5692dl);
        byte[] bArr = new byte[m6820f];
        c5692dl.m12112k(bArr, 0, m6820f);
        return Pair.create(str, bArr);
    }

    /* renamed from: f */
    public static int m6820f(C5692dl c5692dl) {
        int m12111l = c5692dl.m12111l();
        int i = m12111l & 127;
        while ((m12111l & 128) == 128) {
            m12111l = c5692dl.m12111l();
            i = (i << 7) | (m12111l & 127);
        }
        return i;
    }
}
