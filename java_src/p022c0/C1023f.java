package p022c0;
/* renamed from: c0.f */
/* loaded from: classes.dex */
public class C1023f<F, S> {

    /* renamed from: a */
    public final F f2923a;

    /* renamed from: b */
    public final S f2924b;

    /* renamed from: a */
    public static <A, B> C1023f<A, B> m24811a(A a, B b) {
        return new C1023f<>(a, b);
    }

    public int hashCode() {
        F f = this.f2923a;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f2924b;
        return hashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f2923a + " " + this.f2924b + "}";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1023f)) {
            return false;
        }
        C1023f c1023f = (C1023f) obj;
        if (!C1022e.m24813a(c1023f.f2923a, this.f2923a) || !C1022e.m24813a(c1023f.f2924b, this.f2924b)) {
            return false;
        }
        return true;
    }

    public C1023f(F f, S s) {
        this.f2923a = f;
        this.f2924b = s;
    }
}
