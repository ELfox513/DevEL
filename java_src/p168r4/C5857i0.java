package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: r4.i0 */
/* loaded from: classes2.dex */
public final class C5857i0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f24917a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f24918b;

    public C5857i0(C5967l0 c5967l0, Activity activity, Bundle bundle) {
        this.f24917a = activity;
        this.f24918b = bundle;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f24917a, this.f24918b);
    }
}
