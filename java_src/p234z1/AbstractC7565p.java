package p234z1;

import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7163s;
/* renamed from: z1.p */
/* loaded from: classes.dex */
public abstract class AbstractC7565p {
    /* renamed from: a */
    public abstract int mo1035a();

    /* renamed from: b */
    public abstract C7157q mo1034b(C7157q c7157q);

    /* renamed from: c */
    public final C7160r m1193c(C7160r c7160r) {
        int size = c7160r.size();
        C7160r c7160r2 = new C7160r(size);
        for (int i = 0; i < size; i++) {
            c7160r2.m2342F(i, mo1034b(c7160r.m2347A(i)));
        }
        c7160r2.setImmutable();
        if (!c7160r2.equals(c7160r)) {
            return c7160r2;
        }
        return c7160r;
    }

    /* renamed from: d */
    public final C7163s m1192d(C7163s c7163s) {
        int m2327B = c7163s.m2327B();
        C7163s c7163s2 = new C7163s(mo1035a());
        for (int i = 0; i < m2327B; i++) {
            C7157q m2318z = c7163s.m2318z(i);
            if (m2318z != null) {
                c7163s2.m2323F(mo1034b(m2318z));
            }
        }
        c7163s2.setImmutable();
        if (!c7163s2.equals(c7163s)) {
            return c7163s2;
        }
        return c7163s;
    }
}
