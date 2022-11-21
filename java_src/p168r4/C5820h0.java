package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.h0 */
/* loaded from: classes2.dex */
public final class C5820h0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f24384a;

    public C5820h0(C5967l0 c5967l0, Activity activity) {
        this.f24384a = activity;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f24384a);
    }
}
