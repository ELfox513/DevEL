package p168r4;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.e5 */
/* loaded from: classes2.dex */
public final class C5713e5 {

    /* renamed from: G */
    public static final C5713e5 f22795G = new C5713e5(new C5639c5());

    /* renamed from: H */
    public static final InterfaceC5674d3<C5713e5> f22796H = C5603b5.f20839a;

    /* renamed from: A */
    public final int f22797A;

    /* renamed from: B */
    public final int f22798B;

    /* renamed from: C */
    public final int f22799C;

    /* renamed from: D */
    public final int f22800D;

    /* renamed from: E */
    public final int f22801E;

    /* renamed from: F */
    public int f22802F;

    /* renamed from: a */
    public final String f22803a;

    /* renamed from: b */
    public final String f22804b;

    /* renamed from: c */
    public final String f22805c;

    /* renamed from: d */
    public final int f22806d;

    /* renamed from: e */
    public final int f22807e;

    /* renamed from: f */
    public final int f22808f;

    /* renamed from: g */
    public final int f22809g;

    /* renamed from: h */
    public final int f22810h;

    /* renamed from: i */
    public final String f22811i;

    /* renamed from: j */
    public final C5901j8 f22812j;

    /* renamed from: k */
    public final String f22813k;

    /* renamed from: l */
    public final String f22814l;

    /* renamed from: m */
    public final int f22815m;

    /* renamed from: n */
    public final List<byte[]> f22816n;

    /* renamed from: o */
    public final fz3 f22817o;

    /* renamed from: p */
    public final long f22818p;

    /* renamed from: q */
    public final int f22819q;

    /* renamed from: r */
    public final int f22820r;

    /* renamed from: s */
    public final float f22821s;

    /* renamed from: t */
    public final int f22822t;

    /* renamed from: u */
    public final float f22823u;

    /* renamed from: v */
    public final byte[] f22824v;

    /* renamed from: w */
    public final int f22825w;

    /* renamed from: x */
    public final av3 f22826x;

    /* renamed from: y */
    public final int f22827y;

    /* renamed from: z */
    public final int f22828z;

    public C5713e5(C5639c5 c5639c5) {
        this.f22803a = C5639c5.m12611A(c5639c5);
        this.f22804b = C5639c5.m12602J(c5639c5);
        this.f22805c = C5979lc.m9715V(C5639c5.m12601K(c5639c5));
        this.f22806d = C5639c5.m12600L(c5639c5);
        this.f22807e = 0;
        int m12599M = C5639c5.m12599M(c5639c5);
        this.f22808f = m12599M;
        int m12598N = C5639c5.m12598N(c5639c5);
        this.f22809g = m12598N;
        this.f22810h = m12598N != -1 ? m12598N : m12599M;
        this.f22811i = C5639c5.m12597O(c5639c5);
        this.f22812j = C5639c5.m12596P(c5639c5);
        this.f22813k = C5639c5.m12595Q(c5639c5);
        this.f22814l = C5639c5.m12594R(c5639c5);
        this.f22815m = C5639c5.m12593S(c5639c5);
        this.f22816n = C5639c5.m12592T(c5639c5) == null ? Collections.emptyList() : C5639c5.m12592T(c5639c5);
        fz3 m12591U = C5639c5.m12591U(c5639c5);
        this.f22817o = m12591U;
        this.f22818p = C5639c5.m12590V(c5639c5);
        this.f22819q = C5639c5.m12589W(c5639c5);
        this.f22820r = C5639c5.m12588X(c5639c5);
        this.f22821s = C5639c5.m12587Y(c5639c5);
        this.f22822t = C5639c5.m12586Z(c5639c5) == -1 ? 0 : C5639c5.m12586Z(c5639c5);
        this.f22823u = C5639c5.m12584a0(c5639c5) == -1.0f ? 1.0f : C5639c5.m12584a0(c5639c5);
        this.f22824v = C5639c5.m12582b0(c5639c5);
        this.f22825w = C5639c5.m12580c0(c5639c5);
        this.f22826x = C5639c5.m12578d0(c5639c5);
        this.f22827y = C5639c5.m12576e0(c5639c5);
        this.f22828z = C5639c5.m12574f0(c5639c5);
        this.f22797A = C5639c5.m12572g0(c5639c5);
        this.f22798B = C5639c5.m12570h0(c5639c5) == -1 ? 0 : C5639c5.m12570h0(c5639c5);
        this.f22799C = C5639c5.m12585a(c5639c5) != -1 ? C5639c5.m12585a(c5639c5) : 0;
        this.f22800D = C5639c5.m12583b(c5639c5);
        this.f22801E = (C5639c5.m12581c(c5639c5) != 0 || m12591U == null) ? C5639c5.m12581c(c5639c5) : 1;
    }

    /* renamed from: a */
    public final C5639c5 m11856a() {
        return new C5639c5(this, null);
    }

    /* renamed from: c */
    public final int m11854c() {
        int i;
        int i2 = this.f22819q;
        if (i2 == -1 || (i = this.f22820r) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && C5713e5.class == obj.getClass()) {
            C5713e5 c5713e5 = (C5713e5) obj;
            int i2 = this.f22802F;
            if ((i2 == 0 || (i = c5713e5.f22802F) == 0 || i2 == i) && this.f22806d == c5713e5.f22806d && this.f22808f == c5713e5.f22808f && this.f22809g == c5713e5.f22809g && this.f22815m == c5713e5.f22815m && this.f22818p == c5713e5.f22818p && this.f22819q == c5713e5.f22819q && this.f22820r == c5713e5.f22820r && this.f22822t == c5713e5.f22822t && this.f22825w == c5713e5.f22825w && this.f22827y == c5713e5.f22827y && this.f22828z == c5713e5.f22828z && this.f22797A == c5713e5.f22797A && this.f22798B == c5713e5.f22798B && this.f22799C == c5713e5.f22799C && this.f22800D == c5713e5.f22800D && this.f22801E == c5713e5.f22801E && Float.compare(this.f22821s, c5713e5.f22821s) == 0 && Float.compare(this.f22823u, c5713e5.f22823u) == 0 && C5979lc.m9729H(this.f22803a, c5713e5.f22803a) && C5979lc.m9729H(this.f22804b, c5713e5.f22804b) && C5979lc.m9729H(this.f22811i, c5713e5.f22811i) && C5979lc.m9729H(this.f22813k, c5713e5.f22813k) && C5979lc.m9729H(this.f22814l, c5713e5.f22814l) && C5979lc.m9729H(this.f22805c, c5713e5.f22805c) && Arrays.equals(this.f22824v, c5713e5.f22824v) && C5979lc.m9729H(this.f22812j, c5713e5.f22812j) && C5979lc.m9729H(this.f22826x, c5713e5.f22826x) && C5979lc.m9729H(this.f22817o, c5713e5.f22817o) && m11853d(c5713e5)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str = this.f22803a;
        String str2 = this.f22804b;
        String str3 = this.f22813k;
        String str4 = this.f22814l;
        String str5 = this.f22811i;
        int i = this.f22810h;
        String str6 = this.f22805c;
        int i2 = this.f22819q;
        int i3 = this.f22820r;
        float f = this.f22821s;
        int i4 = this.f22827y;
        int i5 = this.f22828z;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(str2).length();
        int length3 = String.valueOf(str3).length();
        int length4 = String.valueOf(str4).length();
        StringBuilder sb = new StringBuilder(length + 104 + length2 + length3 + length4 + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    /* renamed from: b */
    public final C5713e5 m11855b(int i) {
        C5639c5 c5639c5 = new C5639c5(this, null);
        c5639c5.m12604H(i);
        return new C5713e5(c5639c5);
    }

    /* renamed from: d */
    public final boolean m11853d(C5713e5 c5713e5) {
        if (this.f22816n.size() != c5713e5.f22816n.size()) {
            return false;
        }
        for (int i = 0; i < this.f22816n.size(); i++) {
            if (!Arrays.equals(this.f22816n.get(i), c5713e5.f22816n.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i2 = this.f22802F;
        if (i2 == 0) {
            String str = this.f22803a;
            int i3 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i4 = (hashCode + 527) * 31;
            String str2 = this.f22804b;
            if (str2 != null) {
                i = str2.hashCode();
            } else {
                i = 0;
            }
            int i5 = (i4 + i) * 31;
            String str3 = this.f22805c;
            if (str3 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str3.hashCode();
            }
            int i6 = (((((((i5 + hashCode2) * 31) + this.f22806d) * 961) + this.f22808f) * 31) + this.f22809g) * 31;
            String str4 = this.f22811i;
            if (str4 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str4.hashCode();
            }
            int i7 = (i6 + hashCode3) * 31;
            C5901j8 c5901j8 = this.f22812j;
            if (c5901j8 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = c5901j8.hashCode();
            }
            int i8 = (i7 + hashCode4) * 31;
            String str5 = this.f22813k;
            if (str5 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str5.hashCode();
            }
            int i9 = (i8 + hashCode5) * 31;
            String str6 = this.f22814l;
            if (str6 != null) {
                i3 = str6.hashCode();
            }
            int floatToIntBits = ((((((((((((((((((((((((((((((i9 + i3) * 31) + this.f22815m) * 31) + ((int) this.f22818p)) * 31) + this.f22819q) * 31) + this.f22820r) * 31) + Float.floatToIntBits(this.f22821s)) * 31) + this.f22822t) * 31) + Float.floatToIntBits(this.f22823u)) * 31) + this.f22825w) * 31) + this.f22827y) * 31) + this.f22828z) * 31) + this.f22797A) * 31) + this.f22798B) * 31) + this.f22799C) * 31) + this.f22800D) * 31) + this.f22801E;
            this.f22802F = floatToIntBits;
            return floatToIntBits;
        }
        return i2;
    }
}
