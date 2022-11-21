package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0317d;
/* renamed from: androidx.savedstate.a */
/* loaded from: classes.dex */
public final class C0367a {

    /* renamed from: a */
    public final InterfaceC0368b f1312a;

    /* renamed from: b */
    public final SavedStateRegistry f1313b = new SavedStateRegistry();

    /* renamed from: a */
    public static C0367a m26711a(InterfaceC0368b interfaceC0368b) {
        return new C0367a(interfaceC0368b);
    }

    /* renamed from: b */
    public SavedStateRegistry m26710b() {
        return this.f1313b;
    }

    /* renamed from: d */
    public void m26708d(Bundle bundle) {
        this.f1313b.m26715c(bundle);
    }

    /* renamed from: c */
    public void m26709c(Bundle bundle) {
        AbstractC0317d lifecycle = this.f1312a.getLifecycle();
        if (lifecycle.mo26794b() == AbstractC0317d.EnumC0319b.INITIALIZED) {
            lifecycle.mo26795a(new Recreator(this.f1312a));
            this.f1313b.m26716b(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public C0367a(InterfaceC0368b interfaceC0368b) {
        this.f1312a = interfaceC0368b;
    }
}
