package p102k1;

import p102k1.C4409f;
/* renamed from: k1.a */
/* loaded from: classes.dex */
public final class C4400a implements Comparable<C4400a> {

    /* renamed from: a */
    public final C4409f f18323a;

    /* renamed from: b */
    public final byte f18324b;

    /* renamed from: d */
    public final C4423j f18325d;

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4400a c4400a) {
        return this.f18325d.compareTo(c4400a.f18325d);
    }

    /* renamed from: d */
    public C4425l m16680d() {
        return new C4425l(this.f18325d, 29);
    }

    /* renamed from: h */
    public byte m16678h() {
        return this.f18324b;
    }

    /* renamed from: j */
    public void m16677j(C4409f.C4416g c4416g) {
        c4416g.writeByte(this.f18324b);
        this.f18325d.m16560f(c4416g);
    }

    public String toString() {
        if (this.f18323a == null) {
            return ((int) this.f18324b) + " " + m16679f();
        }
        return ((int) this.f18324b) + " " + this.f18323a.m16618w().get(m16679f());
    }

    public C4400a(C4409f c4409f, byte b, C4423j c4423j) {
        this.f18323a = c4409f;
        this.f18324b = b;
        this.f18325d = c4423j;
    }

    /* renamed from: f */
    public int m16679f() {
        C4425l m16680d = m16680d();
        m16680d.m16549d();
        return m16680d.m16551b();
    }
}
