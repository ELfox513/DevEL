package p102k1;

import p102k1.C4409f;
import p111l1.C4559f;
/* renamed from: k1.r */
/* loaded from: classes.dex */
public final class C4433r implements Comparable<C4433r> {

    /* renamed from: a */
    public final C4409f f18415a;

    /* renamed from: b */
    public final int f18416b;

    /* renamed from: d */
    public final int f18417d;

    /* renamed from: k */
    public final int f18418k;

    /* renamed from: d */
    public int m16500d() {
        return this.f18418k;
    }

    /* renamed from: f */
    public int m16499f() {
        return this.f18417d;
    }

    /* renamed from: h */
    public int m16498h() {
        return this.f18416b;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4433r c4433r) {
        int i = this.f18417d;
        int i2 = c4433r.f18417d;
        if (i != i2) {
            return C4559f.m16007a(i, i2);
        }
        return C4559f.m16007a(this.f18418k, c4433r.f18418k);
    }

    /* renamed from: j */
    public void m16497j(C4409f.C4416g c4416g) {
        c4416g.writeInt(this.f18416b);
        c4416g.writeInt(this.f18417d);
        c4416g.writeInt(this.f18418k);
    }

    public String toString() {
        if (this.f18415a == null) {
            return this.f18416b + " " + this.f18417d + " " + this.f18418k;
        }
        return this.f18415a.m16619v().get(this.f18416b) + ": " + this.f18415a.m16618w().get(this.f18417d) + " " + this.f18415a.m16620u(this.f18418k);
    }

    public C4433r(C4409f c4409f, int i, int i2, int i3) {
        this.f18415a = c4409f;
        this.f18416b = i;
        this.f18417d = i2;
        this.f18418k = i3;
    }
}
