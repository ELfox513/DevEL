package p168r4;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.r00 */
/* loaded from: classes2.dex */
public final class r00 {

    /* renamed from: a */
    public MotionEvent f30394a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* renamed from: b */
    public MotionEvent f30395b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* renamed from: c */
    public final Context f30396c;

    /* renamed from: d */
    public final ScheduledExecutorService f30397d;

    /* renamed from: e */
    public final t00 f30398e;

    /* renamed from: b */
    public final h83<String> m7632b() {
        return (o73) y73.m4807h(o73.m8869E(y73.m4814a(null)), e10.f22724c.m6673e().longValue(), TimeUnit.MILLISECONDS, this.f30397d);
    }

    public r00(Context context, ScheduledExecutorService scheduledExecutorService, t00 t00Var, byte[] bArr) {
        this.f30396c = context;
        this.f30397d = scheduledExecutorService;
        this.f30398e = t00Var;
    }

    /* renamed from: a */
    public final void m7633a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f30394a.getEventTime()) {
            this.f30394a = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > this.f30395b.getEventTime()) {
            this.f30395b = MotionEvent.obtain(motionEvent);
        }
    }
}
