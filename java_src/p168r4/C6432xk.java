package p168r4;
/* renamed from: r4.xk */
/* loaded from: classes2.dex */
public final class C6432xk {

    /* renamed from: a */
    public boolean f33619a;

    /* renamed from: a */
    public final synchronized boolean m5292a() {
        if (this.f33619a) {
            return false;
        }
        this.f33619a = true;
        notifyAll();
        return true;
    }

    /* renamed from: b */
    public final synchronized boolean m5291b() {
        boolean z;
        z = this.f33619a;
        this.f33619a = false;
        return z;
    }

    /* renamed from: c */
    public final synchronized void m5290c() {
        while (!this.f33619a) {
            wait();
        }
    }
}
