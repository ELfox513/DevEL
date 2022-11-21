package p168r4;

import android.os.Handler;
/* renamed from: r4.fe */
/* loaded from: classes2.dex */
public final class C5760fe {

    /* renamed from: a */
    public final Handler f23457a;

    /* renamed from: b */
    public final InterfaceC5797ge f23458b;

    public C5760fe(Handler handler, InterfaceC5797ge interfaceC5797ge) {
        handler.getClass();
        this.f23457a = handler;
        this.f23458b = interfaceC5797ge;
    }

    /* renamed from: b */
    public final void m11563b(C5798gf c5798gf) {
        this.f23457a.post(new RunnableC6499zd(this, c5798gf));
    }

    /* renamed from: c */
    public final void m11562c(String str, long j, long j2) {
        this.f23457a.post(new RunnableC5575ae(this, str, j, j2));
    }

    /* renamed from: d */
    public final void m11561d(C5870id c5870id) {
        this.f23457a.post(new RunnableC5612be(this, c5870id));
    }

    /* renamed from: e */
    public final void m11560e(int i, long j, long j2) {
        this.f23457a.post(new RunnableC5648ce(this, i, j, j2));
    }

    /* renamed from: f */
    public final void m11559f(C5798gf c5798gf) {
        this.f23457a.post(new RunnableC5685de(this, c5798gf));
    }

    /* renamed from: g */
    public final void m11558g(int i) {
        this.f23457a.post(new RunnableC5723ee(this, i));
    }
}
