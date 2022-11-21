package p168r4;
/* renamed from: r4.v63 */
/* loaded from: classes2.dex */
public final class v63 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ h83 f32618a;

    /* renamed from: b */
    public final /* synthetic */ int f32619b;

    /* renamed from: d */
    public final /* synthetic */ x63 f32620d;

    public v63(x63 x63Var, h83 h83Var, int i) {
        this.f32620d = x63Var;
        this.f32618a = h83Var;
        this.f32619b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f32618a.isCancelled()) {
                this.f32620d.f33490w = null;
                this.f32620d.cancel(false);
            } else {
                this.f32620d.m5467Q(this.f32619b, this.f32618a);
            }
        } finally {
            x63.m5462V(this.f32620d, null);
        }
    }
}
