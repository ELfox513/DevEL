package p168r4;

import p235z2.C7601t;
/* renamed from: r4.ll0 */
/* loaded from: classes2.dex */
public final class ll0 {

    /* renamed from: a */
    public final Object f27250a = new Object();

    /* renamed from: c */
    public volatile int f27252c = 1;

    /* renamed from: b */
    public volatile long f27251b = 0;

    public /* synthetic */ ll0(ml0 ml0Var) {
    }

    /* renamed from: a */
    public final void m9636a() {
        long mo24763a = C7601t.m932k().mo24763a();
        synchronized (this.f27250a) {
            if (this.f27252c == 3) {
                if (this.f27251b + ((Long) C5592av.m12935c().m8098c(C6225rz.f31062l4)).longValue() <= mo24763a) {
                    this.f27252c = 1;
                }
            }
        }
        long mo24763a2 = C7601t.m932k().mo24763a();
        synchronized (this.f27250a) {
            if (this.f27252c != 2) {
                return;
            }
            this.f27252c = 3;
            if (this.f27252c == 3) {
                this.f27251b = mo24763a2;
            }
        }
    }
}
