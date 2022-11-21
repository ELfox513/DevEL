package p168r4;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* renamed from: r4.xx3 */
/* loaded from: classes2.dex */
public final class xx3 extends Surface {

    /* renamed from: k */
    public static int f33797k;

    /* renamed from: p */
    public static boolean f33798p;

    /* renamed from: a */
    public final boolean f33799a;

    /* renamed from: b */
    public final vx3 f33800b;

    /* renamed from: d */
    public boolean f33801d;

    public /* synthetic */ xx3(vx3 vx3Var, SurfaceTexture surfaceTexture, boolean z, wx3 wx3Var) {
        super(surfaceTexture);
        this.f33800b = vx3Var;
        this.f33799a = z;
    }

    /* renamed from: h */
    public static xx3 m4954h(Context context, boolean z) {
        boolean z2 = true;
        if (z && !m4955a(context)) {
            z2 = false;
        }
        C5903ja.m10371d(z2);
        return new vx3().m5978a(z ? f33797k : 0);
    }

    /* renamed from: a */
    public static synchronized boolean m4955a(Context context) {
        int i;
        String eglQueryString;
        String eglQueryString2;
        synchronized (xx3.class) {
            if (!f33798p) {
                int i2 = C5979lc.f27164a;
                int i3 = 2;
                if (i2 >= 24 && ((i2 >= 26 || (!"samsung".equals(C5979lc.f27166c) && !"XT1650".equals(C5979lc.f27167d))) && ((i2 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
                    if (i2 >= 17 && (eglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString2.contains("EGL_KHR_surfaceless_context")) {
                        i3 = 1;
                    }
                    f33797k = i3;
                    f33798p = true;
                }
                i3 = 0;
                f33797k = i3;
                f33798p = true;
            }
            i = f33797k;
        }
        if (i != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f33800b) {
            if (!this.f33801d) {
                this.f33800b.m5977b();
                this.f33801d = true;
            }
        }
    }
}
