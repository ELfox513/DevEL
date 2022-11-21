package p168r4;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p168r4.fx3;
@SuppressLint({"HandlerLeak"})
/* renamed from: r4.ex3 */
/* loaded from: classes2.dex */
public final class ex3<T extends fx3> extends Handler implements Runnable {

    /* renamed from: a */
    public final T f23200a;

    /* renamed from: b */
    public final long f23201b;

    /* renamed from: d */
    public bx3<T> f23202d;

    /* renamed from: k */
    public IOException f23203k;

    /* renamed from: p */
    public int f23204p;

    /* renamed from: q */
    public Thread f23205q;

    /* renamed from: r */
    public boolean f23206r;

    /* renamed from: s */
    public volatile boolean f23207s;

    /* renamed from: t */
    public final /* synthetic */ kx3 f23208t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ex3(kx3 kx3Var, Looper looper, T t, bx3<T> bx3Var, int i, long j) {
        super(looper);
        this.f23208t = kx3Var;
        this.f23200a = t;
        this.f23202d = bx3Var;
        this.f23201b = j;
    }

    /* renamed from: a */
    public final void m11667a(int i) {
        IOException iOException = this.f23203k;
        if (iOException != null && this.f23204p > i) {
            throw iOException;
        }
    }

    /* renamed from: d */
    public final void m11664d() {
        ExecutorService executorService;
        ex3 ex3Var;
        this.f23203k = null;
        executorService = this.f23208t.f26981a;
        ex3Var = this.f23208t.f26982b;
        ex3Var.getClass();
        executorService.execute(ex3Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        String str;
        try {
            synchronized (this) {
                z = !this.f23206r;
                this.f23205q = Thread.currentThread();
            }
            if (z) {
                String simpleName = this.f23200a.getClass().getSimpleName();
                if (simpleName.length() != 0) {
                    str = "load:".concat(simpleName);
                } else {
                    str = new String("load:");
                }
                C5795gc.m11246a(str);
                try {
                    this.f23200a.mo11333f();
                    C5795gc.m11245b();
                } catch (Throwable th) {
                    C5795gc.m11245b();
                    throw th;
                }
            }
            synchronized (this) {
                this.f23205q = null;
                Thread.interrupted();
            }
            if (!this.f23207s) {
                sendEmptyMessage(1);
            }
        } catch (IOException e) {
            if (!this.f23207s) {
                obtainMessage(2, e).sendToTarget();
            }
        } catch (Error e2) {
            if (!this.f23207s) {
                C5720eb.m11832b("LoadTask", "Unexpected error loading stream", e2);
                obtainMessage(3, e2).sendToTarget();
            }
            throw e2;
        } catch (Exception e3) {
            if (!this.f23207s) {
                C5720eb.m11832b("LoadTask", "Unexpected exception loading stream", e3);
                obtainMessage(2, new jx3(e3)).sendToTarget();
            }
        } catch (OutOfMemoryError e4) {
            if (!this.f23207s) {
                C5720eb.m11832b("LoadTask", "OutOfMemory error loading stream", e4);
                obtainMessage(2, new jx3(e4)).sendToTarget();
            }
        }
    }

    /* renamed from: b */
    public final void m11666b(long j) {
        ex3 ex3Var;
        boolean z;
        ex3Var = this.f23208t.f26982b;
        if (ex3Var == null) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        this.f23208t.f26982b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m11664d();
        }
    }

    /* renamed from: c */
    public final void m11665c(boolean z) {
        this.f23207s = z;
        this.f23203k = null;
        if (hasMessages(0)) {
            this.f23206r = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.f23206r = true;
                this.f23200a.mo11332g();
                Thread thread = this.f23205q;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            this.f23208t.f26982b = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            bx3<T> bx3Var = this.f23202d;
            bx3Var.getClass();
            bx3Var.mo10796n(this.f23200a, elapsedRealtime, elapsedRealtime - this.f23201b, true);
            this.f23202d = null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        long min;
        if (this.f23207s) {
            return;
        }
        int i4 = message.what;
        if (i4 == 0) {
            m11664d();
        } else if (i4 != 3) {
            this.f23208t.f26982b = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = elapsedRealtime - this.f23201b;
            bx3<T> bx3Var = this.f23202d;
            bx3Var.getClass();
            if (this.f23206r) {
                bx3Var.mo10796n(this.f23200a, elapsedRealtime, j2, false);
                return;
            }
            int i5 = message.what;
            if (i5 != 1) {
                if (i5 == 2) {
                    IOException iOException = (IOException) message.obj;
                    this.f23203k = iOException;
                    int i6 = this.f23204p + 1;
                    this.f23204p = i6;
                    dx3 mo10794s = bx3Var.mo10794s(this.f23200a, elapsedRealtime, j2, iOException, i6);
                    i = mo10794s.f22680a;
                    if (i == 3) {
                        this.f23208t.f26983c = this.f23203k;
                        return;
                    }
                    i2 = mo10794s.f22680a;
                    if (i2 != 2) {
                        i3 = mo10794s.f22680a;
                        if (i3 == 1) {
                            this.f23204p = 1;
                        }
                        j = mo10794s.f22681b;
                        if (j != -9223372036854775807L) {
                            min = mo10794s.f22681b;
                        } else {
                            min = Math.min((this.f23204p - 1) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 5000);
                        }
                        m11666b(min);
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                bx3Var.mo10797k(this.f23200a, elapsedRealtime, j2);
            } catch (RuntimeException e) {
                C5720eb.m11832b("LoadTask", "Unexpected exception handling load completed", e);
                this.f23208t.f26983c = new jx3(e);
            }
        } else {
            throw ((Error) message.obj);
        }
    }
}
