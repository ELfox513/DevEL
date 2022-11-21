package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
@TargetApi(14)
/* renamed from: r4.to0 */
/* loaded from: classes2.dex */
public final class to0 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public final AudioManager f31932a;

    /* renamed from: b */
    public final so0 f31933b;

    /* renamed from: c */
    public boolean f31934c;

    /* renamed from: d */
    public boolean f31935d;

    /* renamed from: e */
    public boolean f31936e;

    /* renamed from: f */
    public float f31937f = 1.0f;

    public to0(Context context, so0 so0Var) {
        this.f31932a = (AudioManager) context.getSystemService("audio");
        this.f31933b = so0Var;
    }

    /* renamed from: a */
    public final void m6774a(boolean z) {
        this.f31936e = z;
        m6769f();
    }

    /* renamed from: b */
    public final void m6773b(float f) {
        this.f31937f = f;
        m6769f();
    }

    /* renamed from: c */
    public final float m6772c() {
        float f = this.f31936e ? 0.0f : this.f31937f;
        if (this.f31934c) {
            return f;
        }
        return 0.0f;
    }

    /* renamed from: d */
    public final void m6771d() {
        this.f31935d = true;
        m6769f();
    }

    /* renamed from: e */
    public final void m6770e() {
        this.f31935d = false;
        m6769f();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f31934c = i > 0;
        this.f31933b.mo6070n();
    }

    /* renamed from: f */
    public final void m6769f() {
        boolean z = false;
        if (this.f31935d && !this.f31936e && this.f31937f > 0.0f) {
            if (!this.f31934c) {
                AudioManager audioManager = this.f31932a;
                if (audioManager != null) {
                    if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                        z = true;
                    }
                    this.f31934c = z;
                }
                this.f31933b.mo6070n();
            }
        } else if (this.f31934c) {
            AudioManager audioManager2 = this.f31932a;
            if (audioManager2 != null) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z = true;
                }
                this.f31934c = z;
            }
            this.f31933b.mo6070n();
        }
    }
}
