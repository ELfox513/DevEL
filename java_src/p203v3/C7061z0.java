package p203v3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import p097j5.C4348j;
import p185t3.C6738d;
import p194u3.C6883a;
/* renamed from: v3.z0 */
/* loaded from: classes.dex */
public final class C7061z0<ResultT> extends AbstractC7030m0 {

    /* renamed from: b */
    public final AbstractC7041q<C6883a.InterfaceC6885b, ResultT> f36057b;

    /* renamed from: c */
    public final C4348j<ResultT> f36058c;

    /* renamed from: d */
    public final InterfaceC7035o f36059d;

    @Override // p203v3.AbstractC6997b1
    /* renamed from: a */
    public final void mo2584a(Status status) {
        this.f36058c.m16772d(this.f36059d.mo2635a(status));
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: b */
    public final void mo2583b(Exception exc) {
        this.f36058c.m16772d(exc);
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: c */
    public final void mo2582c(C7046s c7046s, boolean z) {
        c7046s.m2615b(this.f36058c, z);
    }

    @Override // p203v3.AbstractC7030m0
    /* renamed from: f */
    public final C6738d[] mo2580f(C7000c0<?> c7000c0) {
        return this.f36057b.m2625d();
    }

    @Override // p203v3.AbstractC7030m0
    /* renamed from: g */
    public final boolean mo2579g(C7000c0<?> c7000c0) {
        return this.f36057b.m2626c();
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: d */
    public final void mo2581d(C7000c0<?> c7000c0) {
        try {
            this.f36057b.mo2588b(c7000c0.m2731s(), this.f36058c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            mo2584a(AbstractC6997b1.m2769e(e2));
        } catch (RuntimeException e3) {
            this.f36058c.m16772d(e3);
        }
    }

    public C7061z0(int i, AbstractC7041q<C6883a.InterfaceC6885b, ResultT> abstractC7041q, C4348j<ResultT> c4348j, InterfaceC7035o interfaceC7035o) {
        super(i);
        this.f36058c = c4348j;
        this.f36057b = abstractC7041q;
        this.f36059d = interfaceC7035o;
        if (i == 2 && abstractC7041q.m2626c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }
}
