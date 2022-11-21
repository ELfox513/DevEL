package p168r4;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.vw2 */
/* loaded from: classes2.dex */
public final class vw2 {

    /* renamed from: a */
    public final BlockingQueue<Runnable> f32949a;

    /* renamed from: b */
    public final ThreadPoolExecutor f32950b;

    /* renamed from: c */
    public final ArrayDeque<uw2> f32951c = new ArrayDeque<>();

    /* renamed from: d */
    public uw2 f32952d = null;

    /* renamed from: b */
    public final void m5986b(uw2 uw2Var) {
        this.f32952d = null;
        m5985c();
    }

    /* renamed from: c */
    public final void m5985c() {
        uw2 poll = this.f32951c.poll();
        this.f32952d = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.f32950b, new Object[0]);
        }
    }

    public vw2() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f32949a = linkedBlockingQueue;
        this.f32950b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: a */
    public final void m5987a(uw2 uw2Var) {
        uw2Var.m6322b(this);
        this.f32951c.add(uw2Var);
        if (this.f32952d == null) {
            m5985c();
        }
    }
}
