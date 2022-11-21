package p168r4;

import android.annotation.SuppressLint;
import android.content.Context;
/* renamed from: r4.rv2 */
/* loaded from: classes2.dex */
public final class rv2 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    public static final rv2 f30715b = new rv2();

    /* renamed from: a */
    public Context f30716a;

    /* renamed from: a */
    public static rv2 m7319a() {
        return f30715b;
    }

    /* renamed from: b */
    public final Context m7318b() {
        return this.f30716a;
    }

    /* renamed from: c */
    public final void m7317c(Context context) {
        this.f30716a = context != null ? context.getApplicationContext() : null;
    }
}
