package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.wm */
/* loaded from: classes2.dex */
public final class C6397wm implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f33257a;

    public C6397wm(C5584an c5584an, Activity activity) {
        this.f33257a = activity;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f33257a);
    }
}
