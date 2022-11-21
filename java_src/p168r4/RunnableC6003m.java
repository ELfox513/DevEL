package p168r4;
/* renamed from: r4.m */
/* loaded from: classes2.dex */
public final class RunnableC6003m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6040n f27435a;

    public RunnableC6003m(C6040n c6040n) {
        this.f27435a = c6040n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        hx2 hx2Var;
        Object obj2;
        obj = this.f27435a.f28039v;
        synchronized (obj) {
            z = this.f27435a.f28040w;
            if (!z) {
                this.f27435a.f28040w = true;
                try {
                    C6040n.m9234p(this.f27435a);
                } catch (Exception e) {
                    hx2Var = this.f27435a.f28034q;
                    hx2Var.m10766c(2023, -1L, e);
                }
                obj2 = this.f27435a.f28039v;
                synchronized (obj2) {
                    this.f27435a.f28040w = false;
                }
            }
        }
    }
}
