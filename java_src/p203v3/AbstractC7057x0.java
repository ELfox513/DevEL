package p203v3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import p097j5.C4348j;
import p194u3.C6894b;
/* renamed from: v3.x0 */
/* loaded from: classes.dex */
public abstract class AbstractC7057x0<T> extends AbstractC7030m0 {

    /* renamed from: b */
    public final C4348j<T> f36052b;

    public AbstractC7057x0(int i, C4348j<T> c4348j) {
        super(i);
        this.f36052b = c4348j;
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: a */
    public final void mo2584a(Status status) {
        this.f36052b.m16772d(new C6894b(status));
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: b */
    public final void mo2583b(Exception exc) {
        this.f36052b.m16772d(exc);
    }

    /* renamed from: h */
    public abstract void mo2585h(C7000c0<?> c7000c0);

    @Override // p203v3.AbstractC6997b1
    /* renamed from: d */
    public final void mo2581d(C7000c0<?> c7000c0) {
        try {
            mo2585h(c7000c0);
        } catch (DeadObjectException e) {
            mo2584a(AbstractC6997b1.m2769e(e));
            throw e;
        } catch (RemoteException e2) {
            mo2584a(AbstractC6997b1.m2769e(e2));
        } catch (RuntimeException e3) {
            this.f36052b.m16772d(e3);
        }
    }
}
