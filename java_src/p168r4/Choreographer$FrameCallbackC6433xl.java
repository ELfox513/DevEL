package p168r4;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* renamed from: r4.xl */
/* loaded from: classes2.dex */
public final class Choreographer$FrameCallbackC6433xl implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: q */
    public static final Choreographer$FrameCallbackC6433xl f33626q = new Choreographer$FrameCallbackC6433xl();

    /* renamed from: a */
    public volatile long f33627a;

    /* renamed from: b */
    public final Handler f33628b;

    /* renamed from: d */
    public final HandlerThread f33629d;

    /* renamed from: k */
    public Choreographer f33630k;

    /* renamed from: p */
    public int f33631p;

    /* renamed from: a */
    public static Choreographer$FrameCallbackC6433xl m5288a() {
        return f33626q;
    }

    /* renamed from: b */
    public final void m5287b() {
        this.f33628b.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m5286c() {
        this.f33628b.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f33627a = j;
        this.f33630k.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                int i2 = this.f33631p - 1;
                this.f33631p = i2;
                if (i2 == 0) {
                    this.f33630k.removeFrameCallback(this);
                    this.f33627a = 0L;
                }
                return true;
            }
            int i3 = this.f33631p + 1;
            this.f33631p = i3;
            if (i3 == 1) {
                this.f33630k.postFrameCallback(this);
            }
            return true;
        }
        this.f33630k = Choreographer.getInstance();
        return true;
    }

    public Choreographer$FrameCallbackC6433xl() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.f33629d = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f33628b = handler;
        handler.sendEmptyMessage(0);
    }
}
