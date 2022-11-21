package p203v3;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* renamed from: v3.o1 */
/* loaded from: classes.dex */
public final class RunnableC7037o1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f36016a;

    /* renamed from: b */
    public final /* synthetic */ String f36017b;

    /* renamed from: d */
    public final /* synthetic */ C7040p1 f36018d;

    public RunnableC7037o1(C7040p1 c7040p1, LifecycleCallback lifecycleCallback, String str) {
        this.f36018d = c7040p1;
        this.f36016a = lifecycleCallback;
        this.f36017b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.f36018d.f36022k0;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f36016a;
            bundle = this.f36018d.f36023l0;
            if (bundle != null) {
                bundle3 = this.f36018d.f36023l0;
                bundle2 = bundle3.getBundle(this.f36017b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo2666f(bundle2);
        }
        i2 = this.f36018d.f36022k0;
        if (i2 >= 2) {
            this.f36016a.mo2605j();
        }
        i3 = this.f36018d.f36022k0;
        if (i3 >= 3) {
            this.f36016a.mo2606h();
        }
        i4 = this.f36018d.f36022k0;
        if (i4 >= 4) {
            this.f36016a.mo2604k();
        }
        i5 = this.f36018d.f36022k0;
        if (i5 >= 5) {
            this.f36016a.m23018g();
        }
    }
}
