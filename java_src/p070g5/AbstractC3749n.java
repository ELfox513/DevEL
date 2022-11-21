package p070g5;

import android.os.Handler;
import p018b5.HandlerC0556a1;
import p220x3.C7297q;
/* renamed from: g5.n */
/* loaded from: classes2.dex */
public abstract class AbstractC3749n {

    /* renamed from: d */
    public static volatile Handler f16741d;

    /* renamed from: a */
    public final InterfaceC3875x5 f16742a;

    /* renamed from: b */
    public final Runnable f16743b;

    /* renamed from: c */
    public volatile long f16744c;

    /* renamed from: b */
    public final void m18056b() {
        this.f16744c = 0L;
        m18053f().removeCallbacks(this.f16743b);
    }

    /* renamed from: c */
    public abstract void mo18035c();

    /* renamed from: e */
    public final boolean m18054e() {
        return this.f16744c != 0;
    }

    /* renamed from: f */
    public final Handler m18053f() {
        Handler handler;
        if (f16741d != null) {
            return f16741d;
        }
        synchronized (AbstractC3749n.class) {
            if (f16741d == null) {
                f16741d = new HandlerC0556a1(this.f16742a.mo17856O().getMainLooper());
            }
            handler = f16741d;
        }
        return handler;
    }

    public AbstractC3749n(InterfaceC3875x5 interfaceC3875x5) {
        C7297q.m1883j(interfaceC3875x5);
        this.f16742a = interfaceC3875x5;
        this.f16743b = new RunnableC3737m(this, interfaceC3875x5);
    }

    /* renamed from: d */
    public final void m18055d(long j) {
        m18056b();
        if (j >= 0) {
            this.f16744c = this.f16742a.mo17854Q().mo24763a();
            if (!m18053f().postDelayed(this.f16743b, j)) {
                this.f16742a.mo17858F().m18018m().m18041b("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }
}
