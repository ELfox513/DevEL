package p168r4;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* renamed from: r4.he */
/* loaded from: classes2.dex */
public final class C5834he extends Thread {

    /* renamed from: a */
    public final /* synthetic */ AudioTrack f24553a;

    /* renamed from: b */
    public final /* synthetic */ C6278te f24554b;

    public C5834he(C6278te c6278te, AudioTrack audioTrack) {
        this.f24554b = c6278te;
        this.f24553a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f24553a.flush();
            this.f24553a.release();
        } finally {
            conditionVariable = this.f24554b.f31798e;
            conditionVariable.open();
        }
    }
}
