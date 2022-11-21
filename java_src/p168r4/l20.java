package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.l20 */
/* loaded from: classes2.dex */
public abstract class l20 extends BinderC6192r2 implements m20 {
    public l20() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        u30 u30Var;
        switch (i) {
            case 2:
                float mo8319c = mo8319c();
                parcel2.writeNoException();
                parcel2.writeFloat(mo8319c);
                return true;
            case 3:
                zzf(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                InterfaceC3512a mo8316g = mo8316g();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8316g);
                return true;
            case 5:
                float mo8318f = mo8318f();
                parcel2.writeNoException();
                parcel2.writeFloat(mo8318f);
                return true;
            case 6:
                float mo8313j = mo8313j();
                parcel2.writeNoException();
                parcel2.writeFloat(mo8313j);
                return true;
            case 7:
                InterfaceC6000lx mo8315h = mo8315h();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8315h);
                return true;
            case 8:
                boolean mo8314i = mo8314i();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo8314i);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    u30Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    if (queryLocalInterface instanceof u30) {
                        u30Var = (u30) queryLocalInterface;
                    } else {
                        u30Var = new u30(readStrongBinder);
                    }
                }
                mo8320H4(u30Var);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
