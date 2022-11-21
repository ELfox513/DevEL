package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import p234z1.C7538d;
import p234z1.C7568s;
/* renamed from: z1.e */
/* loaded from: classes.dex */
public final class C7540e {

    /* renamed from: a */
    public final boolean f37410a;

    /* renamed from: b */
    public final C7574v f37411b;

    /* renamed from: c */
    public final ArrayList<C7568s> f37412c;

    /* renamed from: d */
    public final C7542b[] f37413d;

    /* renamed from: e */
    public final ArrayList<C7568s> f37414e;

    /* renamed from: f */
    public final C7538d.C7539a[] f37415f;

    /* renamed from: z1.e$b */
    /* loaded from: classes.dex */
    public static final class C7542b {

        /* renamed from: a */
        public int f37416a;

        /* renamed from: b */
        public C7568s f37417b;

        /* renamed from: c */
        public C7568s f37418c;

        /* renamed from: d */
        public C7568s f37419d;

        /* renamed from: e */
        public ArrayList<C7568s> f37420e = new ArrayList<>();
    }

    /* renamed from: z1.e$c */
    /* loaded from: classes.dex */
    public class C7543c implements C7568s.InterfaceC7570b {

        /* renamed from: a */
        public int f37421a;

        public C7543c() {
            this.f37421a = 0;
        }

        @Override // p234z1.C7568s.InterfaceC7570b
        /* renamed from: a */
        public void mo1046a(C7568s c7568s, C7568s c7568s2) {
            C7542b c7542b = new C7542b();
            int i = this.f37421a + 1;
            this.f37421a = i;
            c7542b.f37416a = i;
            c7542b.f37418c = c7568s;
            c7542b.f37417b = c7568s2;
            C7540e.this.f37414e.add(c7568s);
            C7540e.this.f37413d[c7568s.m1146p()] = c7542b;
        }
    }

    /* renamed from: f */
    public static C7540e m1266f(C7574v c7574v, C7538d.C7539a[] c7539aArr, boolean z) {
        C7540e c7540e = new C7540e(c7574v, c7539aArr, z);
        c7540e.m1265g();
        return c7540e;
    }

    /* renamed from: c */
    public final void m1269c(C7568s c7568s) {
        if (this.f37413d[this.f37413d[c7568s.m1146p()].f37419d.m1146p()].f37419d != null) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            arrayList.add(c7568s);
            while (!arrayList.isEmpty()) {
                int size = arrayList.size() - 1;
                C7542b c7542b = this.f37413d[((C7568s) arrayList.get(size)).m1146p()];
                C7568s c7568s2 = c7542b.f37419d;
                C7542b c7542b2 = this.f37413d[c7568s2.m1146p()];
                if (hashSet.add(c7568s2) && c7542b2.f37419d != null) {
                    arrayList.add(c7568s2);
                } else {
                    arrayList.remove(size);
                    if (c7542b2.f37419d != null) {
                        C7568s c7568s3 = c7542b2.f37418c;
                        if (this.f37413d[c7568s3.m1146p()].f37416a < this.f37413d[c7542b.f37418c.m1146p()].f37416a) {
                            c7542b.f37418c = c7568s3;
                        }
                        c7542b.f37419d = c7542b2.f37419d;
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public final C7568s m1268d(C7568s c7568s) {
        C7542b c7542b = this.f37413d[c7568s.m1146p()];
        if (c7542b.f37419d == null) {
            return c7568s;
        }
        m1269c(c7568s);
        return c7542b.f37418c;
    }

    /* renamed from: e */
    public final BitSet m1267e(C7568s c7568s) {
        if (this.f37410a) {
            return c7568s.m1173C();
        }
        return c7568s.m1141u();
    }

    /* renamed from: g */
    public final void m1265g() {
        C7568s m1076o;
        int i;
        int i2;
        if (this.f37410a) {
            m1076o = this.f37411b.m1074q();
        } else {
            m1076o = this.f37411b.m1076o();
        }
        if (m1076o != null) {
            this.f37414e.add(m1076o);
            this.f37415f[m1076o.m1146p()].f37409b = m1076o.m1146p();
        }
        this.f37411b.m1081j(this.f37410a, new C7543c());
        int size = this.f37414e.size() - 1;
        int i3 = size;
        while (true) {
            if (i3 < 2) {
                break;
            }
            C7568s c7568s = this.f37414e.get(i3);
            C7542b c7542b = this.f37413d[c7568s.m1146p()];
            BitSet m1267e = m1267e(c7568s);
            for (int nextSetBit = m1267e.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1267e.nextSetBit(nextSetBit + 1)) {
                C7568s c7568s2 = this.f37412c.get(nextSetBit);
                if (this.f37413d[c7568s2.m1146p()] != null && (i2 = this.f37413d[m1268d(c7568s2).m1146p()].f37416a) < c7542b.f37416a) {
                    c7542b.f37416a = i2;
                }
            }
            this.f37413d[this.f37414e.get(c7542b.f37416a).m1146p()].f37420e.add(c7568s);
            C7568s c7568s3 = c7542b.f37417b;
            c7542b.f37419d = c7568s3;
            ArrayList<C7568s> arrayList = this.f37413d[c7568s3.m1146p()].f37420e;
            while (!arrayList.isEmpty()) {
                C7568s remove = arrayList.remove(arrayList.size() - 1);
                C7568s m1268d = m1268d(remove);
                if (this.f37413d[m1268d.m1146p()].f37416a < this.f37413d[remove.m1146p()].f37416a) {
                    this.f37415f[remove.m1146p()].f37409b = m1268d.m1146p();
                } else {
                    this.f37415f[remove.m1146p()].f37409b = c7542b.f37417b.m1146p();
                }
            }
            i3--;
        }
        for (i = 2; i <= size; i++) {
            C7568s c7568s4 = this.f37414e.get(i);
            if (this.f37415f[c7568s4.m1146p()].f37409b != this.f37414e.get(this.f37413d[c7568s4.m1146p()].f37416a).m1146p()) {
                C7538d.C7539a c7539a = this.f37415f[c7568s4.m1146p()];
                C7538d.C7539a[] c7539aArr = this.f37415f;
                c7539a.f37409b = c7539aArr[c7539aArr[c7568s4.m1146p()].f37409b].f37409b;
            }
        }
    }

    public C7540e(C7574v c7574v, C7538d.C7539a[] c7539aArr, boolean z) {
        this.f37411b = c7574v;
        this.f37415f = c7539aArr;
        this.f37410a = z;
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        this.f37412c = m1078m;
        this.f37413d = new C7542b[m1078m.size() + 2];
        this.f37414e = new ArrayList<>();
    }
}
