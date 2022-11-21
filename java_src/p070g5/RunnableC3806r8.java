package p070g5;

import android.content.ComponentName;
/* renamed from: g5.r8 */
/* loaded from: classes2.dex */
public final class RunnableC3806r8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ComponentName f16920a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC3854v8 f16921b;

    public RunnableC3806r8(ServiceConnectionC3854v8 serviceConnectionC3854v8, ComponentName componentName) {
        this.f16921b = serviceConnectionC3854v8;
        this.f16920a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3866w8.m17891J(this.f16921b.f17013d, this.f16920a);
    }
}
