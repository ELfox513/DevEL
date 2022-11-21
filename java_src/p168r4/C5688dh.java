package p168r4;
/* renamed from: r4.dh */
/* loaded from: classes2.dex */
public final class C5688dh {

    /* renamed from: a */
    public static final int[] f22255a = {C5988ll.m9642l("isom"), C5988ll.m9642l("iso2"), C5988ll.m9642l("iso3"), C5988ll.m9642l("iso4"), C5988ll.m9642l("iso5"), C5988ll.m9642l("iso6"), C5988ll.m9642l("avc1"), C5988ll.m9642l("hvc1"), C5988ll.m9642l("hev1"), C5988ll.m9642l("mp41"), C5988ll.m9642l("mp42"), C5988ll.m9642l("3g2a"), C5988ll.m9642l("3g2b"), C5988ll.m9642l("3gr6"), C5988ll.m9642l("3gs6"), C5988ll.m9642l("3ge6"), C5988ll.m9642l("3gg6"), C5988ll.m9642l("M4V "), C5988ll.m9642l("M4A "), C5988ll.m9642l("f4v "), C5988ll.m9642l("kddi"), C5988ll.m9642l("M4VP"), C5988ll.m9642l("qt  "), C5988ll.m9642l("MSNV")};

    /* renamed from: a */
    public static boolean m12137a(C6094of c6094of) {
        return m12135c(c6094of, true);
    }

    /* renamed from: b */
    public static boolean m12136b(C6094of c6094of) {
        return m12135c(c6094of, false);
    }

    /* renamed from: c */
    public static boolean m12135c(C6094of c6094of, boolean z) {
        boolean z2;
        long m8810i = c6094of.m8810i();
        int i = (int) ((m8810i == -1 || m8810i > 4096) ? 4096L : 4096L);
        C5692dl c5692dl = new C5692dl(64);
        int i2 = 0;
        boolean z3 = false;
        while (i2 < i) {
            c5692dl.m12122a(8);
            c6094of.m8814e(c5692dl.f22312a, 0, 8, false);
            long m12107p = c5692dl.m12107p();
            int m12105r = c5692dl.m12105r();
            int i3 = 16;
            if (m12107p == 1) {
                c6094of.m8814e(c5692dl.f22312a, 8, 8, false);
                c5692dl.m12117f(16);
                m12107p = c5692dl.m12101v();
            } else {
                i3 = 8;
            }
            long j = i3;
            if (m12107p < j) {
                return false;
            }
            i2 += i3;
            if (m12105r != C6020mg.f27595C) {
                if (m12105r != C6020mg.f27613L && m12105r != C6020mg.f27617N) {
                    if ((i2 + m12107p) - j >= i) {
                        break;
                    }
                    int i4 = (int) (m12107p - j);
                    i2 += i4;
                    if (m12105r == C6020mg.f27633b) {
                        if (i4 < 8) {
                            return false;
                        }
                        c5692dl.m12122a(i4);
                        c6094of.m8814e(c5692dl.f22312a, 0, i4, false);
                        int i5 = i4 >> 2;
                        for (int i6 = 0; i6 < i5; i6++) {
                            if (i6 == 1) {
                                c5692dl.m12113j(4);
                            } else {
                                int m12105r2 = c5692dl.m12105r();
                                if ((m12105r2 >>> 8) != C5988ll.m9642l("3gp")) {
                                    int[] iArr = f22255a;
                                    int length = iArr.length;
                                    for (int i7 = 0; i7 < 24; i7++) {
                                        if (iArr[i7] != m12105r2) {
                                        }
                                    }
                                    continue;
                                }
                                z3 = true;
                                break;
                            }
                        }
                        if (!z3) {
                            return false;
                        }
                    } else if (i4 != 0) {
                        c6094of.m8813f(i4, false);
                    }
                } else {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (!z3 || z != z2) {
            return false;
        }
        return true;
    }
}
