package p203v3;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.util.concurrent.atomic.AtomicReference;
import p185t3.C6734b;
import p185t3.C6744g;
import p213w4.HandlerC7182e;
/* renamed from: v3.h1 */
/* loaded from: classes.dex */
public abstract class AbstractDialogInterface$OnCancelListenerC7016h1 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    public volatile boolean f35969b;

    /* renamed from: d */
    public final AtomicReference<C7004d1> f35970d;

    /* renamed from: k */
    public final Handler f35971k;

    /* renamed from: p */
    public final C6744g f35972p;

    /* renamed from: n */
    public static final int m2662n(C7004d1 c7004d1) {
        if (c7004d1 == null) {
            return -1;
        }
        return c7004d1.m2717a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo2605j() {
        super.mo2605j();
        this.f35969b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public void mo2604k() {
        super.mo2604k();
        this.f35969b = false;
    }

    /* renamed from: o */
    public abstract void mo2603o(C6734b c6734b, int i);

    /* renamed from: p */
    public abstract void mo2602p();

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public final void mo2667e(int i, int i2, Intent intent) {
        C7004d1 c7004d1 = this.f35970d.get();
        if (i != 1) {
            if (i == 2) {
                int mo3489g = this.f35972p.mo3489g(m23021b());
                if (mo3489g == 0) {
                    m2664l();
                    return;
                } else if (c7004d1 == null) {
                    return;
                } else {
                    if (c7004d1.m2716b().m3528X0() == 18 && mo3489g == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            m2664l();
            return;
        } else if (i2 == 0) {
            if (c7004d1 == null) {
                return;
            }
            int i3 = 13;
            if (intent != null) {
                i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
            }
            m2663m(new C6734b(i3, null, c7004d1.m2716b().toString()), m2662n(c7004d1));
            return;
        }
        if (c7004d1 != null) {
            m2663m(c7004d1.m2716b(), c7004d1.m2717a());
        }
    }

    /* renamed from: l */
    public final void m2664l() {
        this.f35970d.set(null);
        mo2602p();
    }

    /* renamed from: m */
    public final void m2663m(C6734b c6734b, int i) {
        this.f35970d.set(null);
        mo2603o(c6734b, i);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m2663m(new C6734b(13, null), m2662n(this.f35970d.get()));
    }

    /* renamed from: q */
    public final void m2661q(C6734b c6734b, int i) {
        C7004d1 c7004d1 = new C7004d1(c6734b, i);
        if (C7013g1.m2669a(this.f35970d, null, c7004d1)) {
            this.f35971k.post(new RunnableC7010f1(this, c7004d1));
        }
    }

    public AbstractDialogInterface$OnCancelListenerC7016h1(InterfaceC7014h interfaceC7014h, C6744g c6744g) {
        super(interfaceC7014h);
        this.f35970d = new AtomicReference<>(null);
        this.f35971k = new HandlerC7182e(Looper.getMainLooper());
        this.f35972p = c6744g;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: f */
    public final void mo2666f(Bundle bundle) {
        C7004d1 c7004d1;
        super.mo2666f(bundle);
        if (bundle != null) {
            AtomicReference<C7004d1> atomicReference = this.f35970d;
            if (bundle.getBoolean("resolving_error", false)) {
                c7004d1 = new C7004d1(new C6734b(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1));
            } else {
                c7004d1 = null;
            }
            atomicReference.set(c7004d1);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public final void mo2665i(Bundle bundle) {
        super.mo2665i(bundle);
        C7004d1 c7004d1 = this.f35970d.get();
        if (c7004d1 == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", c7004d1.m2717a());
        bundle.putInt("failed_status", c7004d1.m2716b().m3528X0());
        bundle.putParcelable("failed_resolution", c7004d1.m2716b().m3526Z0());
    }
}
