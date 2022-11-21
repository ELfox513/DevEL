package p220x3;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
import p221x4.BinderC7326b;
/* renamed from: x3.j */
/* loaded from: classes.dex */
public interface InterfaceC7273j extends IInterface {

    /* renamed from: x3.j$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC7274a extends BinderC7326b implements InterfaceC7273j {
        @RecentlyNonNull
        /* renamed from: o0 */
        public static InterfaceC7273j m1928o0(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof InterfaceC7273j) {
                return (InterfaceC7273j) queryLocalInterface;
            }
            return new C7308t1(iBinder);
        }
    }

    @RecentlyNonNull
    /* renamed from: a */
    Account mo1857a();
}
