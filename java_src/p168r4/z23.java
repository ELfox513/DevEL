package p168r4;

import java.util.Comparator;
/* renamed from: r4.z23 */
/* loaded from: classes2.dex */
public final class z23 extends c33 {
    public z23() {
        super(null);
    }

    /* renamed from: j */
    public static final c33 m4465j(int i) {
        c33 c33Var;
        c33 c33Var2;
        c33 c33Var3;
        if (i < 0) {
            c33Var3 = c33.f21340b;
            return c33Var3;
        } else if (i > 0) {
            c33Var2 = c33.f21341c;
            return c33Var2;
        } else {
            c33Var = c33.f21339a;
            return c33Var;
        }
    }

    @Override // p168r4.c33
    /* renamed from: a */
    public final <T> c33 mo4470a(T t, T t2, Comparator<T> comparator) {
        return m4465j(comparator.compare(t, t2));
    }

    @Override // p168r4.c33
    /* renamed from: b */
    public final c33 mo4469b(int i, int i2) {
        return m4465j(i < i2 ? -1 : i > i2 ? 1 : 0);
    }

    @Override // p168r4.c33
    /* renamed from: c */
    public final c33 mo4468c(boolean z, boolean z2) {
        return m4465j(w53.m5837a(false, false));
    }

    @Override // p168r4.c33
    /* renamed from: d */
    public final c33 mo4467d(boolean z, boolean z2) {
        return m4465j(w53.m5837a(z, z2));
    }

    @Override // p168r4.c33
    /* renamed from: e */
    public final int mo4466e() {
        return 0;
    }
}
