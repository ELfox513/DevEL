package p168r4;

import android.content.Context;
import android.media.AudioManager;
import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.yb2 */
/* loaded from: classes2.dex */
public final class yb2 implements eg2<zb2> {

    /* renamed from: a */
    public final i83 f34021a;

    /* renamed from: b */
    public final Context f34022b;

    public yb2(i83 i83Var, Context context) {
        this.f34021a = i83Var;
        this.f34022b = context;
    }

    @Override // p168r4.eg2
    public final h83<zb2> zza() {
        return this.f34021a.mo8015c(new Callable(this) { // from class: r4.xb2

            /* renamed from: a */
            public final yb2 f33548a;

            {
                this.f33548a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f33548a.m4781a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ zb2 m4781a() {
        AudioManager audioManager = (AudioManager) this.f34022b.getSystemService("audio");
        return new zb2(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), C7601t.m934i().m26370b(), C7601t.m934i().m26368d());
    }
}
