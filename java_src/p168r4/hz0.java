package p168r4;

import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: r4.hz0 */
/* loaded from: classes2.dex */
public final class hz0 implements u50<Object> {

    /* renamed from: a */
    public final /* synthetic */ iz0 f24907a;

    public hz0(iz0 iz0Var) {
        this.f24907a = iz0Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        Executor executor;
        if (!iz0.m10450g(this.f24907a, map)) {
            return;
        }
        executor = this.f24907a.f25643c;
        executor.execute(new Runnable(this) { // from class: r4.gz0

            /* renamed from: a */
            public final hz0 f24373a;

            {
                this.f24373a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                oz0 oz0Var;
                oz0Var = this.f24373a.f24907a.f25644d;
                oz0Var.m8553b();
            }
        });
    }
}
