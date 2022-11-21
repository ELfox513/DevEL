package p168r4;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p168r4.InterfaceC6210rk;
@SuppressLint({"HandlerLeak"})
/* renamed from: r4.qk */
/* loaded from: classes2.dex */
public final class HandlerC6173qk<T extends InterfaceC6210rk> extends Handler implements Runnable {

    /* renamed from: a */
    public final T f30162a;

    /* renamed from: b */
    public final InterfaceC6136pk<T> f30163b;

    /* renamed from: d */
    public final int f30164d;

    /* renamed from: k */
    public final long f30165k;

    /* renamed from: p */
    public IOException f30166p;

    /* renamed from: q */
    public int f30167q;

    /* renamed from: r */
    public volatile Thread f30168r;

    /* renamed from: s */
    public volatile boolean f30169s;

    /* renamed from: t */
    public final /* synthetic */ C6284tk f30170t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6173qk(C6284tk c6284tk, Looper looper, T t, InterfaceC6136pk<T> interfaceC6136pk, int i, long j) {
        super(looper);
        this.f30170t = c6284tk;
        this.f30162a = t;
        this.f30163b = interfaceC6136pk;
        this.f30164d = i;
        this.f30165k = j;
    }

    /* renamed from: a */
    public final void m7809a(int i) {
        IOException iOException = this.f30166p;
        if (iOException != null && this.f30167q > i) {
            throw iOException;
        }
    }

    /* renamed from: d */
    public final void m7806d() {
        ExecutorService executorService;
        HandlerC6173qk handlerC6173qk;
        this.f30166p = null;
        executorService = this.f30170t.f31879a;
        handlerC6173qk = this.f30170t.f31880b;
        executorService.execute(handlerC6173qk);
    }

    /* renamed from: b */
    public final void m7808b(long j) {
        HandlerC6173qk handlerC6173qk;
        boolean z;
        handlerC6173qk = this.f30170t.f31880b;
        if (handlerC6173qk == null) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6137d(z);
        this.f30170t.f31880b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m7806d();
        }
    }

    /* renamed from: c */
    public final void m7807c(boolean z) {
        this.f30169s = z;
        this.f30166p = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
                return;
            }
        } else {
            this.f30162a.mo7484b();
            if (this.f30168r != null) {
                this.f30168r.interrupt();
            }
            if (!z) {
                return;
            }
        }
        this.f30170t.f31880b = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f30163b.mo7835a(this.f30162a, elapsedRealtime, elapsedRealtime - this.f30165k, true);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f30169s) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            m7806d();
        } else if (i != 4) {
            this.f30170t.f31880b = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f30165k;
            if (this.f30162a.mo7482e()) {
                this.f30163b.mo7835a(this.f30162a, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            int i3 = 1;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f30166p = iOException;
                        int mo7832g = this.f30163b.mo7832g(this.f30162a, elapsedRealtime, j, iOException);
                        if (mo7832g == 3) {
                            this.f30170t.f31881c = this.f30166p;
                            return;
                        } else if (mo7832g != 2) {
                            if (mo7832g != 1) {
                                i3 = 1 + this.f30167q;
                            }
                            this.f30167q = i3;
                            m7808b(Math.min((i3 - 1) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 5000));
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                this.f30163b.mo7831i(this.f30162a, elapsedRealtime, j);
                return;
            }
            this.f30163b.mo7835a(this.f30162a, elapsedRealtime, j, false);
        } else {
            throw ((Error) message.obj);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        try {
            this.f30168r = Thread.currentThread();
            if (!this.f30162a.mo7482e()) {
                String simpleName = this.f30162a.getClass().getSimpleName();
                if (simpleName.length() != 0) {
                    str = "load:".concat(simpleName);
                } else {
                    str = new String("load:");
                }
                C5914jl.m10254a(str);
                try {
                    this.f30162a.mo7483c();
                    C5914jl.m10253b();
                } catch (Throwable th) {
                    C5914jl.m10253b();
                    throw th;
                }
            }
            if (!this.f30169s) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.f30169s) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f30169s) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException unused) {
            C6358vk.m6137d(this.f30162a.mo7482e());
            if (!this.f30169s) {
                sendEmptyMessage(2);
            }
        } catch (Exception e3) {
            Log.e("LoadTask", "Unexpected exception loading stream", e3);
            if (!this.f30169s) {
                obtainMessage(3, new C6247sk(e3)).sendToTarget();
            }
        } catch (OutOfMemoryError e4) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e4);
            if (!this.f30169s) {
                obtainMessage(3, new C6247sk(e4)).sendToTarget();
            }
        }
    }
}
