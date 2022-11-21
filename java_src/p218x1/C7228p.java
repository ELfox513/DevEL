package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.p */
/* loaded from: classes.dex */
public final class C7228p extends AbstractC7232t {

    /* renamed from: b */
    public static final C7228p[] f36598b = new C7228p[511];

    /* renamed from: d */
    public static final C7228p f36599d = m2074C(-1);

    /* renamed from: k */
    public static final C7228p f36600k = m2074C(0);

    /* renamed from: p */
    public static final C7228p f36601p = m2074C(1);

    /* renamed from: q */
    public static final C7228p f36602q = m2074C(2);

    /* renamed from: r */
    public static final C7228p f36603r = m2074C(3);

    /* renamed from: s */
    public static final C7228p f36604s = m2074C(4);

    /* renamed from: t */
    public static final C7228p f36605t = m2074C(5);

    public C7228p(int i) {
        super(i);
    }

    /* renamed from: B */
    public int m2075B() {
        return mo2057z();
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37097y;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "int";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Integer.toString(mo2057z());
    }

    /* renamed from: C */
    public static C7228p m2074C(int i) {
        C7228p[] c7228pArr = f36598b;
        int length = (Integer.MAX_VALUE & i) % c7228pArr.length;
        C7228p c7228p = c7228pArr[length];
        if (c7228p != null && c7228p.m2075B() == i) {
            return c7228p;
        }
        C7228p c7228p2 = new C7228p(i);
        c7228pArr[length] = c7228p2;
        return c7228p2;
    }

    public String toString() {
        int mo2057z = mo2057z();
        return "int{0x" + C0438g.m26475j(mo2057z) + " / " + mo2057z + '}';
    }
}
