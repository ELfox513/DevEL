package p168r4;

import android.content.Context;
import java.io.IOException;
import p185t3.C6748i;
import p211w2.C7171a;
/* renamed from: r4.dl0 */
/* loaded from: classes2.dex */
public final class dl0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f22315a;

    /* renamed from: b */
    public final /* synthetic */ vm0 f22316b;

    public dl0(el0 el0Var, Context context, vm0 vm0Var) {
        this.f22315a = context;
        this.f22316b = vm0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f22316b.m6086e(C7171a.m2243b(this.f22315a));
        } catch (IOException | IllegalStateException | C6748i e) {
            this.f22316b.m6085f(e);
            cm0.m12439d("Exception while getting advertising Id info", e);
        }
    }
}
