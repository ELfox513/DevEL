package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.w */
/* loaded from: classes.dex */
public final class C7235w extends AbstractC7233u {

    /* renamed from: b */
    public static final C7235w f36616b = m2055C(0);

    /* renamed from: d */
    public static final C7235w f36617d = m2055C(1);

    public C7235w(long j) {
        super(j);
    }

    /* renamed from: C */
    public static C7235w m2055C(long j) {
        return new C7235w(j);
    }

    /* renamed from: B */
    public long m2056B() {
        return mo2061A();
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37098z;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "long";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Long.toString(mo2061A());
    }

    public String toString() {
        long mo2061A = mo2061A();
        return "long{0x" + C0438g.m26474k(mo2061A) + " / " + mo2061A + '}';
    }
}
