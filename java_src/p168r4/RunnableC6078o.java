package p168r4;

import android.os.ConditionVariable;
/* renamed from: r4.o */
/* loaded from: classes2.dex */
public final class RunnableC6078o implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6115p f28755a;

    public RunnableC6078o(C6115p c6115p) {
        this.f28755a = c6115p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        C6338v0 c6338v0;
        ConditionVariable conditionVariable2;
        if (this.f28755a.f29290b != null) {
            return;
        }
        conditionVariable = C6115p.f29286c;
        synchronized (conditionVariable) {
            if (this.f28755a.f29290b != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = C6225rz.f30800F1.m6673e().booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    c6338v0 = this.f28755a.f29289a;
                    C6115p.f29287d = new lz2(c6338v0.f32515a, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            this.f28755a.f29290b = Boolean.valueOf(z2);
            conditionVariable2 = C6115p.f29286c;
            conditionVariable2.open();
        }
    }
}
