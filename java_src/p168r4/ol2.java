package p168r4;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.ol2 */
/* loaded from: classes2.dex */
public final class ol2 {
    /* renamed from: a */
    public static <T> void m8771a(AtomicReference<T> atomicReference, nl2<T> nl2Var) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            nl2Var.mo4181a(t);
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        } catch (NullPointerException e2) {
            cm0.m12436g("NullPointerException occurs when invoking a method from a delegating listener.", e2);
        }
    }
}
