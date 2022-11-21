package p168r4;
/* renamed from: r4.cb */
/* loaded from: classes2.dex */
public final class C5645cb<T> {

    /* renamed from: a */
    public final T f21459a;

    /* renamed from: b */
    public C6274ta f21460b = new C6274ta();

    /* renamed from: c */
    public boolean f21461c;

    /* renamed from: d */
    public boolean f21462d;

    public C5645cb(T t) {
        this.f21459a = t;
    }

    /* renamed from: a */
    public final void m12502a(InterfaceC5609bb<T> interfaceC5609bb) {
        this.f21462d = true;
        if (this.f21461c) {
            interfaceC5609bb.mo7619a(this.f21459a, this.f21460b.m6893b());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5645cb.class != obj.getClass()) {
            return false;
        }
        return this.f21459a.equals(((C5645cb) obj).f21459a);
    }

    public final int hashCode() {
        return this.f21459a.hashCode();
    }

    /* renamed from: b */
    public final void m12501b(int i, InterfaceC5572ab<T> interfaceC5572ab) {
        if (!this.f21462d) {
            if (i != -1) {
                this.f21460b.m6894a(i);
            }
            this.f21461c = true;
            interfaceC5572ab.mo4462a(this.f21459a);
        }
    }

    /* renamed from: c */
    public final void m12500c(InterfaceC5609bb<T> interfaceC5609bb) {
        if (!this.f21462d && this.f21461c) {
            C6348va m6893b = this.f21460b.m6893b();
            this.f21460b = new C6274ta();
            this.f21461c = false;
            interfaceC5609bb.mo7619a(this.f21459a, m6893b);
        }
    }
}
