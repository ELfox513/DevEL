package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.ym */
/* loaded from: classes2.dex */
public final class C6471ym implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f34143a;

    public C6471ym(C5584an c5584an, Activity activity) {
        this.f34143a = activity;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f34143a);
    }
}
