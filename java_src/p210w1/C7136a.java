package p210w1;

import p015b2.C0438g;
/* renamed from: w1.a */
/* loaded from: classes.dex */
public final class C7136a {
    /* renamed from: a */
    public static String m2460a(int i) {
        return m2458c(i, 30257, 1);
    }

    /* renamed from: b */
    public static String m2459b(int i) {
        return m2458c(i, 20703, 2);
    }

    /* renamed from: d */
    public static String m2457d(int i) {
        return m2458c(i, 30239, 1);
    }

    /* renamed from: e */
    public static boolean m2456e(int i) {
        return (i & 1024) != 0;
    }

    /* renamed from: f */
    public static boolean m2455f(int i) {
        return (i & 8192) != 0;
    }

    /* renamed from: g */
    public static boolean m2454g(int i) {
        return (i & 256) != 0;
    }

    /* renamed from: h */
    public static boolean m2453h(int i) {
        return (i & 2) != 0;
    }

    /* renamed from: i */
    public static boolean m2452i(int i) {
        return (i & 8) != 0;
    }

    /* renamed from: j */
    public static boolean m2451j(int i) {
        return (i & 32) != 0;
    }

    /* renamed from: k */
    public static String m2450k(int i) {
        return m2458c(i, 204287, 3);
    }

    /* renamed from: c */
    public static String m2458c(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder(80);
        int i4 = (i2 ^ (-1)) & i;
        int i5 = i & i2;
        if ((i5 & 1) != 0) {
            sb.append("|public");
        }
        if ((i5 & 2) != 0) {
            sb.append("|private");
        }
        if ((i5 & 4) != 0) {
            sb.append("|protected");
        }
        if ((i5 & 8) != 0) {
            sb.append("|static");
        }
        if ((i5 & 16) != 0) {
            sb.append("|final");
        }
        if ((i5 & 32) != 0) {
            if (i3 == 1) {
                sb.append("|super");
            } else {
                sb.append("|synchronized");
            }
        }
        if ((i5 & 64) != 0) {
            if (i3 == 3) {
                sb.append("|bridge");
            } else {
                sb.append("|volatile");
            }
        }
        if ((i5 & 128) != 0) {
            if (i3 == 3) {
                sb.append("|varargs");
            } else {
                sb.append("|transient");
            }
        }
        if ((i5 & 256) != 0) {
            sb.append("|native");
        }
        if ((i5 & 512) != 0) {
            sb.append("|interface");
        }
        if ((i5 & 1024) != 0) {
            sb.append("|abstract");
        }
        if ((i5 & 2048) != 0) {
            sb.append("|strictfp");
        }
        if ((i5 & 4096) != 0) {
            sb.append("|synthetic");
        }
        if ((i5 & 8192) != 0) {
            sb.append("|annotation");
        }
        if ((i5 & 16384) != 0) {
            sb.append("|enum");
        }
        if ((65536 & i5) != 0) {
            sb.append("|constructor");
        }
        if ((i5 & 131072) != 0) {
            sb.append("|declared_synchronized");
        }
        if (i4 != 0 || sb.length() == 0) {
            sb.append('|');
            sb.append(C0438g.m26478g(i4));
        }
        return sb.substring(1);
    }
}
