package p234z1;

import java.util.HashSet;
import java.util.List;
import p210w1.AbstractC7142d;
import p210w1.C7151k;
import p210w1.C7157q;
import p218x1.C7228p;
import p234z1.AbstractC7572u;
/* renamed from: z1.k */
/* loaded from: classes.dex */
public class C7555k {

    /* renamed from: a */
    public final C7574v f37455a;

    /* renamed from: z1.k$a */
    /* loaded from: classes.dex */
    public class C7556a implements AbstractC7572u.InterfaceC7573a {

        /* renamed from: a */
        public final /* synthetic */ C7157q[] f37456a;

        /* renamed from: b */
        public final /* synthetic */ HashSet f37457b;

        public C7556a(C7157q[] c7157qArr, HashSet hashSet) {
            this.f37456a = c7157qArr;
            this.f37457b = hashSet;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
        }

        /* renamed from: z1.k$a$a */
        /* loaded from: classes.dex */
        public class C7557a extends AbstractC7565p {

            /* renamed from: a */
            public final /* synthetic */ C7157q f37459a;

            /* renamed from: b */
            public final /* synthetic */ C7157q f37460b;

            public C7557a(C7157q c7157q, C7157q c7157q2) {
                this.f37459a = c7157q;
                this.f37460b = c7157q2;
            }

            @Override // p234z1.AbstractC7565p
            /* renamed from: a */
            public int mo1035a() {
                return C7555k.this.f37455a.m1070u();
            }

            @Override // p234z1.AbstractC7565p
            /* renamed from: b */
            public C7157q mo1034b(C7157q c7157q) {
                if (c7157q.m2380B() == this.f37459a.m2380B()) {
                    return this.f37460b;
                }
                return c7157q;
            }
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            if (c7558l.mo1110n().m2314d() != 3) {
                return;
            }
            int m1219c = C7555k.this.m1219c(c7558l);
            C7157q[] c7157qArr = this.f37456a;
            C7157q c7157q = c7157qArr[m1219c];
            if (c7157q == null) {
                c7157qArr[m1219c] = c7558l.m1108t();
                return;
            }
            C7157q m1108t = c7558l.m1108t();
            C7151k m2354z = c7157q.m2354z();
            C7151k m2354z2 = m1108t.m2354z();
            if (m2354z == null) {
                m2354z = m2354z2;
            } else if (m2354z2 != null && !m2354z.equals(m2354z2)) {
                return;
            }
            C7555k.this.f37455a.m1077n(c7157q.m2380B()).m1118I(m2354z);
            C7557a c7557a = new C7557a(m1108t, c7157q);
            List<AbstractC7572u> m1068w = C7555k.this.f37455a.m1068w(m1108t.m2380B());
            for (int size = m1068w.size() - 1; size >= 0; size--) {
                m1068w.get(size).mo1120F(c7557a);
            }
            this.f37457b.add(c7558l);
        }
    }

    /* renamed from: d */
    public static void m1218d(C7574v c7574v) {
        new C7555k(c7574v).m1217e();
    }

    /* renamed from: e */
    public final void m1217e() {
        HashSet hashSet = new HashSet();
        this.f37455a.m1079l(new C7556a(new C7157q[this.f37455a.m1071t()], hashSet));
        this.f37455a.m1082i(hashSet);
    }

    public C7555k(C7574v c7574v) {
        this.f37455a = c7574v;
    }

    /* renamed from: c */
    public final int m1219c(C7558l c7558l) {
        return ((C7228p) ((AbstractC7142d) c7558l.mo1109o()).m2427t()).m2075B();
    }
}
