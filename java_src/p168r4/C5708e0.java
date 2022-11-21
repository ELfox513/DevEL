package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.e0 */
/* loaded from: classes2.dex */
public final class C5708e0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f22710a;

    public C5708e0(C5967l0 c5967l0, Activity activity) {
        this.f22710a = activity;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f22710a);
    }
}
