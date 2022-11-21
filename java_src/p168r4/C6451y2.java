package p168r4;

import android.media.AudioManager;
import android.os.Handler;
/* renamed from: r4.y2 */
/* loaded from: classes2.dex */
public final class C6451y2 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public final Handler f33845a;

    /* renamed from: b */
    public final /* synthetic */ C5564a3 f33846b;

    public C6451y2(C5564a3 c5564a3, Handler handler) {
        this.f33846b = c5564a3;
        this.f33845a = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        this.f33845a.post(new Runnable(this, i) { // from class: r4.x2

            /* renamed from: a */
            public final C6451y2 f33413a;

            /* renamed from: b */
            public final int f33414b;

            {
                this.f33413a = this;
                this.f33414b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C6451y2 c6451y2 = this.f33413a;
                C5564a3.m13053d(c6451y2.f33846b, this.f33414b);
            }
        });
    }
}
