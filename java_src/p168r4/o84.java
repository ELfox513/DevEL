package p168r4;
/* renamed from: r4.o84 */
/* loaded from: classes2.dex */
public final class o84 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f28923a;

    /* renamed from: b */
    public final /* synthetic */ long f28924b;

    /* renamed from: d */
    public final /* synthetic */ q84 f28925d;

    public o84(q84 q84Var, String str, long j) {
        this.f28925d = q84Var;
        this.f28923a = str;
        this.f28924b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b94 b94Var;
        b94 b94Var2;
        b94Var = this.f28925d.f30041a;
        b94Var.m12838a(this.f28923a, this.f28924b);
        b94Var2 = this.f28925d.f30041a;
        b94Var2.m12837b(this.f28925d.toString());
    }
}
