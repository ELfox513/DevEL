package p168r4;
/* renamed from: r4.w1 */
/* loaded from: classes2.dex */
public final class C6376w1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public final StackTraceElement[] f33005i;

    public C6376w1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(c6338v0, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t", "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04=", za4Var, i, 45);
        this.f33005i = stackTraceElementArr;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        StackTraceElement[] stackTraceElementArr = this.f33005i;
        if (stackTraceElementArr != null) {
            int i = 1;
            C6041n0 c6041n0 = new C6041n0((String) this.f22748f.invoke(null, stackTraceElementArr));
            synchronized (this.f22747e) {
                this.f22747e.m4348z(c6041n0.f28043b.longValue());
                if (c6041n0.f28044c.booleanValue()) {
                    za4 za4Var = this.f22747e;
                    if (true != c6041n0.f28045d.booleanValue()) {
                        i = 2;
                    }
                    za4Var.m4374b0(i);
                } else {
                    this.f22747e.m4374b0(3);
                }
            }
        }
    }
}
