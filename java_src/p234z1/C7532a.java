package p234z1;

import p015b2.C0441j;
import p210w1.C7157q;
/* renamed from: z1.a */
/* loaded from: classes.dex */
public class C7532a extends AbstractC7565p {

    /* renamed from: a */
    public final C0441j f37392a;

    /* renamed from: b */
    public int f37393b;

    @Override // p234z1.AbstractC7565p
    /* renamed from: a */
    public int mo1035a() {
        return this.f37393b;
    }

    @Override // p234z1.AbstractC7565p
    /* renamed from: b */
    public C7157q mo1034b(C7157q c7157q) {
        int i;
        if (c7157q == null) {
            return null;
        }
        try {
            i = this.f37392a.m26470B(c7157q.m2380B());
        } catch (IndexOutOfBoundsException unused) {
            i = -1;
        }
        if (i >= 0) {
            return c7157q.m2364S(i);
        }
        throw new RuntimeException("no mapping specified for register");
    }

    /* renamed from: e */
    public void mo1243e(int i, int i2, int i3) {
        if (i >= this.f37392a.size()) {
            for (int size = i - this.f37392a.size(); size >= 0; size--) {
                this.f37392a.m26457x(-1);
            }
        }
        this.f37392a.m26461L(i, i2);
        int i4 = i2 + i3;
        if (this.f37393b < i4) {
            this.f37393b = i4;
        }
    }

    /* renamed from: f */
    public int m1287f(int i) {
        if (i >= this.f37392a.size()) {
            return -1;
        }
        return this.f37392a.m26470B(i);
    }

    public C7532a(int i) {
        this.f37392a = new C0441j(i);
    }
}
