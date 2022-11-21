package p016b3;

import android.content.Context;
import android.media.AudioManager;
/* renamed from: b3.h */
/* loaded from: classes.dex */
public final class C0482h {

    /* renamed from: a */
    public boolean f1611a = false;

    /* renamed from: b */
    public float f1612b = 1.0f;

    /* renamed from: a */
    public final synchronized void m26371a(float f) {
        this.f1612b = f;
    }

    /* renamed from: b */
    public final synchronized float m26370b() {
        if (m26366f()) {
            return this.f1612b;
        }
        return 1.0f;
    }

    /* renamed from: c */
    public final synchronized void m26369c(boolean z) {
        this.f1611a = z;
    }

    /* renamed from: d */
    public final synchronized boolean m26368d() {
        return this.f1611a;
    }

    /* renamed from: f */
    public final synchronized boolean m26366f() {
        return this.f1612b >= 0.0f;
    }

    /* renamed from: e */
    public static float m26367e(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }
}
