package p168r4;
/* renamed from: r4.j14 */
/* loaded from: classes2.dex */
public final class j14 {
    /* renamed from: a */
    public static int m10438a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: b */
    public static f14 m10437b(C6423xb c6423xb, boolean z, boolean z2) {
        if (z) {
            m10436c(3, c6423xb, false);
        }
        String m5414e = c6423xb.m5414e((int) c6423xb.m5424C(), n03.f28056c);
        long m5424C = c6423xb.m5424C();
        String[] strArr = new String[(int) m5424C];
        int length = m5414e.length() + 15;
        for (int i = 0; i < m5424C; i++) {
            String m5414e2 = c6423xb.m5414e((int) c6423xb.m5424C(), n03.f28056c);
            strArr[i] = m5414e2;
            length = length + 4 + m5414e2.length();
        }
        if (z2 && (c6423xb.m5397v() & 1) == 0) {
            throw C5973l6.m9787b("framing bit expected to be set", null);
        }
        return new f14(m5414e, strArr, length + 1);
    }

    /* renamed from: c */
    public static boolean m10436c(int i, C6423xb c6423xb, boolean z) {
        String str;
        if (c6423xb.m5407l() < 7) {
            if (z) {
                return false;
            }
            int m5407l = c6423xb.m5407l();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(m5407l);
            throw C5973l6.m9787b(sb.toString(), null);
        } else if (c6423xb.m5397v() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            if (valueOf.length() != 0) {
                str = "expected header type ".concat(valueOf);
            } else {
                str = new String("expected header type ");
            }
            throw C5973l6.m9787b(str, null);
        } else if (c6423xb.m5397v() == 118 && c6423xb.m5397v() == 111 && c6423xb.m5397v() == 114 && c6423xb.m5397v() == 98 && c6423xb.m5397v() == 105 && c6423xb.m5397v() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw C5973l6.m9787b("expected characters 'vorbis'", null);
        }
    }
}
