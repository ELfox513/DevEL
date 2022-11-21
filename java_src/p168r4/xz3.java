package p168r4;
/* renamed from: r4.xz3 */
/* loaded from: classes2.dex */
public final class xz3 {

    /* renamed from: a */
    public final String f33820a;

    public xz3(int i, int i2, String str) {
        this.f33820a = str;
    }

    /* renamed from: a */
    public static xz3 m4945a(C6423xb c6423xb) {
        String str;
        String str2;
        c6423xb.m5400s(2);
        int m5397v = c6423xb.m5397v();
        int i = m5397v >> 1;
        int m5397v2 = (c6423xb.m5397v() >> 3) | ((m5397v & 1) << 5);
        if (i != 4 && i != 5 && i != 7) {
            if (i == 8) {
                str = "hev1";
            } else if (i == 9) {
                str = "avc3";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        if (m5397v2 < 10) {
            str2 = ".0";
        } else {
            str2 = ".";
        }
        StringBuilder sb = new StringBuilder(str.length() + 24 + str2.length());
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(str2);
        sb.append(m5397v2);
        return new xz3(i, m5397v2, sb.toString());
    }
}
