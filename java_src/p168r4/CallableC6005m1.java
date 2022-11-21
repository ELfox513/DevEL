package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.m1 */
/* loaded from: classes2.dex */
public final class CallableC6005m1 implements Callable {

    /* renamed from: a */
    public final C6338v0 f27441a;

    /* renamed from: b */
    public final za4 f27442b;

    public CallableC6005m1(C6338v0 c6338v0, za4 za4Var) {
        this.f27441a = c6338v0;
        this.f27442b = za4Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (this.f27441a.m6271o() != null) {
            this.f27441a.m6271o().get();
        }
        pb4 m6272n = this.f27441a.m6272n();
        if (m6272n != null) {
            try {
                synchronized (this.f27442b) {
                    za4 za4Var = this.f27442b;
                    byte[] mo6490t = m6272n.mo6490t();
                    za4Var.m9612u(mo6490t, 0, mo6490t.length, bm3.m12746a());
                }
                return null;
            } catch (NullPointerException | bn3 unused) {
                return null;
            }
        }
        return null;
    }
}
