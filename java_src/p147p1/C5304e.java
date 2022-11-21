package p147p1;

import java.util.ArrayList;
import p015b2.C0432d;
import p015b2.C0438g;
import p129n1.C4701h;
import p129n1.C4702i;
import p129n1.C4732y;
import p156q1.InterfaceC5400j;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p218x1.C7224l;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7231s;
import p218x1.C7235w;
import p226y1.C7402c;
/* renamed from: p1.e */
/* loaded from: classes.dex */
public class C5304e implements C4702i.InterfaceC4705c {

    /* renamed from: a */
    public final C0432d f19877a;

    /* renamed from: b */
    public final InterfaceC5400j f19878b;

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: a */
    public void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5) {
        String m26478g;
        String str;
        String str2;
        String str3;
        String m26482c;
        if (i3 <= 3) {
            m26478g = C0438g.m26479f(i4);
        } else {
            m26478g = C0438g.m26478g(i4);
        }
        boolean z = true;
        if (i3 != 1) {
            z = false;
        }
        String str4 = "";
        if (i != 132) {
            str = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(", #");
            if (i3 <= 3) {
                m26482c = C0438g.m26483b(i5);
            } else {
                m26482c = C0438g.m26482c(i5);
            }
            sb.append(m26482c);
            str = sb.toString();
        }
        if (c7402c.m1537K()) {
            StringBuilder sb2 = new StringBuilder();
            if (z) {
                str3 = ",";
            } else {
                str3 = " //";
            }
            sb2.append(str3);
            sb2.append(" category-2");
            str4 = sb2.toString();
        }
        InterfaceC5400j interfaceC5400j = this.f19878b;
        C0432d c0432d = this.f19877a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(m13588j(i2));
        if (z) {
            str2 = " // ";
        } else {
            str2 = " ";
        }
        sb3.append(str2);
        sb3.append(m26478g);
        sb3.append(str);
        sb3.append(str4);
        interfaceC5400j.m13345a(c0432d, i2, i3, sb3.toString());
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: b */
    public void mo13596b(int i, int i2, int i3, C7402c c7402c) {
        this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2));
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: c */
    public void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList) {
        String str;
        if (i2 == 1) {
            str = " // ";
        } else {
            str = " ";
        }
        String human = c7214e0.m2097x().m1525x().toHuman();
        InterfaceC5400j interfaceC5400j = this.f19878b;
        C0432d c0432d = this.f19877a;
        interfaceC5400j.m13345a(c0432d, i, i2, m13588j(i) + str + human);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: d */
    public int mo13594d() {
        return -1;
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: e */
    public void mo13593e(int i, int i2, int i3, int i4) {
        String m26475j;
        if (i3 <= 3) {
            m26475j = C0438g.m26478g(i4);
        } else {
            m26475j = C0438g.m26475j(i4);
        }
        InterfaceC5400j interfaceC5400j = this.f19878b;
        C0432d c0432d = this.f19877a;
        interfaceC5400j.m13345a(c0432d, i2, i3, m13588j(i2) + " " + m26475j);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: f */
    public void mo13592f(int i) {
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: h */
    public void mo13590h(int i, int i2, int i3) {
        this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2));
    }

    /* renamed from: k */
    public final void m13587k(int i, int i2, int i3, long j) {
        String str;
        if (i3 != 1) {
            str = " #" + C0438g.m26474k(j);
        } else {
            str = "";
        }
        this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2) + str + " // " + Double.longBitsToDouble(j));
    }

    /* renamed from: l */
    public final void m13586l(int i, int i2, int i3, int i4) {
        String str;
        if (i3 != 1) {
            str = " #" + C0438g.m26475j(i4);
        } else {
            str = "";
        }
        this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2) + str + " // " + Float.intBitsToFloat(i4));
    }

    /* renamed from: m */
    public final void m13585m(int i, int i2, int i3, int i4) {
        String str;
        String str2;
        if (i3 == 1) {
            str = " // ";
        } else {
            str = " ";
        }
        int m26511l = this.f19877a.m26511l(i2);
        if (i3 != 1 && m26511l != 16) {
            if (m26511l == 17) {
                str2 = "#" + C0438g.m26482c(i4);
            } else {
                str2 = "#" + C0438g.m26481d(i4);
            }
        } else {
            str2 = "#" + C0438g.m26483b(i4);
        }
        this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2) + str + str2);
    }

    /* renamed from: n */
    public final void m13584n(int i, int i2, int i3, long j) {
        String str;
        String m26480e;
        if (i3 == 1) {
            str = " // ";
        } else {
            str = " #";
        }
        if (i3 == 1) {
            m26480e = C0438g.m26483b((int) j);
        } else {
            m26480e = C0438g.m26480e(j);
        }
        InterfaceC5400j interfaceC5400j = this.f19878b;
        C0432d c0432d = this.f19877a;
        interfaceC5400j.m13345a(c0432d, i2, i3, m13588j(i2) + str + m26480e);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: i */
    public void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4) {
        String str;
        if (abstractC7204a instanceof C7231s) {
            mo13596b(i, i2, i3, null);
        } else if (abstractC7204a instanceof C7228p) {
            m13585m(i, i2, i3, i4);
        } else if (abstractC7204a instanceof C7235w) {
            m13584n(i, i2, i3, ((C7235w) abstractC7204a).m2056B());
        } else if (abstractC7204a instanceof C7227o) {
            m13586l(i, i2, i3, ((C7227o) abstractC7204a).mo2057z());
        } else if (abstractC7204a instanceof C7224l) {
            m13587k(i, i2, i3, ((C7224l) abstractC7204a).mo2061A());
        } else {
            if (i4 != 0) {
                if (i == 197) {
                    str = ", " + C0438g.m26479f(i4);
                } else {
                    str = ", " + C0438g.m26478g(i4);
                }
            } else {
                str = "";
            }
            this.f19878b.m13345a(this.f19877a, i2, i3, m13588j(i2) + " " + abstractC7204a + str);
        }
    }

    /* renamed from: j */
    public final String m13588j(int i) {
        int m26511l = this.f19877a.m26511l(i);
        String m15718b = C4701h.m15718b(m26511l);
        if (m26511l == 196) {
            int m26511l2 = this.f19877a.m26511l(i + 1);
            m15718b = m15718b + " " + C4701h.m15718b(m26511l2);
        }
        return C0438g.m26478g(i) + ": " + m15718b;
    }

    public C5304e(C0432d c0432d, InterfaceC5400j interfaceC5400j) {
        if (c0432d != null) {
            if (interfaceC5400j != null) {
                this.f19877a = c0432d;
                this.f19878b = interfaceC5400j;
                return;
            }
            throw new NullPointerException("observer == null");
        }
        throw new NullPointerException("bytes == null");
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: g */
    public void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4) {
        int size = c4732y.size();
        StringBuilder sb = new StringBuilder((size * 20) + 100);
        sb.append(m13588j(i2));
        if (i4 != 0) {
            sb.append(" // padding: " + C0438g.m26475j(i4));
        }
        sb.append('\n');
        for (int i5 = 0; i5 < size; i5++) {
            sb.append("  ");
            sb.append(C0438g.m26481d(c4732y.m15508C(i5)));
            sb.append(": ");
            sb.append(C0438g.m26478g(c4732y.m15510A(i5)));
            sb.append('\n');
        }
        sb.append("  default: ");
        sb.append(C0438g.m26478g(c4732y.m15503z()));
        this.f19878b.m13345a(this.f19877a, i2, i3, sb.toString());
    }
}
