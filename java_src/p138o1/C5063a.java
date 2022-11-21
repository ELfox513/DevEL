package p138o1;

import java.util.BitSet;
import p015b2.C0432d;
import p015b2.C0438g;
import p156q1.C5399i;
import p156q1.InterfaceC5400j;
import p218x1.AbstractC7204a;
import p218x1.C7205a0;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7216f0;
import p218x1.C7224l;
import p218x1.C7226n;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7229q;
import p218x1.C7230r;
import p218x1.C7235w;
import p218x1.C7237y;
import p218x1.C7238z;
import p226y1.C7402c;
/* renamed from: o1.a */
/* loaded from: classes.dex */
public final class C5063a {

    /* renamed from: a */
    public final C0432d f19284a;

    /* renamed from: b */
    public final C7216f0 f19285b;

    /* renamed from: c */
    public final int[] f19286c;

    /* renamed from: d */
    public int f19287d;

    /* renamed from: e */
    public InterfaceC5400j f19288e;

    /* renamed from: c */
    public static int m14733c(int i) {
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 0;
            case 5:
                return 5;
            case 6:
                return 4;
            case 7:
                return 7;
            case 8:
                return 6;
            case 9:
                return 8;
            default:
                throw new IllegalArgumentException("invalid kind: " + i);
        }
    }

    /* renamed from: a */
    public final void m14735a() {
        int i;
        int i2 = 10;
        int i3 = 1;
        while (true) {
            int[] iArr = this.f19286c;
            if (i3 < iArr.length) {
                iArr[i3] = i2;
                int m26511l = this.f19284a.m26511l(i2);
                switch (m26511l) {
                    case 1:
                        i2 += this.f19284a.m26509n(i2 + 1) + 3;
                        break;
                    case 2:
                    case 13:
                    case 14:
                    case 17:
                    default:
                        throw new C5399i("unknown tag byte: " + C0438g.m26479f(m26511l));
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 18:
                        i2 += 5;
                        break;
                    case 5:
                    case 6:
                        i = 2;
                        i2 += 9;
                        continue;
                        i3 += i;
                    case 7:
                    case 8:
                    case 16:
                        i2 += 3;
                        break;
                    case 15:
                        try {
                            i2 += 4;
                            break;
                        } catch (C5399i e) {
                            e.m16013a("...while preparsing cst " + C0438g.m26478g(i3) + " at offset " + C0438g.m26475j(i2));
                            throw e;
                        }
                }
                i = 1;
                i3 += i;
            } else {
                this.f19287d = i2;
                return;
            }
        }
    }

    /* renamed from: i */
    public void m14727i(InterfaceC5400j interfaceC5400j) {
        this.f19288e = interfaceC5400j;
    }

    /* renamed from: f */
    public final AbstractC7204a m14730f(int i, BitSet bitSet) {
        AbstractC7204a m14728h;
        AbstractC7204a m2074C;
        AbstractC7204a c7226n;
        AbstractC7204a abstractC7204a;
        AbstractC7204a mo2093h = this.f19285b.mo2093h(i);
        if (mo2093h != null) {
            return mo2093h;
        }
        int i2 = this.f19286c[i];
        try {
            int m26511l = this.f19284a.m26511l(i2);
            switch (m26511l) {
                case 1:
                    m14728h = m14728h(i2);
                    bitSet.set(i);
                    m2074C = m14728h;
                    break;
                case 2:
                case 13:
                case 14:
                case 17:
                default:
                    throw new C5399i("unknown tag byte: " + C0438g.m26479f(m26511l));
                case 3:
                    m2074C = C7228p.m2074C(this.f19284a.m26514i(i2 + 1));
                    break;
                case 4:
                    m2074C = C7227o.m2076B(this.f19284a.m26514i(i2 + 1));
                    break;
                case 5:
                    m2074C = C7235w.m2055C(this.f19284a.m26513j(i2 + 1));
                    break;
                case 6:
                    m2074C = C7224l.m2079B(this.f19284a.m26513j(i2 + 1));
                    break;
                case 7:
                    m14728h = new C7214e0(C7402c.m1542E(((C7212d0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet)).m2112u()));
                    m2074C = m14728h;
                    break;
                case 8:
                    m2074C = m14730f(this.f19284a.m26509n(i2 + 1), bitSet);
                    break;
                case 9:
                    c7226n = new C7226n((C7214e0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet), (C7205a0) m14730f(this.f19284a.m26509n(i2 + 3), bitSet));
                    m2074C = c7226n;
                    break;
                case 10:
                    c7226n = new C7238z((C7214e0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet), (C7205a0) m14730f(this.f19284a.m26509n(i2 + 3), bitSet));
                    m2074C = c7226n;
                    break;
                case 11:
                    c7226n = new C7229q((C7214e0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet), (C7205a0) m14730f(this.f19284a.m26509n(i2 + 3), bitSet));
                    m2074C = c7226n;
                    break;
                case 12:
                    c7226n = new C7205a0((C7212d0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet), (C7212d0) m14730f(this.f19284a.m26509n(i2 + 3), bitSet));
                    m2074C = c7226n;
                    break;
                case 15:
                    int m26511l2 = this.f19284a.m26511l(i2 + 1);
                    int m26509n = this.f19284a.m26509n(i2 + 2);
                    switch (m26511l2) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            abstractC7204a = (C7226n) m14730f(m26509n, bitSet);
                            break;
                        case 5:
                        case 8:
                            abstractC7204a = (C7238z) m14730f(m26509n, bitSet);
                            break;
                        case 6:
                        case 7:
                            abstractC7204a = m14730f(m26509n, bitSet);
                            if (!(abstractC7204a instanceof C7238z) && !(abstractC7204a instanceof C7229q)) {
                                throw new C5399i("Unsupported ref constant type for MethodHandle " + abstractC7204a.getClass());
                            }
                            break;
                        case 9:
                            abstractC7204a = (C7229q) m14730f(m26509n, bitSet);
                            break;
                        default:
                            throw new C5399i("Unsupported MethodHandle kind: " + m26511l2);
                    }
                    m2074C = C7237y.m2049D(m14733c(m26511l2), abstractC7204a);
                    break;
                case 16:
                    m2074C = C7207b0.m2125u((C7212d0) m14730f(this.f19284a.m26509n(i2 + 1), bitSet));
                    break;
                case 18:
                    m2074C = C7230r.m2068E(this.f19284a.m26509n(i2 + 1), (C7205a0) m14730f(this.f19284a.m26509n(i2 + 3), bitSet));
                    break;
            }
            this.f19285b.m2091x(i, m2074C);
            return m2074C;
        } catch (C5399i e) {
            e.m16013a("...while parsing cst " + C0438g.m26478g(i) + " at offset " + C0438g.m26475j(i2));
            throw e;
        } catch (RuntimeException e2) {
            C5399i c5399i = new C5399i(e2);
            c5399i.m16013a("...while parsing cst " + C0438g.m26478g(i) + " at offset " + C0438g.m26475j(i2));
            throw c5399i;
        }
    }

    /* renamed from: g */
    public final void m14729g() {
        if (this.f19287d < 0) {
            m14731e();
        }
    }

    /* renamed from: h */
    public final C7212d0 m14728h(int i) {
        int m26509n = this.f19284a.m26509n(i + 1);
        int i2 = i + 3;
        try {
            return new C7212d0(this.f19284a.m26505r(i2, m26509n + i2));
        } catch (IllegalArgumentException e) {
            throw new C5399i(e);
        }
    }

    public C5063a(C0432d c0432d) {
        int m26509n = c0432d.m26509n(8);
        this.f19284a = c0432d;
        this.f19285b = new C7216f0(m26509n);
        this.f19286c = new int[m26509n];
        this.f19287d = -1;
    }

    /* renamed from: b */
    public int m14734b() {
        m14729g();
        return this.f19287d;
    }

    /* renamed from: d */
    public C7216f0 m14732d() {
        m14729g();
        return this.f19285b;
    }

    /* renamed from: e */
    public final void m14731e() {
        AbstractC7204a mo2093h;
        String str;
        m14735a();
        InterfaceC5400j interfaceC5400j = this.f19288e;
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(this.f19284a, 8, 2, "constant_pool_count: " + C0438g.m26478g(this.f19286c.length));
            this.f19288e.m13345a(this.f19284a, 10, 0, "\nconstant_pool:");
            this.f19288e.m13344b(1);
        }
        BitSet bitSet = new BitSet(this.f19286c.length);
        int i = 1;
        while (true) {
            int[] iArr = this.f19286c;
            if (i >= iArr.length) {
                break;
            }
            if (iArr[i] != 0 && this.f19285b.mo2093h(i) == null) {
                m14730f(i, bitSet);
            }
            i++;
        }
        if (this.f19288e != null) {
            for (int i2 = 1; i2 < this.f19286c.length; i2++) {
                if (this.f19285b.mo2093h(i2) != null) {
                    int i3 = this.f19286c[i2];
                    int i4 = this.f19287d;
                    int i5 = i2 + 1;
                    while (true) {
                        int[] iArr2 = this.f19286c;
                        if (i5 >= iArr2.length) {
                            break;
                        }
                        int i6 = iArr2[i5];
                        if (i6 != 0) {
                            i4 = i6;
                            break;
                        }
                        i5++;
                    }
                    if (bitSet.get(i2)) {
                        str = C0438g.m26478g(i2) + ": utf8{\"" + mo2093h.toHuman() + "\"}";
                    } else {
                        str = C0438g.m26478g(i2) + ": " + mo2093h.toString();
                    }
                    this.f19288e.m13345a(this.f19284a, i3, i4 - i3, str);
                }
            }
            this.f19288e.m13344b(-1);
            this.f19288e.m13345a(this.f19284a, this.f19287d, 0, "end constant_pool");
        }
    }
}
