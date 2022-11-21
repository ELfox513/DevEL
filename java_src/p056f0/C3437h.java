package p056f0;

import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: f0.h */
/* loaded from: classes.dex */
public final class C3437h {
    /* renamed from: a */
    public static void m18834a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
