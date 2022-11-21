package p220x3;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p220x3.InterfaceC7273j;
/* renamed from: x3.a */
/* loaded from: classes.dex */
public class BinderC7240a extends InterfaceC7273j.AbstractBinderC7274a {
    @RecentlyNullable
    /* renamed from: t0 */
    public static Account m2041t0(@RecentlyNonNull InterfaceC7273j interfaceC7273j) {
        Account account = null;
        if (interfaceC7273j != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = interfaceC7273j.mo1857a();
                } catch (RemoteException unused) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }
}
