package p168r4;
/* renamed from: r4.nn0 */
/* loaded from: classes2.dex */
public final class nn0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f28365a;

    /* renamed from: b */
    public final /* synthetic */ int f28366b;

    /* renamed from: d */
    public final /* synthetic */ tn0 f28367d;

    public nn0(tn0 tn0Var, int i, int i2) {
        this.f28367d = tn0Var;
        this.f28365a = i;
        this.f28366b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        un0 un0Var;
        un0 un0Var2;
        un0Var = this.f28367d.f31905C;
        if (un0Var != null) {
            un0Var2 = this.f28367d.f31905C;
            un0Var2.mo6479d(this.f28365a, this.f28366b);
        }
    }
}
