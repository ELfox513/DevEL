package p218x1;

import p226y1.C7402c;
/* renamed from: x1.f */
/* loaded from: classes.dex */
public final class C7215f extends AbstractC7232t {

    /* renamed from: b */
    public static final C7215f f36585b = new C7215f(false);

    /* renamed from: d */
    public static final C7215f f36586d = new C7215f(true);

    public C7215f(boolean z) {
        super(z ? 1 : 0);
    }

    /* renamed from: B */
    public boolean m2095B() {
        return mo2057z() != 0;
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37092t;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "boolean";
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m2095B() ? "true" : "false";
    }

    public String toString() {
        return m2095B() ? "boolean{true}" : "boolean{false}";
    }

    /* renamed from: C */
    public static C7215f m2094C(int i) {
        if (i == 0) {
            return f36585b;
        }
        if (i == 1) {
            return f36586d;
        }
        throw new IllegalArgumentException("bogus value: " + i);
    }
}
