package p218x1;

import p226y1.C7402c;
/* renamed from: x1.y */
/* loaded from: classes.dex */
public final class C7237y extends AbstractC7218g0 {

    /* renamed from: d */
    public static final String[] f36620d = {"static-put", "static-get", "instance-put", "instance-get", "invoke-static", "invoke-instance", "invoke-constructor", "invoke-direct", "invoke-interface"};

    /* renamed from: a */
    public final int f36621a;

    /* renamed from: b */
    public final AbstractC7204a f36622b;

    /* renamed from: A */
    public static boolean m2052A(int i) {
        return i == 0 || i == 1 || i == 2 || i == 3;
    }

    /* renamed from: C */
    public static boolean m2050C(int i) {
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: u */
    public static String m2045u(int i) {
        return f36620d[i];
    }

    /* renamed from: B */
    public boolean m2051B() {
        return m2050C(this.f36621a);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37066H;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "method handle";
    }

    /* renamed from: n */
    public int m2046n() {
        return this.f36621a;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m2045u(this.f36621a) + "," + this.f36622b.toString();
    }

    public String toString() {
        return "method-handle{" + toHuman() + "}";
    }

    /* renamed from: x */
    public AbstractC7204a m2044x() {
        return this.f36622b;
    }

    /* renamed from: z */
    public boolean m2043z() {
        return m2052A(this.f36621a);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        C7237y c7237y = (C7237y) abstractC7204a;
        if (m2046n() == c7237y.m2046n()) {
            return m2044x().compareTo(c7237y.m2044x());
        }
        return C7221i.m2085a(m2046n(), c7237y.m2046n());
    }

    public C7237y(int i, AbstractC7204a abstractC7204a) {
        this.f36621a = i;
        this.f36622b = abstractC7204a;
    }

    /* renamed from: D */
    public static C7237y m2049D(int i, AbstractC7204a abstractC7204a) {
        if (m2052A(i)) {
            if (!(abstractC7204a instanceof C7226n)) {
                throw new IllegalArgumentException("ref has wrong type: " + abstractC7204a.getClass());
            }
        } else if (m2050C(i)) {
            if (!(abstractC7204a instanceof AbstractC7213e)) {
                throw new IllegalArgumentException("ref has wrong type: " + abstractC7204a.getClass());
            }
        } else {
            throw new IllegalArgumentException("type is out of range: " + i);
        }
        return new C7237y(i, abstractC7204a);
    }
}
