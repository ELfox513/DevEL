package p168r4;

import android.os.Handler;
import android.view.Surface;
/* renamed from: r4.gm */
/* loaded from: classes2.dex */
public final class C5805gm {

    /* renamed from: a */
    public final Handler f24139a;

    /* renamed from: b */
    public final InterfaceC5842hm f24140b;

    public C5805gm(Handler handler, InterfaceC5842hm interfaceC5842hm) {
        handler.getClass();
        this.f24139a = handler;
        this.f24140b = interfaceC5842hm;
    }

    /* renamed from: b */
    public final void m11116b(C5798gf c5798gf) {
        this.f24139a.post(new RunnableC6507zl(this, c5798gf));
    }

    /* renamed from: c */
    public final void m11115c(String str, long j, long j2) {
        this.f24139a.post(new RunnableC5583am(this, str, j, j2));
    }

    /* renamed from: d */
    public final void m11114d(C5870id c5870id) {
        this.f24139a.post(new RunnableC5620bm(this, c5870id));
    }

    /* renamed from: e */
    public final void m11113e(int i, long j) {
        this.f24139a.post(new RunnableC5656cm(this, i, j));
    }

    /* renamed from: f */
    public final void m11112f(int i, int i2, int i3, float f) {
        this.f24139a.post(new RunnableC5693dm(this, i, i2, i3, f));
    }

    /* renamed from: g */
    public final void m11111g(Surface surface) {
        this.f24139a.post(new RunnableC5731em(this, surface));
    }

    /* renamed from: h */
    public final void m11110h(C5798gf c5798gf) {
        this.f24139a.post(new RunnableC5768fm(this, c5798gf));
    }
}
