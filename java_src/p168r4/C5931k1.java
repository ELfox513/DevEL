package p168r4;
/* renamed from: r4.k1 */
/* loaded from: classes2.dex */
public final class C5931k1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public final long f26206i;

    public C5931k1(C6338v0 c6338v0, String str, String str2, za4 za4Var, long j, int i, int i2) {
        super(c6338v0, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9", "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM=", za4Var, i, 25);
        this.f26206i = j;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        long longValue = ((Long) this.f22748f.invoke(null, new Object[0])).longValue();
        synchronized (this.f22747e) {
            this.f22747e.m4377Y(longValue);
            long j = this.f26206i;
            if (j != 0) {
                this.f22747e.m4360p0(longValue - j);
                this.f22747e.m4357s0(this.f26206i);
            }
        }
    }
}
