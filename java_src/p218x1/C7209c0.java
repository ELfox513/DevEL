package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.c0 */
/* loaded from: classes.dex */
public final class C7209c0 extends AbstractC7232t {

    /* renamed from: b */
    public static final C7209c0 f36555b = m2122C(0);

    public C7209c0(short s) {
        super(s);
    }

    /* renamed from: B */
    public static C7209c0 m2123B(int i) {
        short s = (short) i;
        if (s == i) {
            return m2122C(s);
        }
        throw new IllegalArgumentException("bogus short value: " + i);
    }

    /* renamed from: C */
    public static C7209c0 m2122C(short s) {
        return new C7209c0(s);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37059A;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "short";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Integer.toString(mo2057z());
    }

    public String toString() {
        int mo2057z = mo2057z();
        return "short{0x" + C0438g.m26478g(mo2057z) + " / " + mo2057z + '}';
    }
}
