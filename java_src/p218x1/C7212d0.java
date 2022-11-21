package p218x1;

import p015b2.C0432d;
import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.d0 */
/* loaded from: classes.dex */
public final class C7212d0 extends AbstractC7218g0 {

    /* renamed from: d */
    public static final C7212d0 f36557d = new C7212d0("");

    /* renamed from: a */
    public final String f36558a;

    /* renamed from: b */
    public final C0432d f36559b;

    public C7212d0(String str) {
        if (str != null) {
            this.f36558a = str.intern();
            this.f36559b = new C0432d(m2118A(str));
            return;
        }
        throw new NullPointerException("string == null");
    }

    /* renamed from: C */
    public String m2116C() {
        return '\"' + toHuman() + '\"';
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return this.f36558a.compareTo(((C7212d0) abstractC7204a).f36558a);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37071M;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return this.f36558a.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "utf8";
    }

    /* renamed from: n */
    public C0432d m2113n() {
        return this.f36559b;
    }

    public String toString() {
        return "string{\"" + toHuman() + "\"}";
    }

    /* renamed from: u */
    public String m2112u() {
        return this.f36558a;
    }

    /* renamed from: x */
    public int m2111x() {
        return this.f36558a.length();
    }

    /* renamed from: z */
    public int m2110z() {
        return this.f36559b.m26506q();
    }

    /* renamed from: B */
    public static String m2117B(int i, int i2) {
        throw new IllegalArgumentException("bad utf-8 byte " + C0438g.m26479f(i) + " at offset " + C0438g.m26475j(i2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7212d0)) {
            return false;
        }
        return this.f36558a.equals(((C7212d0) obj).f36558a);
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        char c;
        boolean z;
        int length = this.f36558a.length();
        StringBuilder sb = new StringBuilder((length * 3) / 2);
        for (int i = 0; i < length; i++) {
            char charAt = this.f36558a.charAt(i);
            if (charAt >= ' ' && charAt < 127) {
                if (charAt == '\'' || charAt == '\"' || charAt == '\\') {
                    sb.append('\\');
                }
                sb.append(charAt);
            } else if (charAt <= 127) {
                if (charAt != '\t') {
                    if (charAt != '\n') {
                        if (charAt != '\r') {
                            if (i < length - 1) {
                                c = this.f36558a.charAt(i + 1);
                            } else {
                                c = 0;
                            }
                            if (c >= '0' && c <= '7') {
                                z = true;
                            } else {
                                z = false;
                            }
                            sb.append('\\');
                            for (int i2 = 6; i2 >= 0; i2 -= 3) {
                                char c2 = (char) (((charAt >> i2) & 7) + 48);
                                if (c2 != '0' || z) {
                                    sb.append(c2);
                                    z = true;
                                }
                            }
                            if (!z) {
                                sb.append('0');
                            }
                        } else {
                            sb.append("\\r");
                        }
                    } else {
                        sb.append("\\n");
                    }
                } else {
                    sb.append("\\t");
                }
            } else {
                sb.append("\\u");
                sb.append(Character.forDigit(charAt >> '\f', 16));
                sb.append(Character.forDigit((charAt >> '\b') & 15, 16));
                sb.append(Character.forDigit((charAt >> 4) & 15, 16));
                sb.append(Character.forDigit(charAt & 15, 16));
            }
        }
        return sb.toString();
    }

    /* renamed from: A */
    public static byte[] m2118A(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt != 0 && charAt < 128) {
                bArr[i] = (byte) charAt;
                i++;
            } else if (charAt < 2048) {
                bArr[i] = (byte) (((charAt >> 6) & 31) | 192);
                bArr[i + 1] = (byte) ((charAt & '?') | 128);
                i += 2;
            } else {
                bArr[i] = (byte) (((charAt >> '\f') & 15) | 224);
                bArr[i + 1] = (byte) (((charAt >> 6) & 63) | 128);
                bArr[i + 2] = (byte) ((charAt & '?') | 128);
                i += 3;
            }
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: E */
    public static String m2114E(C0432d c0432d) {
        char c;
        int m26506q = c0432d.m26506q();
        char[] cArr = new char[m26506q];
        int i = 0;
        int i2 = 0;
        while (m26506q > 0) {
            int m26511l = c0432d.m26511l(i2);
            switch (m26511l >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    m26506q--;
                    if (m26511l == 0) {
                        return m2117B(m26511l, i2);
                    }
                    c = (char) m26511l;
                    i2++;
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return m2117B(m26511l, i2);
                case 12:
                case 13:
                    m26506q -= 2;
                    if (m26506q < 0) {
                        return m2117B(m26511l, i2);
                    }
                    int i3 = i2 + 1;
                    int m26511l2 = c0432d.m26511l(i3);
                    if ((m26511l2 & 192) != 128) {
                        return m2117B(m26511l2, i3);
                    }
                    int i4 = ((m26511l & 31) << 6) | (m26511l2 & 63);
                    if (i4 != 0 && i4 < 128) {
                        return m2117B(m26511l2, i3);
                    }
                    c = (char) i4;
                    i2 += 2;
                    break;
                case 14:
                    m26506q -= 3;
                    if (m26506q < 0) {
                        return m2117B(m26511l, i2);
                    }
                    int i5 = i2 + 1;
                    int m26511l3 = c0432d.m26511l(i5);
                    int i6 = m26511l3 & 192;
                    if (i6 != 128) {
                        return m2117B(m26511l3, i5);
                    }
                    int i7 = i2 + 2;
                    int m26511l4 = c0432d.m26511l(i7);
                    if (i6 != 128) {
                        return m2117B(m26511l4, i7);
                    }
                    int i8 = ((m26511l & 15) << 12) | ((m26511l3 & 63) << 6) | (m26511l4 & 63);
                    if (i8 < 2048) {
                        return m2117B(m26511l4, i7);
                    }
                    c = (char) i8;
                    i2 += 3;
                    break;
            }
            cArr[i] = c;
            i++;
        }
        return new String(cArr, 0, i);
    }

    /* renamed from: D */
    public String m2115D(int i) {
        String str;
        String human = toHuman();
        if (human.length() <= i - 2) {
            str = "";
        } else {
            human = human.substring(0, i - 5);
            str = "...";
        }
        return '\"' + human + str + '\"';
    }

    public C7212d0(C0432d c0432d) {
        if (c0432d != null) {
            this.f36559b = c0432d;
            this.f36558a = m2114E(c0432d).intern();
            return;
        }
        throw new NullPointerException("bytes == null");
    }
}
