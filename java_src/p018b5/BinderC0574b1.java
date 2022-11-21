package p018b5;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: b5.b1 */
/* loaded from: classes2.dex */
public final class BinderC0574b1 extends AbstractBinderC0676h1 {

    /* renamed from: a */
    public final AtomicReference<Bundle> f1740a = new AtomicReference<>();

    /* renamed from: b */
    public boolean f1741b;

    /* renamed from: L0 */
    public static final <T> T m26153L0(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
            throw e;
        }
    }

    /* renamed from: t0 */
    public final String m26151t0(long j) {
        return (String) m26153L0(m26152o0(j), String.class);
    }

    @Override // p018b5.InterfaceC0693i1
    /* renamed from: C0 */
    public final void mo25817C0(Bundle bundle) {
        synchronized (this.f1740a) {
            this.f1740a.set(bundle);
            this.f1741b = true;
            this.f1740a.notify();
        }
    }

    /* renamed from: o0 */
    public final Bundle m26152o0(long j) {
        Bundle bundle;
        synchronized (this.f1740a) {
            if (!this.f1741b) {
                try {
                    this.f1740a.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.f1740a.get();
        }
        return bundle;
    }
}
