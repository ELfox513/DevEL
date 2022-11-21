package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.g */
/* loaded from: classes.dex */
public final class C7217g extends AbstractC7232t {

    /* renamed from: b */
    public static final C7217g f36588b = m2089B((byte) 0);

    public C7217g(byte b) {
        super(b);
    }

    /* renamed from: B */
    public static C7217g m2089B(byte b) {
        return new C7217g(b);
    }

    /* renamed from: C */
    public static C7217g m2088C(int i) {
        byte b = (byte) i;
        if (b == i) {
            return m2089B(b);
        }
        throw new IllegalArgumentException("bogus byte value: " + i);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37093u;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "byte";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Integer.toString(mo2057z());
    }

    public String toString() {
        int mo2057z = mo2057z();
        return "byte{0x" + C0438g.m26479f(mo2057z) + " / " + mo2057z + '}';
    }
}
