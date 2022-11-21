package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.um */
/* loaded from: classes2.dex */
public final class C6323um implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f32321a;

    public C6323um(C5584an c5584an, Activity activity) {
        this.f32321a = activity;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f32321a);
    }
}
