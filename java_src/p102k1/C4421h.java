package p102k1;
/* renamed from: k1.h */
/* loaded from: classes.dex */
public final class C4421h {
    /* renamed from: a */
    public static String m16565a(int i) {
        String str = "039";
        if (i < 28) {
            if (i >= 10000) {
                str = "040";
            } else if (i < 28) {
                str = i >= 26 ? "038" : i >= 24 ? "037" : "035";
            }
        }
        return "dex\n" + str + "\u0000";
    }

    /* renamed from: b */
    public static boolean m16564b(byte[] bArr) {
        return m16563c(bArr) > 0;
    }

    /* renamed from: c */
    public static int m16563c(byte[] bArr) {
        if (bArr.length == 8 && bArr[0] == 100 && bArr[1] == 101 && bArr[2] == 120 && bArr[3] == 10 && bArr[7] == 0) {
            String str = "" + ((char) bArr[4]) + ((char) bArr[5]) + ((char) bArr[6]);
            if (str.equals("035")) {
                return 13;
            }
            if (str.equals("037")) {
                return 24;
            }
            if (str.equals("038")) {
                return 26;
            }
            if (str.equals("039")) {
                return 28;
            }
            if (str.equals("040")) {
                return 10000;
            }
            if (str.equals("039")) {
                return 28;
            }
        }
        return -1;
    }
}
