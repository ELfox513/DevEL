package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: r4.xm */
/* loaded from: classes2.dex */
public final class C6434xm implements InterfaceC6508zm {

    /* renamed from: a */
    public final /* synthetic */ Activity f33636a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f33637b;

    public C6434xm(C5584an c5584an, Activity activity, Bundle bundle) {
        this.f33636a = activity;
        this.f33637b = bundle;
    }

    @Override // p168r4.InterfaceC6508zm
    /* renamed from: a */
    public final void mo4186a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f33636a, this.f33637b);
    }
}
