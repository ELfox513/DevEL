package p168r4;

import android.media.MediaPlayer;
/* renamed from: r4.in0 */
/* loaded from: classes2.dex */
public final class in0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaPlayer f25198a;

    /* renamed from: b */
    public final /* synthetic */ tn0 f25199b;

    public in0(tn0 tn0Var, MediaPlayer mediaPlayer) {
        this.f25199b = tn0Var;
        this.f25198a = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        un0 un0Var;
        un0 un0Var2;
        tn0.m6778L(this.f25199b, this.f25198a);
        un0Var = this.f25199b.f31905C;
        if (un0Var != null) {
            un0Var2 = this.f25199b.f31905C;
            un0Var2.mo6482a();
        }
    }
}
