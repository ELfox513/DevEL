package p168r4;
/* renamed from: r4.ma */
/* loaded from: classes2.dex */
public final class C6014ma {

    /* renamed from: a */
    public final InterfaceC5940ka f27555a;

    /* renamed from: b */
    public boolean f27556b;

    public C6014ma(InterfaceC5940ka interfaceC5940ka) {
        this.f27555a = interfaceC5940ka;
    }

    /* renamed from: a */
    public final synchronized boolean m9444a() {
        if (this.f27556b) {
            return false;
        }
        this.f27556b = true;
        notifyAll();
        return true;
    }

    /* renamed from: b */
    public final synchronized boolean m9443b() {
        boolean z;
        z = this.f27556b;
        this.f27556b = false;
        return z;
    }

    /* renamed from: c */
    public final synchronized void m9442c() {
        while (!this.f27556b) {
            wait();
        }
    }

    /* renamed from: d */
    public final synchronized void m9441d() {
        boolean z = false;
        while (!this.f27556b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: e */
    public final synchronized boolean m9440e() {
        return this.f27556b;
    }
}
