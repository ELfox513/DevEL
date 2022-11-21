package p038d0;

import android.os.Build;
import android.view.DisplayCutout;
import p022c0.C1022e;
/* renamed from: d0.c */
/* loaded from: classes.dex */
public final class C3161c {

    /* renamed from: a */
    public final Object f15491a;

    /* renamed from: e */
    public static C3161c m19468e(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C3161c(obj);
    }

    public int hashCode() {
        Object obj = this.f15491a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f15491a + "}";
    }

    /* renamed from: a */
    public int m19472a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f15491a).getSafeInsetBottom();
        }
        return 0;
    }

    /* renamed from: b */
    public int m19471b() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f15491a).getSafeInsetLeft();
        }
        return 0;
    }

    /* renamed from: c */
    public int m19470c() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f15491a).getSafeInsetRight();
        }
        return 0;
    }

    /* renamed from: d */
    public int m19469d() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ((DisplayCutout) this.f15491a).getSafeInsetTop();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3161c.class == obj.getClass()) {
            return C1022e.m24813a(this.f15491a, ((C3161c) obj).f15491a);
        }
        return false;
    }

    public C3161c(Object obj) {
        this.f15491a = obj;
    }
}
