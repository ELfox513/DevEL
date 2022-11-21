package p168r4;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
/* renamed from: r4.vx3 */
/* loaded from: classes2.dex */
public final class vx3 extends HandlerThread implements Handler.Callback {

    /* renamed from: a */
    public RunnableC6237sa f32972a;

    /* renamed from: b */
    public Handler f32973b;

    /* renamed from: d */
    public Error f32974d;

    /* renamed from: k */
    public RuntimeException f32975k;

    /* renamed from: p */
    public xx3 f32976p;

    public vx3() {
        super("ExoPlayer:DummySurface");
    }

    /* renamed from: b */
    public final void m5977b() {
        Handler handler = this.f32973b;
        handler.getClass();
        handler.sendEmptyMessage(2);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                try {
                    RunnableC6237sa runnableC6237sa = this.f32972a;
                    runnableC6237sa.getClass();
                    runnableC6237sa.m7185b();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                int i2 = message.arg1;
                RunnableC6237sa runnableC6237sa2 = this.f32972a;
                runnableC6237sa2.getClass();
                runnableC6237sa2.m7186a(i2);
                SurfaceTexture m7184c = this.f32972a.m7184c();
                if (i2 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.f32976p = new xx3(this, m7184c, z, null);
                synchronized (this) {
                    notify();
                }
            } catch (Error e) {
                C5720eb.m11832b("DummySurface", "Failed to initialize dummy surface", e);
                this.f32974d = e;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e2) {
                C5720eb.m11832b("DummySurface", "Failed to initialize dummy surface", e2);
                this.f32975k = e2;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final xx3 m5978a(int i) {
        boolean z;
        start();
        this.f32973b = new Handler(getLooper(), this);
        this.f32972a = new RunnableC6237sa(this.f32973b, null);
        synchronized (this) {
            z = false;
            this.f32973b.obtainMessage(1, i, 0).sendToTarget();
            while (this.f32976p == null && this.f32975k == null && this.f32974d == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f32975k;
        if (runtimeException == null) {
            Error error = this.f32974d;
            if (error == null) {
                xx3 xx3Var = this.f32976p;
                xx3Var.getClass();
                return xx3Var;
            }
            throw error;
        }
        throw runtimeException;
    }
}
