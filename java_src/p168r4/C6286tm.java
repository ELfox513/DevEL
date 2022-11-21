package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.tm */
/* loaded from: classes2.dex */
public final class C6286tm implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f31897a;

    public C6286tm(C5584an c5584an, Activity activity) {
        this.f31897a = activity;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f31897a);
    }
}
