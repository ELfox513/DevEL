package p168r4;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
/* renamed from: r4.a3 */
/* loaded from: classes2.dex */
public final class C5564a3 {

    /* renamed from: a */
    public final AudioManager f20352a;

    /* renamed from: b */
    public final C6451y2 f20353b;

    /* renamed from: c */
    public InterfaceC6488z2 f20354c;

    /* renamed from: d */
    public int f20355d;

    /* renamed from: e */
    public float f20356e = 1.0f;

    /* renamed from: d */
    public static /* synthetic */ void m13053d(C5564a3 c5564a3, int i) {
        if (i != -3 && i != -2) {
            if (i != -1) {
                if (i != 1) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unknown focus change type: ");
                    sb.append(i);
                    Log.w("AudioFocusManager", sb.toString());
                    return;
                }
                c5564a3.m13051f(1);
                c5564a3.m13050g(1);
                return;
            }
            c5564a3.m13050g(-1);
            c5564a3.m13052e();
        } else if (i != -2) {
            c5564a3.m13051f(3);
        } else {
            c5564a3.m13050g(0);
            c5564a3.m13051f(2);
        }
    }

    /* renamed from: a */
    public final float m13056a() {
        return this.f20356e;
    }

    /* renamed from: b */
    public final int m13055b(boolean z, int i) {
        m13052e();
        return z ? 1 : -1;
    }

    /* renamed from: c */
    public final void m13054c() {
        this.f20354c = null;
        m13052e();
    }

    /* renamed from: f */
    public final void m13051f(int i) {
        if (this.f20355d == i) {
            return;
        }
        this.f20355d = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f20356e == f) {
            return;
        }
        this.f20356e = f;
        InterfaceC6488z2 interfaceC6488z2 = this.f20354c;
        if (interfaceC6488z2 != null) {
            ((SurfaceHolder$CallbackC6049n7) interfaceC6488z2).f28187a.m8000N();
        }
    }

    /* renamed from: e */
    public final void m13052e() {
        if (this.f20355d == 0) {
            return;
        }
        if (C5979lc.f27164a < 26) {
            this.f20352a.abandonAudioFocus(this.f20353b);
        }
        m13051f(0);
    }

    /* renamed from: g */
    public final void m13050g(int i) {
        int m7993U;
        InterfaceC6488z2 interfaceC6488z2 = this.f20354c;
        if (interfaceC6488z2 != null) {
            SurfaceHolder$CallbackC6049n7 surfaceHolder$CallbackC6049n7 = (SurfaceHolder$CallbackC6049n7) interfaceC6488z2;
            boolean m7969n = surfaceHolder$CallbackC6049n7.f28187a.m7969n();
            C6160q7 c6160q7 = surfaceHolder$CallbackC6049n7.f28187a;
            m7993U = C6160q7.m7993U(m7969n, i);
            c6160q7.m7997Q(m7969n, i, m7993U);
        }
    }

    public C5564a3(Context context, Handler handler, InterfaceC6488z2 interfaceC6488z2) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        audioManager.getClass();
        this.f20352a = audioManager;
        this.f20354c = interfaceC6488z2;
        this.f20353b = new C6451y2(this, handler);
        this.f20355d = 0;
    }
}
