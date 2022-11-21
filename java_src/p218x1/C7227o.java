package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.o */
/* loaded from: classes.dex */
public final class C7227o extends AbstractC7232t {

    /* renamed from: b */
    public static final C7227o f36595b = m2076B(Float.floatToIntBits(0.0f));

    /* renamed from: d */
    public static final C7227o f36596d = m2076B(Float.floatToIntBits(1.0f));

    /* renamed from: k */
    public static final C7227o f36597k = m2076B(Float.floatToIntBits(2.0f));

    public C7227o(int i) {
        super(i);
    }

    /* renamed from: B */
    public static C7227o m2076B(int i) {
        return new C7227o(i);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37096x;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "float";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Float.toString(Float.intBitsToFloat(mo2057z()));
    }

    public String toString() {
        int mo2057z = mo2057z();
        return "float{0x" + C0438g.m26475j(mo2057z) + " / " + Float.intBitsToFloat(mo2057z) + '}';
    }
}
