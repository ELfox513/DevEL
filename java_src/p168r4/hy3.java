package p168r4;

import android.view.Surface;
/* renamed from: r4.hy3 */
/* loaded from: classes2.dex */
public final class hy3 {
    /* renamed from: a */
    public static void m10755a(Surface surface, float f) {
        int i;
        if (f == 0.0f) {
            i = 0;
        } else {
            i = 1;
        }
        try {
            surface.setFrameRate(f, i);
        } catch (IllegalStateException e) {
            C5720eb.m11832b("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
