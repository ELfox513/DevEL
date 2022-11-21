package p168r4;

import android.view.Surface;
/* renamed from: r4.em */
/* loaded from: classes2.dex */
public final class RunnableC5731em implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Surface f23081a;

    /* renamed from: b */
    public final /* synthetic */ C5805gm f23082b;

    public RunnableC5731em(C5805gm c5805gm, Surface surface) {
        this.f23082b = c5805gm;
        this.f23081a = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC5842hm interfaceC5842hm;
        interfaceC5842hm = this.f23082b.f24140b;
        interfaceC5842hm.mo5201g(this.f23081a);
    }
}
