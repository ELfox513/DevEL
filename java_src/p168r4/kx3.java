package p168r4;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: r4.kx3 */
/* loaded from: classes2.dex */
public final class kx3 {

    /* renamed from: d */
    public static final dx3 f26977d = new dx3(0, -9223372036854775807L, null);

    /* renamed from: e */
    public static final dx3 f26978e = new dx3(1, -9223372036854775807L, null);

    /* renamed from: f */
    public static final dx3 f26979f = new dx3(2, -9223372036854775807L, null);

    /* renamed from: g */
    public static final dx3 f26980g = new dx3(3, -9223372036854775807L, null);

    /* renamed from: a */
    public final ExecutorService f26981a = C5979lc.m9720Q("ExoPlayer:Loader:ProgressiveMediaPeriod");

    /* renamed from: b */
    public ex3<? extends fx3> f26982b;

    /* renamed from: c */
    public IOException f26983c;

    public kx3(String str) {
    }

    /* renamed from: e */
    public static dx3 m9848e(boolean z, long j) {
        return new dx3(z ? 1 : 0, j, null);
    }

    /* renamed from: f */
    public final boolean m9847f() {
        return this.f26983c != null;
    }

    /* renamed from: g */
    public final void m9846g() {
        this.f26983c = null;
    }

    /* renamed from: i */
    public final boolean m9844i() {
        return this.f26982b != null;
    }

    /* renamed from: j */
    public final void m9843j() {
        ex3<? extends fx3> ex3Var = this.f26982b;
        C5903ja.m10370e(ex3Var);
        ex3Var.m11665c(false);
    }

    /* renamed from: k */
    public final void m9842k(hx3 hx3Var) {
        ex3<? extends fx3> ex3Var = this.f26982b;
        if (ex3Var != null) {
            ex3Var.m11665c(true);
        }
        this.f26981a.execute(new ix3(hx3Var));
        this.f26981a.shutdown();
    }

    /* renamed from: l */
    public final void m9841l(int i) {
        IOException iOException = this.f26983c;
        if (iOException == null) {
            ex3<? extends fx3> ex3Var = this.f26982b;
            if (ex3Var != null) {
                ex3Var.m11667a(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: h */
    public final <T extends fx3> long m9845h(T t, bx3<T> bx3Var, int i) {
        Looper myLooper = Looper.myLooper();
        C5903ja.m10370e(myLooper);
        this.f26983c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new ex3(this, myLooper, t, bx3Var, i, elapsedRealtime).m11666b(0L);
        return elapsedRealtime;
    }
}
