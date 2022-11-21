package p210w1;

import p015b2.C0438g;
import p015b2.C0441j;
/* renamed from: w1.u */
/* loaded from: classes.dex */
public final class C7165u {

    /* renamed from: a */
    public final C7140c f36228a;

    /* renamed from: b */
    public final int f36229b;

    /* renamed from: c */
    public C0441j[] f36230c;

    /* renamed from: d */
    public C0441j f36231d;

    /* renamed from: b */
    public C7140c m2308b() {
        return this.f36228a;
    }

    /* renamed from: c */
    public int m2307c() {
        return this.f36229b;
    }

    /* renamed from: a */
    public final void m2309a() {
        int m26450z = this.f36228a.m26450z();
        C0441j[] c0441jArr = new C0441j[m26450z];
        C0441j c0441j = new C0441j(10);
        int size = this.f36228a.size();
        for (int i = 0; i < size; i++) {
            C7138b m2438F = this.f36228a.m2438F(i);
            int mo2449a = m2438F.mo2449a();
            C0441j m2442h = m2438F.m2442h();
            int size2 = m2442h.size();
            if (size2 == 0) {
                c0441j.m26457x(mo2449a);
            } else {
                for (int i2 = 0; i2 < size2; i2++) {
                    int m26470B = m2442h.m26470B(i2);
                    C0441j c0441j2 = c0441jArr[m26470B];
                    if (c0441j2 == null) {
                        c0441j2 = new C0441j(10);
                        c0441jArr[m26470B] = c0441j2;
                    }
                    c0441j2.m26457x(mo2449a);
                }
            }
        }
        for (int i3 = 0; i3 < m26450z; i3++) {
            C0441j c0441j3 = c0441jArr[i3];
            if (c0441j3 != null) {
                c0441j3.m26459N();
                c0441j3.setImmutable();
            }
        }
        c0441j.m26459N();
        c0441j.setImmutable();
        int i4 = this.f36229b;
        if (c0441jArr[i4] == null) {
            c0441jArr[i4] = C0441j.f1530k;
        }
        this.f36230c = c0441jArr;
        this.f36231d = c0441j;
    }

    /* renamed from: d */
    public C0441j m2306d(int i) {
        if (this.f36231d == null) {
            m2309a();
        }
        C0441j c0441j = this.f36230c[i];
        if (c0441j != null) {
            return c0441j;
        }
        throw new RuntimeException("no such block: " + C0438g.m26478g(i));
    }

    public C7165u(C7140c c7140c, int i) {
        if (c7140c != null) {
            if (i >= 0) {
                this.f36228a = c7140c;
                this.f36229b = i;
                this.f36230c = null;
                this.f36231d = null;
                return;
            }
            throw new IllegalArgumentException("firstLabel < 0");
        }
        throw new NullPointerException("blocks == null");
    }
}
