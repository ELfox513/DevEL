package p070g5;
/* renamed from: g5.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3658f4 extends C3645e3 {

    /* renamed from: b */
    public boolean f16472b;

    /* renamed from: d */
    public final void m18384d() {
        if (!m18381h()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: g */
    public void mo18263g() {
    }

    /* renamed from: h */
    public final boolean m18381h() {
        return this.f16472b;
    }

    /* renamed from: i */
    public abstract boolean mo17880i();

    /* renamed from: e */
    public final void m18383e() {
        if (!this.f16472b) {
            if (!mo17880i()) {
                this.f17008a.m18532b();
                this.f16472b = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: f */
    public final void m18382f() {
        if (!this.f16472b) {
            mo18263g();
            this.f17008a.m18532b();
            this.f16472b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public AbstractC3658f4(C3611b5 c3611b5) {
        super(c3611b5);
        this.f17008a.m18530d();
    }
}
