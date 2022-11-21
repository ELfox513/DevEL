package p234z1;

import java.util.ArrayList;
import p003a2.C0050c;
import p015b2.C0429b;
import p210w1.C7157q;
import p210w1.C7160r;
/* renamed from: z1.g */
/* loaded from: classes.dex */
public class C7550g extends C7532a {

    /* renamed from: c */
    public final ArrayList<C0429b> f37442c;

    /* renamed from: d */
    public final C0050c f37443d;

    /* renamed from: j */
    public boolean m1239j(C7157q c7157q, int i) {
        return m1240i(c7157q.m2380B(), i, c7157q.m2355x());
    }

    /* renamed from: g */
    public final void m1242g(int i, int i2) {
        int i3 = i + 1;
        this.f37442c.ensureCapacity(i3);
        while (i >= this.f37442c.size()) {
            this.f37442c.add(new C0429b(i3));
        }
        this.f37443d.m27731c(i2, this.f37442c.get(i));
    }

    /* renamed from: i */
    public boolean m1240i(int i, int i2, int i3) {
        C0429b c0429b;
        if (i2 >= this.f37442c.size() || (c0429b = this.f37442c.get(i2)) == null) {
            return false;
        }
        if (i3 == 1) {
            return c0429b.mo26447c(i);
        }
        if (!c0429b.mo26447c(i) && !m1240i(i, i2 + 1, i3 - 1)) {
            return false;
        }
        return true;
    }

    public C7550g(C0050c c0050c, int i) {
        super(i);
        this.f37442c = new ArrayList<>();
        this.f37443d = c0050c;
    }

    @Override // p234z1.C7532a
    /* renamed from: e */
    public void mo1243e(int i, int i2, int i3) {
        super.mo1243e(i, i2, i3);
        m1242g(i2, i);
        if (i3 == 2) {
            m1242g(i2 + 1, i);
        }
    }

    /* renamed from: h */
    public boolean m1241h(C7160r c7160r, int i, int i2) {
        int size = c7160r.size();
        for (int i3 = 0; i3 < size; i3++) {
            C7157q m2347A = c7160r.m2347A(i3);
            int m1287f = m1287f(m2347A.m2380B());
            if (m1287f != i) {
                if (m2347A.m2355x() != 2 || m1287f + 1 != i) {
                    if (i2 == 2 && m1287f == i + 1) {
                        return true;
                    }
                } else {
                    return true;
                }
            } else {
                return true;
            }
        }
        return false;
    }
}
