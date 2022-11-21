package p210w1;

import p218x1.C7228p;
import p226y1.C7402c;
/* renamed from: w1.e */
/* loaded from: classes.dex */
public final class C7143e implements InterfaceC7137a0 {

    /* renamed from: b */
    public static final C7143e f36162b = new C7143e();

    /* renamed from: c */
    public static final C7143e f36163c = new C7143e(true);

    /* renamed from: a */
    public final boolean f36164a;

    public C7143e() {
        this.f36164a = false;
    }

    @Override // p210w1.InterfaceC7137a0
    /* renamed from: b */
    public int mo2425b() {
        return 16;
    }

    @Override // p210w1.InterfaceC7137a0
    /* renamed from: a */
    public boolean mo2426a(C7164t c7164t, C7160r c7160r) {
        if (!this.f36164a && c7164t.m2311g() && m2423d(c7160r) >= 6) {
            return true;
        }
        return false;
    }

    public C7143e(boolean z) {
        this.f36164a = z;
    }

    @Override // p210w1.InterfaceC7137a0
    /* renamed from: c */
    public boolean mo2424c(C7164t c7164t, C7157q c7157q, C7157q c7157q2) {
        if (c7157q.getType() != C7402c.f37097y) {
            return false;
        }
        if (!(c7157q2.m2379C() instanceof C7228p)) {
            if (!(c7157q.m2379C() instanceof C7228p) || c7164t.m2314d() != 15) {
                return false;
            }
            return ((C7228p) c7157q.m2379C()).m2060n();
        }
        C7228p c7228p = (C7228p) c7157q2.m2379C();
        switch (c7164t.m2314d()) {
            case 14:
            case 16:
            case 17:
            case 18:
            case 20:
            case 21:
            case 22:
                return c7228p.m2060n();
            case 15:
                return C7228p.m2074C(-c7228p.m2075B()).m2060n();
            case 19:
            default:
                return false;
            case 23:
            case 24:
            case 25:
                return c7228p.m2059u();
        }
    }

    /* renamed from: d */
    public final int m2423d(C7160r c7160r) {
        int size = c7160r.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += c7160r.m2347A(i2).m2355x();
        }
        return i;
    }
}
