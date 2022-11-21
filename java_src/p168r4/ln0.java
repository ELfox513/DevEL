package p168r4;
/* renamed from: r4.ln0 */
/* loaded from: classes2.dex */
public final class ln0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f27274a;

    /* renamed from: b */
    public final /* synthetic */ String f27275b;

    /* renamed from: d */
    public final /* synthetic */ tn0 f27276d;

    public ln0(tn0 tn0Var, String str, String str2) {
        this.f27276d = tn0Var;
        this.f27274a = str;
        this.f27275b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        un0 un0Var;
        un0 un0Var2;
        un0Var = this.f27276d.f31905C;
        if (un0Var != null) {
            un0Var2 = this.f27276d.f31905C;
            un0Var2.mo6475h(this.f27274a, this.f27275b);
        }
    }
}
