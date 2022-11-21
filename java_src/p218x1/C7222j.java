package p218x1;

import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: x1.j */
/* loaded from: classes.dex */
public class C7222j extends AbstractC7204a {

    /* renamed from: a */
    public final C7230r f36589a;

    /* renamed from: b */
    public final int f36590b;

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "CallSiteRef";
    }

    /* renamed from: n */
    public C7219h m2084n() {
        return this.f36589a.m2063x();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m2084n().toHuman();
    }

    public String toString() {
        return m2084n().toString();
    }

    /* renamed from: u */
    public C7400a m2083u() {
        return this.f36589a.m2071B();
    }

    /* renamed from: x */
    public C7402c m2082x() {
        return this.f36589a.m2069D();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        C7222j c7222j = (C7222j) abstractC7204a;
        int compareTo = this.f36589a.compareTo(c7222j.f36589a);
        if (compareTo != 0) {
            return compareTo;
        }
        return C7221i.m2085a(this.f36590b, c7222j.f36590b);
    }

    public C7222j(C7230r c7230r, int i) {
        if (c7230r != null) {
            this.f36589a = c7230r;
            this.f36590b = i;
            return;
        }
        throw new NullPointerException("invokeDynamic == null");
    }
}
