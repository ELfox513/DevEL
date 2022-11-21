package p102k1;

import p102k1.C4409f;
import p111l1.C4559f;
/* renamed from: k1.b */
/* loaded from: classes.dex */
public class C4401b implements Comparable<C4401b> {

    /* renamed from: a */
    public final C4409f f18326a;

    /* renamed from: b */
    public final int f18327b;

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4401b c4401b) {
        return C4559f.m16007a(this.f18327b, c4401b.f18327b);
    }

    /* renamed from: d */
    public int m16675d() {
        return this.f18327b;
    }

    /* renamed from: f */
    public void m16674f(C4409f.C4416g c4416g) {
        c4416g.writeInt(this.f18327b);
    }

    public String toString() {
        C4409f c4409f = this.f18326a;
        if (c4409f == null) {
            return String.valueOf(this.f18327b);
        }
        return c4409f.m16623r().get(this.f18327b).toString();
    }

    public C4401b(C4409f c4409f, int i) {
        this.f18326a = c4409f;
        this.f18327b = i;
    }
}
