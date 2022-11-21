package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: r4.sm */
/* loaded from: classes2.dex */
public final class C6249sm implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f31410a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f31411b;

    public C6249sm(C5584an c5584an, Activity activity, Bundle bundle) {
        this.f31410a = activity;
        this.f31411b = bundle;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f31410a, this.f31411b);
    }
}
