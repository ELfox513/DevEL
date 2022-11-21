package p168r4;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
/* renamed from: r4.u82 */
/* loaded from: classes2.dex */
public final class u82 extends AudioTrack$StreamEventCallback {

    /* renamed from: a */
    public final /* synthetic */ bb2 f32223a;

    /* renamed from: b */
    public final /* synthetic */ x92 f32224b;

    public u82(x92 x92Var, bb2 bb2Var) {
        this.f32224b = x92Var;
        this.f32223a = bb2Var;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        boolean z;
        aq1 aq1Var;
        boolean z2;
        aq1 aq1Var2;
        audioTrack2 = this.f32224b.f33525c.f20962n;
        if (audioTrack == audioTrack2) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        aq1Var = this.f32224b.f33525c.f20959k;
        if (aq1Var != null) {
            z2 = this.f32224b.f33525c.f20941I;
            if (z2) {
                aq1Var2 = this.f32224b.f33525c.f20959k;
                aq1Var2.zza();
            }
        }
    }

    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        boolean z;
        aq1 aq1Var;
        boolean z2;
        aq1 aq1Var2;
        audioTrack2 = this.f32224b.f33525c.f20962n;
        if (audioTrack == audioTrack2) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        aq1Var = this.f32224b.f33525c.f20959k;
        if (aq1Var != null) {
            z2 = this.f32224b.f33525c.f20941I;
            if (z2) {
                aq1Var2 = this.f32224b.f33525c.f20959k;
                aq1Var2.zza();
            }
        }
    }
}
