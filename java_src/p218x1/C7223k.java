package p218x1;

import p015b2.C0438g;
import p226y1.C7402c;
/* renamed from: x1.k */
/* loaded from: classes.dex */
public final class C7223k extends AbstractC7232t {

    /* renamed from: b */
    public static final C7223k f36591b = m2081B(0);

    public C7223k(char c) {
        super(c);
    }

    /* renamed from: B */
    public static C7223k m2081B(char c) {
        return new C7223k(c);
    }

    /* renamed from: C */
    public static C7223k m2080C(int i) {
        char c = (char) i;
        if (c == i) {
            return m2081B(c);
        }
        throw new IllegalArgumentException("bogus char value: " + i);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37094v;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "char";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return Integer.toString(mo2057z());
    }

    public String toString() {
        int mo2057z = mo2057z();
        return "char{0x" + C0438g.m26478g(mo2057z) + " / " + mo2057z + '}';
    }
}
