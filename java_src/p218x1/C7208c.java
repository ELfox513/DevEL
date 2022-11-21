package p218x1;

import p201v1.C6969a;
/* renamed from: x1.c */
/* loaded from: classes.dex */
public final class C7208c extends AbstractC7204a {

    /* renamed from: a */
    public final C6969a f36554a;

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return this.f36554a.compareTo(((C7208c) abstractC7204a).f36554a);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return this.f36554a.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "annotation";
    }

    /* renamed from: n */
    public C6969a m2124n() {
        return this.f36554a;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f36554a.toString();
    }

    public String toString() {
        return this.f36554a.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7208c)) {
            return false;
        }
        return this.f36554a.equals(((C7208c) obj).f36554a);
    }

    public C7208c(C6969a c6969a) {
        if (c6969a != null) {
            c6969a.throwIfMutable();
            this.f36554a = c6969a;
            return;
        }
        throw new NullPointerException("annotation == null");
    }
}
