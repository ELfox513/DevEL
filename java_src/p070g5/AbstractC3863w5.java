package p070g5;
/* renamed from: g5.w5 */
/* loaded from: classes2.dex */
public abstract class AbstractC3863w5 extends C3851v5 {

    /* renamed from: b */
    public boolean f17028b;

    /* renamed from: d */
    public void mo17923d() {
    }

    /* renamed from: e */
    public abstract boolean mo17838e();

    /* renamed from: f */
    public final void m17922f() {
        if (!m17919i()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: i */
    public final boolean m17919i() {
        return this.f17028b;
    }

    /* renamed from: g */
    public final void m17921g() {
        if (!this.f17028b) {
            if (!mo17838e()) {
                this.f17008a.m18532b();
                this.f17028b = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: h */
    public final void m17920h() {
        if (!this.f17028b) {
            mo17923d();
            this.f17008a.m18532b();
            this.f17028b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public AbstractC3863w5(C3611b5 c3611b5) {
        super(c3611b5);
        this.f17008a.m18530d();
    }
}
