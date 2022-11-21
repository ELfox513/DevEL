package p220x3;

import android.os.Bundle;
import android.os.Parcel;
import p221x4.BinderC7326b;
import p221x4.C7327c;
/* renamed from: x3.s0 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC7304s0 extends BinderC7326b implements InterfaceC7280l {
    public AbstractBinderC7304s0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // p221x4.BinderC7326b
    /* renamed from: j0 */
    public final boolean mo1837j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo1924f3(parcel.readInt(), parcel.readStrongBinder(), (C7269h1) C7327c.m1834c(parcel, C7269h1.CREATOR));
            } else {
                mo1923v0(parcel.readInt(), (Bundle) C7327c.m1834c(parcel, Bundle.CREATOR));
            }
        } else {
            mo1925D3(parcel.readInt(), parcel.readStrongBinder(), (Bundle) C7327c.m1834c(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
