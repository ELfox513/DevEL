package p168r4;

import android.app.Activity;
import android.app.Application;
/* renamed from: r4.g0 */
/* loaded from: classes2.dex */
public final class C5783g0 implements InterfaceC5930k0 {

    /* renamed from: a */
    public final /* synthetic */ Activity f23812a;

    public C5783g0(C5967l0 c5967l0, Activity activity) {
        this.f23812a = activity;
    }

    @Override // p168r4.InterfaceC5930k0
    /* renamed from: a */
    public final void mo10126a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f23812a);
    }
}
