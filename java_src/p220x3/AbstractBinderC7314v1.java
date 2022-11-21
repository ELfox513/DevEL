package p220x3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p221x4.BinderC7326b;
import p221x4.C7327c;
/* renamed from: x3.v1 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC7314v1 extends BinderC7326b implements InterfaceC7317w1 {
    public AbstractBinderC7314v1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    @Override // p221x4.BinderC7326b
    /* renamed from: j0 */
    public final boolean mo1837j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int mo1846c = mo1846c();
            parcel2.writeNoException();
            parcel2.writeInt(mo1846c);
        } else {
            InterfaceC3512a mo1845e = mo1845e();
            parcel2.writeNoException();
            C7327c.m1832e(parcel2, mo1845e);
        }
        return true;
    }

    /* renamed from: o0 */
    public static InterfaceC7317w1 m1850o0(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        if (queryLocalInterface instanceof InterfaceC7317w1) {
            return (InterfaceC7317w1) queryLocalInterface;
        }
        return new C7311u1(iBinder);
    }
}
