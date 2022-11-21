package p168r4;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* renamed from: r4.lv2 */
/* loaded from: classes2.dex */
public final class lv2 extends ContentObserver {

    /* renamed from: a */
    public final Context f27390a;

    /* renamed from: b */
    public final AudioManager f27391b;

    /* renamed from: c */
    public final jv2 f27392c;

    /* renamed from: d */
    public float f27393d;

    /* renamed from: e */
    public final uv2 f27394e;

    /* renamed from: b */
    public final void m9558b() {
        this.f27390a.getContentResolver().unregisterContentObserver(this);
    }

    /* renamed from: d */
    public final void m9556d() {
        this.f27394e.m6333e(this.f27393d);
    }

    /* renamed from: c */
    public final float m9557c() {
        int streamVolume = this.f27391b.getStreamVolume(3);
        int streamMaxVolume = this.f27391b.getStreamMaxVolume(3);
        if (streamMaxVolume > 0 && streamVolume > 0) {
            float f = streamVolume / streamMaxVolume;
            if (f > 1.0f) {
                return 1.0f;
            }
            return f;
        }
        return 0.0f;
    }

    public lv2(Handler handler, Context context, jv2 jv2Var, uv2 uv2Var, byte[] bArr) {
        super(handler);
        this.f27390a = context;
        this.f27391b = (AudioManager) context.getSystemService("audio");
        this.f27392c = jv2Var;
        this.f27394e = uv2Var;
    }

    /* renamed from: a */
    public final void m9559a() {
        this.f27393d = m9557c();
        m9556d();
        this.f27390a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float m9557c = m9557c();
        if (m9557c != this.f27393d) {
            this.f27393d = m9557c;
            m9556d();
        }
    }
}
