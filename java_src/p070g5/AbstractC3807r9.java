package p070g5;
/* renamed from: g5.r9 */
/* loaded from: classes2.dex */
public abstract class AbstractC3807r9 extends C3795q9 {

    /* renamed from: c */
    public boolean f16922c;

    /* renamed from: d */
    public final void m18000d() {
        if (!m17998f()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: f */
    public final boolean m17998f() {
        return this.f16922c;
    }

    /* renamed from: g */
    public abstract boolean mo17810g();

    /* renamed from: e */
    public final void m17999e() {
        if (!this.f16922c) {
            mo17810g();
            this.f16900b.m18471g();
            this.f16922c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public AbstractC3807r9(C3616ba c3616ba) {
        super(c3616ba);
        this.f16900b.m18461l();
    }
}
