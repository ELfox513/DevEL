package p016b3;

import p220x3.C7289o;
/* renamed from: b3.j0 */
/* loaded from: classes.dex */
public final class C0491j0 {

    /* renamed from: a */
    public final String f1619a;

    /* renamed from: b */
    public final double f1620b;

    /* renamed from: c */
    public final double f1621c;

    /* renamed from: d */
    public final double f1622d;

    /* renamed from: e */
    public final int f1623e;

    public C0491j0(String str, double d, double d2, double d3, int i) {
        this.f1619a = str;
        this.f1621c = d;
        this.f1620b = d2;
        this.f1622d = d3;
        this.f1623e = i;
    }

    public final int hashCode() {
        return C7289o.m1907b(this.f1619a, Double.valueOf(this.f1620b), Double.valueOf(this.f1621c), Double.valueOf(this.f1622d), Integer.valueOf(this.f1623e));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0491j0)) {
            return false;
        }
        C0491j0 c0491j0 = (C0491j0) obj;
        if (!C7289o.m1908a(this.f1619a, c0491j0.f1619a) || this.f1620b != c0491j0.f1620b || this.f1621c != c0491j0.f1621c || this.f1623e != c0491j0.f1623e || Double.compare(this.f1622d, c0491j0.f1622d) != 0) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return C7289o.m1906c(this).m1905a("name", this.f1619a).m1905a("minBound", Double.valueOf(this.f1621c)).m1905a("maxBound", Double.valueOf(this.f1620b)).m1905a("percent", Double.valueOf(this.f1622d)).m1905a("count", Integer.valueOf(this.f1623e)).toString();
    }
}
