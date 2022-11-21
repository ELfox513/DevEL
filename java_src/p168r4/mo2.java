package p168r4;

import p026c4.InterfaceC1045f;
/* renamed from: r4.mo2 */
/* loaded from: classes2.dex */
public final class mo2 {

    /* renamed from: a */
    public final InterfaceC1045f f27832a;

    /* renamed from: b */
    public final Object f27833b = new Object();

    /* renamed from: d */
    public volatile int f27835d = 1;

    /* renamed from: c */
    public volatile long f27834c = 0;

    public mo2(InterfaceC1045f interfaceC1045f) {
        this.f27832a = interfaceC1045f;
    }

    /* renamed from: a */
    public final void m9308a(boolean z) {
        if (z) {
            m9303f(1, 2);
        } else {
            m9303f(2, 1);
        }
    }

    /* renamed from: d */
    public final void m9305d() {
        m9303f(2, 3);
    }

    /* renamed from: b */
    public final boolean m9307b() {
        boolean z;
        synchronized (this.f27833b) {
            m9304e();
            if (this.f27835d == 2) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m9306c() {
        boolean z;
        synchronized (this.f27833b) {
            m9304e();
            if (this.f27835d == 3) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: e */
    public final void m9304e() {
        long mo24763a = this.f27832a.mo24763a();
        synchronized (this.f27833b) {
            if (this.f27835d == 3) {
                if (this.f27834c + ((Long) C5592av.m12935c().m8098c(C6225rz.f31062l4)).longValue() <= mo24763a) {
                    this.f27835d = 1;
                }
            }
        }
    }

    /* renamed from: f */
    public final void m9303f(int i, int i2) {
        m9304e();
        long mo24763a = this.f27832a.mo24763a();
        synchronized (this.f27833b) {
            if (this.f27835d != i) {
                return;
            }
            this.f27835d = i2;
            if (this.f27835d == 3) {
                this.f27834c = mo24763a;
            }
        }
    }
}
