package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.j0 */
/* loaded from: classes2.dex */
public final class C5893j0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f25848a;

    public C5893j0(C5967l0 c5967l0, Activity activity) {
        this.f25848a = activity;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f25848a);
    }
}
