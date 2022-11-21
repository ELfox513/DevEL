package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import p015b2.InterfaceC0442k;
/* renamed from: z1.d */
/* loaded from: classes.dex */
public class C7538d {

    /* renamed from: a */
    public final C7574v f37405a;

    /* renamed from: b */
    public final ArrayList<C7568s> f37406b;

    /* renamed from: c */
    public final C7539a[] f37407c;

    /* renamed from: z1.d$a */
    /* loaded from: classes.dex */
    public static class C7539a {

        /* renamed from: a */
        public InterfaceC0442k f37408a;

        /* renamed from: b */
        public int f37409b = -1;
    }

    /* renamed from: a */
    public final void m1274a() {
        int size = this.f37406b.size();
        for (int i = 0; i < size; i++) {
            int i2 = this.f37407c[i].f37409b;
            if (i2 != -1) {
                this.f37406b.get(i2).m1160b(this.f37406b.get(i));
            }
        }
    }

    /* renamed from: b */
    public final void m1273b() {
        int size = this.f37406b.size();
        for (int i = 0; i < size; i++) {
            C7539a c7539a = this.f37407c[i];
            BitSet m1141u = this.f37406b.get(i).m1141u();
            if (m1141u.cardinality() > 1) {
                for (int nextSetBit = m1141u.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1141u.nextSetBit(nextSetBit + 1)) {
                    int i2 = nextSetBit;
                    while (i2 != c7539a.f37409b && i2 != -1) {
                        C7539a c7539a2 = this.f37407c[i2];
                        if (c7539a2.f37408a.mo26447c(i)) {
                            break;
                        }
                        c7539a2.f37408a.add(i);
                        i2 = c7539a2.f37409b;
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public C7539a[] m1272c() {
        int size = this.f37406b.size();
        C7540e.m1266f(this.f37405a, this.f37407c, false);
        m1274a();
        for (int i = 0; i < size; i++) {
            this.f37407c[i].f37408a = C7567r.m1178a(size);
        }
        m1273b();
        return this.f37407c;
    }

    public C7538d(C7574v c7574v) {
        this.f37405a = c7574v;
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        this.f37406b = m1078m;
        int size = m1078m.size();
        this.f37407c = new C7539a[size];
        for (int i = 0; i < size; i++) {
            this.f37407c[i] = new C7539a();
        }
    }
}
