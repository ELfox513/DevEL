package p168r4;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.os.Handler;
/* renamed from: r4.x92 */
/* loaded from: classes2.dex */
public final class x92 {

    /* renamed from: a */
    public final Handler f33523a = new Handler();

    /* renamed from: b */
    public final AudioTrack$StreamEventCallback f33524b;

    /* renamed from: c */
    public final /* synthetic */ bb2 f33525c;

    /* renamed from: a */
    public final void m5446a(AudioTrack audioTrack) {
        audioTrack.registerStreamEventCallback(t72.m6905a(this.f33523a), this.f33524b);
    }

    public x92(bb2 bb2Var) {
        this.f33525c = bb2Var;
        this.f33524b = new u82(this, bb2Var);
    }

    /* renamed from: b */
    public final void m5445b(AudioTrack audioTrack) {
        v92.m6198a(audioTrack, this.f33524b);
        this.f33523a.removeCallbacksAndMessages(null);
    }
}
