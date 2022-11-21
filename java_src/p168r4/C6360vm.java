package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.vm */
/* loaded from: classes2.dex */
public final class C6360vm implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f32760a;

    public C6360vm(C5584an c5584an, Activity activity) {
        this.f32760a = activity;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f32760a);
    }
}
