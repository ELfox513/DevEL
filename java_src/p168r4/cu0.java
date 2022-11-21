package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
/* renamed from: r4.cu0 */
/* loaded from: classes2.dex */
public final class cu0 {

    /* renamed from: a */
    public im0 f21679a;

    /* renamed from: b */
    public Context f21680b;

    /* renamed from: c */
    public WeakReference<Context> f21681c;

    /* renamed from: d */
    public final cu0 m12361d(im0 im0Var) {
        this.f21679a = im0Var;
        return this;
    }

    /* renamed from: e */
    public final cu0 m12360e(Context context) {
        this.f21681c = new WeakReference<>(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.f21680b = context;
        return this;
    }
}
