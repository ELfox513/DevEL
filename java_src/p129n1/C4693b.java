package p129n1;

import java.util.ArrayList;
import p015b2.C0431c;
import p015b2.C0441j;
import p129n1.C4699g;
import p129n1.C4702i;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7236x;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7230r;
import p218x1.C7237y;
import p226y1.C7402c;
/* renamed from: n1.b */
/* loaded from: classes.dex */
public final class C4693b implements C4702i.InterfaceC4705c {

    /* renamed from: a */
    public final C4706j f18839a;

    /* renamed from: b */
    public final int[] f18840b;

    /* renamed from: c */
    public final int[] f18841c;

    /* renamed from: d */
    public final int[] f18842d;

    /* renamed from: e */
    public final C0441j[] f18843e;

    /* renamed from: f */
    public final C4699g[] f18844f;

    /* renamed from: g */
    public int f18845g;

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: c */
    public void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList) {
        m15747n(i, i2, true);
        m15746o(i, i2, true);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: d */
    public int mo13594d() {
        return this.f18845g;
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: f */
    public void mo13592f(int i) {
        this.f18845g = i;
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: g */
    public void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4) {
        m15747n(i2, i3, false);
        m15751j(c4732y.m15503z(), true);
        int size = c4732y.size();
        for (int i5 = 0; i5 < size; i5++) {
            m15751j(c4732y.m15510A(i5), true);
        }
        this.f18843e[i2] = c4732y.m15509B();
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: h */
    public void mo13590h(int i, int i2, int i3) {
        m15747n(i2, i3, true);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: i */
    public void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4) {
        m15747n(i2, i3, true);
        if ((abstractC7204a instanceof AbstractC7236x) || (abstractC7204a instanceof C7214e0) || (abstractC7204a instanceof C7212d0) || (abstractC7204a instanceof C7230r) || (abstractC7204a instanceof C7237y) || (abstractC7204a instanceof C7207b0)) {
            m15746o(i2, i3, true);
        }
    }

    /* renamed from: o */
    public final void m15746o(int i, int i2, boolean z) {
        int i3 = i2 + i;
        if (z) {
            m15751j(i3, true);
        }
        C4699g m15725z = this.f18839a.m15706f().m15725z(i);
        this.f18844f[i] = m15725z;
        C0441j[] c0441jArr = this.f18843e;
        if (!z) {
            i3 = -1;
        }
        c0441jArr[i] = m15725z.m15729D(i3);
    }

    /* renamed from: m */
    public static C4698f m15748m(C4706j c4706j) {
        C4693b c4693b = new C4693b(c4706j);
        c4693b.m15750k();
        return c4693b.m15749l();
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: a */
    public void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5) {
        if (i == 169) {
            m15747n(i2, i3, false);
            this.f18843e[i2] = C0441j.f1530k;
            return;
        }
        m15747n(i2, i3, true);
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: b */
    public void mo13596b(int i, int i2, int i3, C7402c c7402c) {
        if (i != 108 && i != 112) {
            if (i != 172 && i != 177) {
                if (i != 190) {
                    if (i != 191) {
                        if (i != 194 && i != 195) {
                            switch (i) {
                                case 46:
                                case 47:
                                case 48:
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                    break;
                                default:
                                    switch (i) {
                                        case 79:
                                        case 80:
                                        case 81:
                                        case 82:
                                        case 83:
                                        case 84:
                                        case 85:
                                        case 86:
                                            break;
                                        default:
                                            m15747n(i2, i3, true);
                                            return;
                                    }
                            }
                        }
                    } else {
                        m15747n(i2, i3, false);
                        m15746o(i2, i3, false);
                        return;
                    }
                }
                m15747n(i2, i3, true);
                m15746o(i2, i3, true);
                return;
            }
            m15747n(i2, i3, false);
            this.f18843e[i2] = C0441j.f1530k;
            return;
        }
        m15747n(i2, i3, true);
        if (c7402c == C7402c.f37097y || c7402c == C7402c.f37098z) {
            m15746o(i2, i3, true);
        }
    }

    @Override // p129n1.C4702i.InterfaceC4705c
    /* renamed from: e */
    public void mo13593e(int i, int i2, int i3, int i4) {
        if (i != 167) {
            if (i == 168) {
                m15751j(i2, true);
            }
            int i5 = i2 + i3;
            m15747n(i2, i3, true);
            m15751j(i5, true);
            this.f18843e[i2] = C0441j.m26465H(i5, i4);
        } else {
            m15747n(i2, i3, false);
            this.f18843e[i2] = C0441j.m26466F(i4);
        }
        m15751j(i4, true);
    }

    /* renamed from: j */
    public final void m15751j(int i, boolean z) {
        if (!C0431c.m26529f(this.f18841c, i)) {
            C0431c.m26524k(this.f18840b, i);
        }
        if (z) {
            C0431c.m26524k(this.f18842d, i);
        }
    }

    /* renamed from: k */
    public final void m15750k() {
        C4702i m15705g = this.f18839a.m15705g();
        C4699g m15706f = this.f18839a.m15706f();
        int size = m15706f.size();
        C0431c.m26524k(this.f18840b, 0);
        C0431c.m26524k(this.f18842d, 0);
        while (!C0431c.m26527h(this.f18840b)) {
            try {
                m15705g.m15709i(this.f18840b, this);
                for (int i = 0; i < size; i++) {
                    C4699g.C4700a m15726x = m15706f.m15726x(i);
                    int m15720e = m15726x.m15720e();
                    int m15723b = m15726x.m15723b();
                    if (C0431c.m26534a(this.f18841c, m15720e, m15723b)) {
                        C0431c.m26524k(this.f18842d, m15720e);
                        C0431c.m26524k(this.f18842d, m15723b);
                        m15751j(m15726x.m15721d(), true);
                    }
                }
            } catch (IllegalArgumentException e) {
                throw new C4729w("flow of control falls off end of method", e);
            }
        }
    }

    /* renamed from: l */
    public final C4698f m15749l() {
        C4699g c4699g;
        C4697e[] c4697eArr = new C4697e[this.f18839a.m15705g().m15708j()];
        int i = 0;
        int i2 = 0;
        while (true) {
            int m26530e = C0431c.m26530e(this.f18842d, i + 1);
            if (m26530e < 0) {
                break;
            }
            if (C0431c.m26529f(this.f18841c, i)) {
                C0441j c0441j = null;
                int i3 = m26530e - 1;
                while (true) {
                    if (i3 >= i) {
                        c0441j = this.f18843e[i3];
                        if (c0441j != null) {
                            break;
                        }
                        i3--;
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                if (c0441j == null) {
                    c0441j = C0441j.m26466F(m26530e);
                    c4699g = C4699g.f18855a;
                } else {
                    c4699g = this.f18844f[i3];
                    if (c4699g == null) {
                        c4699g = C4699g.f18855a;
                    }
                }
                c4697eArr[i2] = new C4697e(i, i, m26530e, c0441j, c4699g);
                i2++;
            }
            i = m26530e;
        }
        C4698f c4698f = new C4698f(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            c4698f.m15733H(i4, c4697eArr[i4]);
        }
        return c4698f;
    }

    /* renamed from: n */
    public final void m15747n(int i, int i2, boolean z) {
        C0431c.m26524k(this.f18841c, i);
        if (z) {
            m15751j(i + i2, false);
        } else {
            C0431c.m26524k(this.f18842d, i + i2);
        }
    }

    public C4693b(C4706j c4706j) {
        if (c4706j != null) {
            this.f18839a = c4706j;
            int m15708j = c4706j.m15705g().m15708j() + 1;
            this.f18840b = C0431c.m26526i(m15708j);
            this.f18841c = C0431c.m26526i(m15708j);
            this.f18842d = C0431c.m26526i(m15708j);
            this.f18843e = new C0441j[m15708j];
            this.f18844f = new C4699g[m15708j];
            this.f18845g = -1;
            return;
        }
        throw new NullPointerException("method == null");
    }
}
