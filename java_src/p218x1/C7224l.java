package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.l */
/* loaded from: classes.dex */
public final class C7224l extends AbstractC7233u {

    /* renamed from: b */
    public static final C7224l f36592b = new C7224l(Double.doubleToLongBits(0.0d));

    /* renamed from: d */
    public static final C7224l f36593d = new C7224l(Double.doubleToLongBits(1.0d));

    public C7224l(long j) {
        super(j);
    }

    /* renamed from: B */
    public static C7224l m2079B(long j) {
        return new C7224l(j);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37095w;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "double";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Double.toString(Double.longBitsToDouble(mo2061A()));
    }

    public String toString() {
        long mo2061A = mo2061A();
        return "double{0x" + C0438g.m26474k(mo2061A) + " / " + Double.longBitsToDouble(mo2061A) + '}';
    }
}
