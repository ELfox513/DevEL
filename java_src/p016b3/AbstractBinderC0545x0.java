package p016b3;

import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p168r4.BinderC6192r2;
import p168r4.C6229s2;
/* renamed from: b3.x0 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0545x0 extends BinderC6192r2 implements InterfaceC0548y0 {
    public AbstractBinderC0545x0() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzf(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else {
            boolean zze = zze(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            C6229s2.m7250b(parcel2, zze);
        }
        return true;
    }
}
