package p168r4;

import java.lang.ref.WeakReference;
/* renamed from: r4.z91 */
/* loaded from: classes2.dex */
public final class z91 implements Runnable {

    /* renamed from: a */
    public final WeakReference<aa1> f34402a;

    public /* synthetic */ z91(aa1 aa1Var, y91 y91Var) {
        this.f34402a = new WeakReference<>(aa1Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        aa1 aa1Var = this.f34402a.get();
        if (aa1Var != null) {
            aa1Var.m4757S0(x91.f33522a);
        }
    }
}
