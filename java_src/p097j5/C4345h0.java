package p097j5;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p203v3.InterfaceC7014h;
/* renamed from: j5.h0 */
/* loaded from: classes2.dex */
public final class C4345h0 extends LifecycleCallback {

    /* renamed from: b */
    public final List<WeakReference<InterfaceC4337d0<?>>> f18215b;

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public final void mo2604k() {
        synchronized (this.f18215b) {
            for (WeakReference<InterfaceC4337d0<?>> weakReference : this.f18215b) {
                InterfaceC4337d0<?> interfaceC4337d0 = weakReference.get();
                if (interfaceC4337d0 != null) {
                    interfaceC4337d0.mo16750a();
                }
            }
            this.f18215b.clear();
        }
    }

    /* renamed from: m */
    public final <T> void m16803m(InterfaceC4337d0<T> interfaceC4337d0) {
        synchronized (this.f18215b) {
            this.f18215b.add(new WeakReference<>(interfaceC4337d0));
        }
    }

    public C4345h0(InterfaceC7014h interfaceC7014h) {
        super(interfaceC7014h);
        this.f18215b = new ArrayList();
        this.f7736a.mo2633a("TaskOnStopCallback", this);
    }

    /* renamed from: l */
    public static C4345h0 m16804l(Activity activity) {
        InterfaceC7014h m23020c = LifecycleCallback.m23020c(activity);
        C4345h0 c4345h0 = (C4345h0) m23020c.mo2631c("TaskOnStopCallback", C4345h0.class);
        if (c4345h0 == null) {
            return new C4345h0(m23020c);
        }
        return c4345h0;
    }
}
