package p203v3;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: v3.b1 */
/* loaded from: classes.dex */
public abstract class AbstractC6997b1 {

    /* renamed from: a */
    public final int f35906a;

    public AbstractC6997b1(int i) {
        this.f35906a = i;
    }

    /* renamed from: e */
    public static /* synthetic */ Status m2769e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: a */
    public abstract void mo2584a(Status status);

    /* renamed from: b */
    public abstract void mo2583b(Exception exc);

    /* renamed from: c */
    public abstract void mo2582c(C7046s c7046s, boolean z);

    /* renamed from: d */
    public abstract void mo2581d(C7000c0<?> c7000c0);
}
