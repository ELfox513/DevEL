package p168r4;

import android.os.RemoteException;
/* renamed from: r4.hy */
/* loaded from: classes2.dex */
public final class RunnableC5854hy implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BinderC5927jy f24905a;

    public RunnableC5854hy(BinderC5927jy binderC5927jy) {
        this.f24905a = binderC5927jy;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (BinderC5964ky.m9840f7(this.f24905a.f26174a) != null) {
            try {
                BinderC5964ky.m9840f7(this.f24905a.f26174a).mo5598D(1);
            } catch (RemoteException e) {
                cm0.m12436g("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
