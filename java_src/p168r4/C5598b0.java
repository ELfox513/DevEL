package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: r4.b0 */
/* loaded from: classes2.dex */
public final class C5598b0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f20786a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f20787b;

    public C5598b0(C5967l0 c5967l0, Activity activity, Bundle bundle) {
        this.f20786a = activity;
        this.f20787b = bundle;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f20786a, this.f20787b);
    }
}
