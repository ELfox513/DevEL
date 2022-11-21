package p102k1;

import p102k1.C4409f;
import p111l1.C4559f;
/* renamed from: k1.p */
/* loaded from: classes.dex */
public final class C4431p implements Comparable<C4431p> {

    /* renamed from: a */
    public final C4409f f18411a;

    /* renamed from: b */
    public final int f18412b;

    /* renamed from: d */
    public final int f18413d;

    /* renamed from: k */
    public final int f18414k;

    /* renamed from: d */
    public int m16509d() {
        return this.f18412b;
    }

    /* renamed from: f */
    public int m16508f() {
        return this.f18414k;
    }

    /* renamed from: h */
    public int m16507h() {
        return this.f18413d;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4431p c4431p) {
        int i = this.f18412b;
        int i2 = c4431p.f18412b;
        if (i != i2) {
            return C4559f.m16007a(i, i2);
        }
        int i3 = this.f18414k;
        int i4 = c4431p.f18414k;
        if (i3 != i4) {
            return C4559f.m16007a(i3, i4);
        }
        return C4559f.m16007a(this.f18413d, c4431p.f18413d);
    }

    /* renamed from: j */
    public void m16506j(C4409f.C4416g c4416g) {
        c4416g.m16583c0(this.f18412b);
        c4416g.m16583c0(this.f18413d);
        c4416g.writeInt(this.f18414k);
    }

    public String toString() {
        if (this.f18411a == null) {
            return this.f18412b + " " + this.f18413d + " " + this.f18414k;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18411a.m16618w().get(this.f18412b));
        sb.append(".");
        sb.append(this.f18411a.m16619v().get(this.f18414k));
        C4409f c4409f = this.f18411a;
        sb.append(c4409f.m16620u(c4409f.m16623r().get(this.f18413d).m16500d()));
        return sb.toString();
    }

    public C4431p(C4409f c4409f, int i, int i2, int i3) {
        this.f18411a = c4409f;
        this.f18412b = i;
        this.f18413d = i2;
        this.f18414k = i3;
    }
}
