package p168r4;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* renamed from: r4.my3 */
/* loaded from: classes2.dex */
public final class my3 implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: q */
    public static final my3 f28015q = new my3();

    /* renamed from: a */
    public volatile long f28016a = -9223372036854775807L;

    /* renamed from: b */
    public final Handler f28017b;

    /* renamed from: d */
    public final HandlerThread f28018d;

    /* renamed from: k */
    public Choreographer f28019k;

    /* renamed from: p */
    public int f28020p;

    /* renamed from: a */
    public static my3 m9251a() {
        return f28015q;
    }

    /* renamed from: b */
    public final void m9250b() {
        this.f28017b.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m9249c() {
        this.f28017b.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f28016a = j;
        Choreographer choreographer = this.f28019k;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                int i2 = this.f28020p - 1;
                this.f28020p = i2;
                if (i2 == 0) {
                    Choreographer choreographer = this.f28019k;
                    choreographer.getClass();
                    choreographer.removeFrameCallback(this);
                    this.f28016a = -9223372036854775807L;
                }
                return true;
            }
            int i3 = this.f28020p + 1;
            this.f28020p = i3;
            if (i3 == 1) {
                Choreographer choreographer2 = this.f28019k;
                choreographer2.getClass();
                choreographer2.postFrameCallback(this);
            }
            return true;
        }
        this.f28019k = Choreographer.getInstance();
        return true;
    }

    public my3() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        this.f28018d = handlerThread;
        handlerThread.start();
        Handler m9723N = C5979lc.m9723N(handlerThread.getLooper(), this);
        this.f28017b = m9723N;
        m9723N.sendEmptyMessage(0);
    }
}
