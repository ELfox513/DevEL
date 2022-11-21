package p102k1;

import p102k1.C4409f;
import p111l1.C4559f;
/* renamed from: k1.m */
/* loaded from: classes.dex */
public final class C4426m implements Comparable<C4426m> {

    /* renamed from: a */
    public final C4409f f18390a;

    /* renamed from: b */
    public final int f18391b;

    /* renamed from: d */
    public final int f18392d;

    /* renamed from: k */
    public final int f18393k;

    /* renamed from: d */
    public int m16528d() {
        return this.f18391b;
    }

    /* renamed from: f */
    public int m16527f() {
        return this.f18393k;
    }

    /* renamed from: h */
    public int m16526h() {
        return this.f18392d;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4426m c4426m) {
        int i = this.f18391b;
        int i2 = c4426m.f18391b;
        if (i != i2) {
            return C4559f.m16007a(i, i2);
        }
        int i3 = this.f18393k;
        int i4 = c4426m.f18393k;
        if (i3 != i4) {
            return C4559f.m16007a(i3, i4);
        }
        return C4559f.m16007a(this.f18392d, c4426m.f18392d);
    }

    /* renamed from: j */
    public void m16525j(C4409f.C4416g c4416g) {
        c4416g.m16583c0(this.f18391b);
        c4416g.m16583c0(this.f18392d);
        c4416g.writeInt(this.f18393k);
    }

    public String toString() {
        if (this.f18390a == null) {
            return this.f18391b + " " + this.f18392d + " " + this.f18393k;
        }
        return this.f18390a.m16618w().get(this.f18392d) + "." + this.f18390a.m16619v().get(this.f18393k);
    }

    public C4426m(C4409f c4409f, int i, int i2, int i3) {
        this.f18390a = c4409f;
        this.f18391b = i;
        this.f18392d = i2;
        this.f18393k = i3;
    }
}
