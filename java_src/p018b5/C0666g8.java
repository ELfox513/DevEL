package p018b5;

import java.util.List;
/* renamed from: b5.g8 */
/* loaded from: classes2.dex */
public final class C0666g8 {

    /* renamed from: a */
    public final AbstractC0649f8 f1836a;

    public C0666g8(AbstractC0649f8 abstractC0649f8) {
        C0650f9.m25945f(abstractC0649f8, "output");
        this.f1836a = abstractC0649f8;
        abstractC0649f8.f1816a = this;
    }

    /* renamed from: l */
    public static C0666g8 m25904l(AbstractC0649f8 abstractC0649f8) {
        C0666g8 c0666g8 = abstractC0649f8.f1816a;
        return c0666g8 != null ? c0666g8 : new C0666g8(abstractC0649f8);
    }

    /* renamed from: A */
    public final void m25926A(int i, List<Float> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).floatValue();
                i3 += 4;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25965l(Float.floatToRawIntBits(list.get(i2).floatValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25966k(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            i2++;
        }
    }

    /* renamed from: C */
    public final void m25924C(int i, int i2) {
        this.f1836a.mo25962o(i, i2);
    }

    /* renamed from: D */
    public final void m25923D(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC0649f8.m25951z(list.get(i4).intValue());
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25961p(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25962o(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: E */
    public final void m25922E(int i, long j) {
        this.f1836a.mo25955v(i, j);
    }

    /* renamed from: F */
    public final void m25921F(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC0649f8.m25975b(list.get(i4).longValue());
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25954w(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25955v(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: H */
    public final void m25919H(int i, int i2) {
        this.f1836a.mo25966k(i, i2);
    }

    /* renamed from: I */
    public final void m25918I(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).intValue();
                i3 += 4;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25965l(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25966k(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: J */
    public final void m25917J(int i, long j) {
        this.f1836a.mo25964m(i, j);
    }

    /* renamed from: K */
    public final void m25916K(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).longValue();
                i3 += 8;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25963n(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25964m(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: a */
    public final void m25915a(int i, int i2) {
        this.f1836a.mo25957t(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: b */
    public final void m25914b(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue = list.get(i4).intValue();
                i3 += AbstractC0649f8.m25976a((intValue >> 31) ^ (intValue + intValue));
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                AbstractC0649f8 abstractC0649f8 = this.f1836a;
                int intValue2 = list.get(i2).intValue();
                abstractC0649f8.mo25956u((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            AbstractC0649f8 abstractC0649f82 = this.f1836a;
            int intValue3 = list.get(i2).intValue();
            abstractC0649f82.mo25957t(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }

    /* renamed from: c */
    public final void m25913c(int i, long j) {
        this.f1836a.mo25955v(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: e */
    public final void m25911e(int i) {
        this.f1836a.mo25958s(i, 3);
    }

    /* renamed from: f */
    public final void m25910f(int i, String str) {
        this.f1836a.mo25959r(i, str);
    }

    /* renamed from: h */
    public final void m25908h(int i, int i2) {
        this.f1836a.mo25957t(i, i2);
    }

    /* renamed from: i */
    public final void m25907i(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC0649f8.m25976a(list.get(i4).intValue());
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25956u(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25957t(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: j */
    public final void m25906j(int i, long j) {
        this.f1836a.mo25955v(i, j);
    }

    /* renamed from: k */
    public final void m25905k(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC0649f8.m25975b(list.get(i4).longValue());
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25954w(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25955v(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: m */
    public final void m25903m(int i, boolean z) {
        this.f1836a.mo25968i(i, z);
    }

    /* renamed from: n */
    public final void m25902n(int i, List<Boolean> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).booleanValue();
                i3++;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25969h(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25968i(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    /* renamed from: o */
    public final void m25901o(int i, AbstractC0937w7 abstractC0937w7) {
        this.f1836a.mo25967j(i, abstractC0937w7);
    }

    /* renamed from: p */
    public final void m25900p(int i, List<AbstractC0937w7> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f1836a.mo25967j(i, list.get(i2));
        }
    }

    /* renamed from: r */
    public final void m25898r(int i, List<Double> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).doubleValue();
                i3 += 8;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25963n(Double.doubleToRawLongBits(list.get(i2).doubleValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25964m(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            i2++;
        }
    }

    /* renamed from: s */
    public final void m25897s(int i) {
        this.f1836a.mo25958s(i, 4);
    }

    /* renamed from: t */
    public final void m25896t(int i, int i2) {
        this.f1836a.mo25962o(i, i2);
    }

    /* renamed from: u */
    public final void m25895u(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += AbstractC0649f8.m25951z(list.get(i4).intValue());
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25961p(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25962o(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: v */
    public final void m25894v(int i, int i2) {
        this.f1836a.mo25966k(i, i2);
    }

    /* renamed from: w */
    public final void m25893w(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).intValue();
                i3 += 4;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25965l(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25966k(i, list.get(i2).intValue());
            i2++;
        }
    }

    /* renamed from: x */
    public final void m25892x(int i, long j) {
        this.f1836a.mo25964m(i, j);
    }

    /* renamed from: y */
    public final void m25891y(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.get(i4).longValue();
                i3 += 8;
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                this.f1836a.mo25963n(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25964m(i, list.get(i2).longValue());
            i2++;
        }
    }

    /* renamed from: B */
    public final void m25925B(int i, Object obj, InterfaceC0821pa interfaceC0821pa) {
        AbstractC0649f8 abstractC0649f8 = this.f1836a;
        abstractC0649f8.mo25958s(i, 3);
        interfaceC0821pa.mo25488i((InterfaceC0634ea) obj, abstractC0649f8.f1816a);
        abstractC0649f8.mo25958s(i, 4);
    }

    /* renamed from: G */
    public final void m25920G(int i, Object obj, InterfaceC0821pa interfaceC0821pa) {
        InterfaceC0634ea interfaceC0634ea = (InterfaceC0634ea) obj;
        C0598c8 c0598c8 = (C0598c8) this.f1836a;
        c0598c8.mo25956u((i << 3) | 2);
        AbstractC0648f7 abstractC0648f7 = (AbstractC0648f7) interfaceC0634ea;
        int mo24986b = abstractC0648f7.mo24986b();
        if (mo24986b == -1) {
            mo24986b = interfaceC0821pa.mo25496a(abstractC0648f7);
            abstractC0648f7.mo24985d(mo24986b);
        }
        c0598c8.mo25956u(mo24986b);
        interfaceC0821pa.mo25488i(interfaceC0634ea, c0598c8.f1816a);
    }

    /* renamed from: d */
    public final void m25912d(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.f1836a.mo25958s(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue = list.get(i4).longValue();
                i3 += AbstractC0649f8.m25975b((longValue >> 63) ^ (longValue + longValue));
            }
            this.f1836a.mo25956u(i3);
            while (i2 < list.size()) {
                AbstractC0649f8 abstractC0649f8 = this.f1836a;
                long longValue2 = list.get(i2).longValue();
                abstractC0649f8.mo25954w((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            AbstractC0649f8 abstractC0649f82 = this.f1836a;
            long longValue3 = list.get(i2).longValue();
            abstractC0649f82.mo25955v(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    /* renamed from: g */
    public final void m25909g(int i, List<String> list) {
        int i2 = 0;
        if (list instanceof InterfaceC0752l9) {
            InterfaceC0752l9 interfaceC0752l9 = (InterfaceC0752l9) list;
            while (i2 < list.size()) {
                Object mo25653C = interfaceC0752l9.mo25653C(i2);
                if (mo25653C instanceof String) {
                    this.f1836a.mo25959r(i, (String) mo25653C);
                } else {
                    this.f1836a.mo25967j(i, (AbstractC0937w7) mo25653C);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.f1836a.mo25959r(i, list.get(i2));
            i2++;
        }
    }

    /* renamed from: q */
    public final void m25899q(int i, double d) {
        this.f1836a.mo25964m(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: z */
    public final void m25890z(int i, float f) {
        this.f1836a.mo25966k(i, Float.floatToRawIntBits(f));
    }
}
