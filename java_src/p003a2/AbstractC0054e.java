package p003a2;

import java.util.ArrayList;
import p015b2.InterfaceC0440i;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7166v;
import p210w1.C7167w;
import p234z1.AbstractC7565p;
import p234z1.AbstractC7572u;
import p234z1.C7568s;
import p234z1.C7574v;
/* renamed from: a2.e */
/* loaded from: classes.dex */
public abstract class AbstractC0054e {

    /* renamed from: a */
    public final C7574v f92a;

    /* renamed from: b */
    public final C0050c f93b;

    /* renamed from: a */
    public abstract AbstractC7565p mo27722a();

    /* renamed from: d */
    public abstract boolean mo27719d();

    /* renamed from: b */
    public final C7157q m27721b(int i) {
        AbstractC7572u m1077n = this.f92a.m1077n(i);
        if (m1077n == null) {
            return null;
        }
        return m1077n.m1108t();
    }

    public AbstractC0054e(C7574v c7574v, C0050c c0050c) {
        this.f92a = c7574v;
        this.f93b = c0050c;
    }

    /* renamed from: c */
    public final C7157q m27720c(AbstractC7572u abstractC7572u, C7157q c7157q) {
        C7568s m1112i = abstractC7572u.m1112i();
        ArrayList<AbstractC7572u> m1145q = m1112i.m1145q();
        int indexOf = m1145q.indexOf(abstractC7572u);
        if (indexOf >= 0) {
            if (indexOf == m1145q.size() - 1) {
                C7157q m2373J = C7157q.m2373J(this.f92a.m1103B(), c7157q.m2379C());
                m1145q.add(indexOf, AbstractC7572u.m1122D(new C7155o(C7166v.m2305A(m2373J.getType()), C7167w.f36439d, m2373J, C7160r.m2344D(c7157q)), m1112i));
                int m2380B = m2373J.m2380B();
                InterfaceC0440i it = m1112i.m1144r().iterator();
                while (it.hasNext()) {
                    this.f93b.m27733a(m2380B, it.next());
                }
                C7160r mo1107u = abstractC7572u.mo1107u();
                int size = mo1107u.size();
                for (int i = 0; i < size; i++) {
                    this.f93b.m27733a(m2380B, mo1107u.m2347A(i).m2380B());
                }
                this.f92a.m1098G();
                return m2373J;
            }
            throw new IllegalArgumentException("Adding move here not supported:" + abstractC7572u.toHuman());
        }
        throw new IllegalArgumentException("specified insn is not in this block");
    }
}
