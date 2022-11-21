package p203v3;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* renamed from: v3.m1 */
/* loaded from: classes.dex */
public final class RunnableC7031m1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f36005a;

    /* renamed from: b */
    public final /* synthetic */ String f36006b;

    /* renamed from: d */
    public final /* synthetic */ FragmentC7034n1 f36007d;

    public RunnableC7031m1(FragmentC7034n1 fragmentC7034n1, LifecycleCallback lifecycleCallback, String str) {
        this.f36007d = fragmentC7034n1;
        this.f36005a = lifecycleCallback;
        this.f36006b = str;
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
        i = this.f36007d.f36011b;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f36005a;
            bundle = this.f36007d.f36012d;
            if (bundle != null) {
                bundle3 = this.f36007d.f36012d;
                bundle2 = bundle3.getBundle(this.f36006b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo2666f(bundle2);
        }
        i2 = this.f36007d.f36011b;
        if (i2 >= 2) {
            this.f36005a.mo2605j();
        }
        i3 = this.f36007d.f36011b;
        if (i3 >= 3) {
            this.f36005a.mo2606h();
        }
        i4 = this.f36007d.f36011b;
        if (i4 >= 4) {
            this.f36005a.mo2604k();
        }
        i5 = this.f36007d.f36011b;
        if (i5 >= 5) {
            this.f36005a.m23018g();
        }
    }
}
