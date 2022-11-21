package p220x3;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import p221x4.C7325a;
import p221x4.C7327c;
/* renamed from: x3.t1 */
/* loaded from: classes.dex */
public final class C7308t1 extends C7325a implements InterfaceC7273j {
    public C7308t1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // p220x3.InterfaceC7273j
    /* renamed from: a */
    public final Account mo1857a() {
        Parcel m1839j0 = m1839j0(2, m1838o0());
        Account account = (Account) C7327c.m1834c(m1839j0, Account.CREATOR);
        m1839j0.recycle();
        return account;
    }
}
