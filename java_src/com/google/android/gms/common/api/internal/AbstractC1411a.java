package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import p194u3.AbstractC6900f;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6885b;
import p194u3.InterfaceC6909l;
import p203v3.InterfaceC7002d;
import p220x3.C7297q;
/* renamed from: com.google.android.gms.common.api.internal.a */
/* loaded from: classes.dex */
public abstract class AbstractC1411a<R extends InterfaceC6909l, A extends C6883a.InterfaceC6885b> extends BasePendingResult<R> implements InterfaceC7002d<R> {

    /* renamed from: p */
    public final C6883a.C6886c<A> f7737p;

    /* renamed from: q */
    public final C6883a<?> f7738q;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p203v3.InterfaceC7002d
    /* renamed from: b */
    public /* bridge */ /* synthetic */ void mo2720b(@RecentlyNonNull Object obj) {
        super.m23029h((InterfaceC6909l) obj);
    }

    /* renamed from: n */
    public abstract void mo13079n(@RecentlyNonNull A a);

    /* renamed from: o */
    public void m23017o(@RecentlyNonNull R r) {
    }

    public AbstractC1411a(@RecentlyNonNull C6883a<?> c6883a, @RecentlyNonNull AbstractC6900f abstractC6900f) {
        super((AbstractC6900f) C7297q.m1882k(abstractC6900f, "GoogleApiClient must not be null"));
        C7297q.m1882k(c6883a, "Api must not be null");
        this.f7737p = (C6883a.C6886c<A>) c6883a.m3069b();
        this.f7738q = c6883a;
    }

    /* renamed from: q */
    public final void m23015q(RemoteException remoteException) {
        mo2721a(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    @Override // p203v3.InterfaceC7002d
    /* renamed from: a */
    public final void mo2721a(@RecentlyNonNull Status status) {
        C7297q.m1891b(!status.m23033c1(), "Failed result must not be success");
        R mo2634e = mo2634e(status);
        m23029h(mo2634e);
        m23017o(mo2634e);
    }

    /* renamed from: p */
    public final void m23016p(@RecentlyNonNull A a) {
        try {
            mo13079n(a);
        } catch (DeadObjectException e) {
            m23015q(e);
            throw e;
        } catch (RemoteException e2) {
            m23015q(e2);
        }
    }
}
