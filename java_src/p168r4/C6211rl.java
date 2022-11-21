package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
@TargetApi(17)
/* renamed from: r4.rl */
/* loaded from: classes2.dex */
public final class C6211rl extends Surface {

    /* renamed from: d */
    public static boolean f30609d;

    /* renamed from: k */
    public static boolean f30610k;

    /* renamed from: a */
    public final HandlerThreadC6137pl f30611a;

    /* renamed from: b */
    public boolean f30612b;

    public /* synthetic */ C6211rl(HandlerThreadC6137pl handlerThreadC6137pl, SurfaceTexture surfaceTexture, boolean z, C6174ql c6174ql) {
        super(surfaceTexture);
        this.f30611a = handlerThreadC6137pl;
    }

    /* renamed from: a */
    public static synchronized boolean m7477a(Context context) {
        boolean z;
        synchronized (C6211rl.class) {
            if (!f30610k) {
                int i = C5988ll.f27242a;
                if (i >= 17) {
                    boolean z2 = false;
                    String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                    if (eglQueryString != null && eglQueryString.contains("EGL_EXT_protected_content")) {
                        if (i == 24) {
                            String str = C5988ll.f27245d;
                            if ((str.startsWith("SM-G950") || str.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                            }
                        }
                        z2 = true;
                    }
                    f30609d = z2;
                }
                f30610k = true;
            }
            z = f30609d;
        }
        return z;
    }

    /* renamed from: h */
    public static C6211rl m7476h(Context context, boolean z) {
        if (C5988ll.f27242a >= 17) {
            boolean z2 = true;
            if (z && !m7477a(context)) {
                z2 = false;
            }
            C6358vk.m6137d(z2);
            return new HandlerThreadC6137pl().m8285a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f30611a) {
            if (!this.f30612b) {
                this.f30611a.m8284b();
                this.f30612b = true;
            }
        }
    }
}
