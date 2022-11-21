package p168r4;

import java.util.List;
/* renamed from: r4.xl3 */
/* loaded from: classes2.dex */
public final class xl3 {

    /* renamed from: a */
    public final wl3 f33635a;

    public xl3(wl3 wl3Var) {
        zm3.m4179b(wl3Var, "output");
        this.f33635a = wl3Var;
        wl3Var.f33256a = this;
    }

    /* renamed from: l */
    public static xl3 m5261l(wl3 wl3Var) {
        xl3 xl3Var = wl3Var.f33256a;
        return xl3Var != null ? xl3Var : new xl3(wl3Var);
    }

    /* renamed from: A */
    public final void m5283A(int i, int i2) {
        this.f33635a.mo5665i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m5282B(int i, long j) {
        this.f33635a.mo5663k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: E */
    public final void m5279E(int i) {
        this.f33635a.mo5667g(i, 3);
    }

    /* renamed from: F */
    public final void m5278F(int i) {
        this.f33635a.mo5667g(i, 4);
    }

    /* renamed from: G */
    public final void m5277G(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += wl3.m5677A(list.get(i4).intValue());
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5657q(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5666h(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: H */
    public final void m5276H(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).intValue();
                i3 += 4;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5655s(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5664j(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: I */
    public final void m5275I(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += wl3.m5675C(list.get(i4).longValue());
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5654t(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5663k(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: J */
    public final void m5274J(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += wl3.m5675C(list.get(i4).longValue());
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5654t(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5663k(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: K */
    public final void m5273K(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).longValue();
                i3 += 8;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5653u(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5662l(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: a */
    public final void m5272a(int i, List<Float> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).floatValue();
                i3 += 4;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5655s(Float.floatToRawIntBits(list.get(i2).floatValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5664j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            i2++;
        }
    }

    /* renamed from: b */
    public final void m5271b(int i, List<Double> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).doubleValue();
                i3 += 8;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5653u(Double.doubleToRawLongBits(list.get(i2).doubleValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5662l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            i2++;
        }
    }

    /* renamed from: c */
    public final void m5270c(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += wl3.m5677A(list.get(i4).intValue());
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5657q(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5666h(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: d */
    public final void m5269d(int i, List<Boolean> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).booleanValue();
                i3++;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5658p(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5661m(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    /* renamed from: f */
    public final void m5267f(int i, List<ll3> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f33635a.mo5659o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m5266g(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += wl3.m5676B(list.get(i4).intValue());
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5656r(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5665i(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: h */
    public final void m5265h(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).intValue();
                i3 += 4;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5655s(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5664j(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: i */
    public final void m5264i(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).longValue();
                i3 += 8;
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                this.f33635a.mo5653u(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5662l(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: j */
    public final void m5263j(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue = list.get(i4).intValue();
                i3 += wl3.m5676B((intValue >> 31) ^ (intValue + intValue));
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                wl3 wl3Var = this.f33635a;
                int intValue2 = list.get(i2).intValue();
                wl3Var.mo5656r((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            wl3 wl3Var2 = this.f33635a;
            int intValue3 = list.get(i2).intValue();
            wl3Var2.mo5665i(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }

    /* renamed from: m */
    public final void m5260m(int i, int i2) {
        this.f33635a.mo5664j(i, i2);
    }

    /* renamed from: n */
    public final void m5259n(int i, long j) {
        this.f33635a.mo5663k(i, j);
    }

    /* renamed from: o */
    public final void m5258o(int i, long j) {
        this.f33635a.mo5662l(i, j);
    }

    /* renamed from: r */
    public final void m5255r(int i, int i2) {
        this.f33635a.mo5666h(i, i2);
    }

    /* renamed from: s */
    public final void m5254s(int i, long j) {
        this.f33635a.mo5663k(i, j);
    }

    /* renamed from: t */
    public final void m5253t(int i, int i2) {
        this.f33635a.mo5666h(i, i2);
    }

    /* renamed from: u */
    public final void m5252u(int i, long j) {
        this.f33635a.mo5662l(i, j);
    }

    /* renamed from: v */
    public final void m5251v(int i, int i2) {
        this.f33635a.mo5664j(i, i2);
    }

    /* renamed from: w */
    public final void m5250w(int i, boolean z) {
        this.f33635a.mo5661m(i, z);
    }

    /* renamed from: x */
    public final void m5249x(int i, String str) {
        this.f33635a.mo5660n(i, str);
    }

    /* renamed from: y */
    public final void m5248y(int i, ll3 ll3Var) {
        this.f33635a.mo5659o(i, ll3Var);
    }

    /* renamed from: z */
    public final void m5247z(int i, int i2) {
        this.f33635a.mo5665i(i, i2);
    }

    /* renamed from: C */
    public final void m5281C(int i, Object obj, ro3 ro3Var) {
        ao3 ao3Var = (ao3) obj;
        tl3 tl3Var = (tl3) this.f33635a;
        tl3Var.mo5656r((i << 3) | 2);
        uk3 uk3Var = (uk3) ao3Var;
        int mo6493d = uk3Var.mo6493d();
        if (mo6493d == -1) {
            mo6493d = ro3Var.mo7410d(uk3Var);
            uk3Var.mo6492e(mo6493d);
        }
        tl3Var.mo5656r(mo6493d);
        ro3Var.mo7408f(ao3Var, tl3Var.f33256a);
    }

    /* renamed from: D */
    public final void m5280D(int i, Object obj, ro3 ro3Var) {
        wl3 wl3Var = this.f33635a;
        wl3Var.mo5667g(i, 3);
        ro3Var.mo7408f((ao3) obj, wl3Var.f33256a);
        wl3Var.mo5667g(i, 4);
    }

    /* renamed from: e */
    public final void m5268e(int i, List<String> list) {
        int i2 = 0;
        if (list instanceof gn3) {
            gn3 gn3Var = (gn3) list;
            while (i2 < list.size()) {
                Object mo9289W = gn3Var.mo9289W(i2);
                if (mo9289W instanceof String) {
                    this.f33635a.mo5660n(i, (String) mo9289W);
                } else {
                    this.f33635a.mo5659o(i, (ll3) mo9289W);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f33635a.mo5660n(i, list.get(i2));
            i2++;
        }
    }

    /* renamed from: k */
    public final void m5262k(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f33635a.mo5667g(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue = list.get(i4).longValue();
                i3 += wl3.m5675C((longValue >> 63) ^ (longValue + longValue));
            }
            this.f33635a.mo5656r(i3);
            while (i2 < list.size()) {
                wl3 wl3Var = this.f33635a;
                long longValue2 = list.get(i2).longValue();
                wl3Var.mo5654t((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            wl3 wl3Var2 = this.f33635a;
            long longValue3 = list.get(i2).longValue();
            wl3Var2.mo5663k(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    /* renamed from: p */
    public final void m5257p(int i, float f) {
        this.f33635a.mo5664j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m5256q(int i, double d) {
        this.f33635a.mo5662l(i, Double.doubleToRawLongBits(d));
    }
}
