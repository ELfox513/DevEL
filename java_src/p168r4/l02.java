package p168r4;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* renamed from: r4.l02 */
/* loaded from: classes2.dex */
public final class l02 extends Thread {

    /* renamed from: a */
    public final /* synthetic */ AudioTrack f27008a;

    /* renamed from: b */
    public final /* synthetic */ bb2 f27009b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l02(bb2 bb2Var, String str, AudioTrack audioTrack) {
        super("ExoPlayer:AudioTrackReleaseThread");
        this.f27009b = bb2Var;
        this.f27008a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f27008a.flush();
            this.f27008a.release();
        } finally {
            conditionVariable = this.f27009b.f20953e;
            conditionVariable.open();
        }
    }
}
