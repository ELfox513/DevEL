package p168r4;

import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: r4.fz0 */
/* loaded from: classes2.dex */
public final class fz0 implements u50<Object> {

    /* renamed from: a */
    public final /* synthetic */ iz0 f23801a;

    public fz0(iz0 iz0Var) {
        this.f23801a = iz0Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        Executor executor;
        if (!iz0.m10450g(this.f23801a, map)) {
            return;
        }
        executor = this.f23801a.f25643c;
        executor.execute(new Runnable(this) { // from class: r4.ez0

            /* renamed from: a */
            public final fz0 f23212a;

            {
                this.f23212a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                oz0 oz0Var;
                oz0Var = this.f23212a.f23801a.f25644d;
                oz0Var.m8554a();
            }
        });
    }
}
