package p168r4;

import java.lang.Thread;
/* renamed from: r4.uf0 */
/* loaded from: classes2.dex */
public final class uf0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f32263a;

    /* renamed from: b */
    public final /* synthetic */ vf0 f32264b;

    public uf0(vf0 vf0Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f32264b = vf0Var;
        this.f32263a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.f32264b.m6162e(thread, th);
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f32263a;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } catch (Throwable th2) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f32263a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
                throw th2;
            }
        } catch (Throwable unused) {
            cm0.m12440c("AdMob exception reporter failed reporting the exception.");
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f32263a;
            if (uncaughtExceptionHandler3 != null) {
                uncaughtExceptionHandler3.uncaughtException(thread, th);
            }
        }
    }
}
