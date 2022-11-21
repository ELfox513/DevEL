package p070g5;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;
import p018b5.BinderC0811p0;
import p018b5.C0828q0;
/* renamed from: g5.f3 */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC3657f3 extends BinderC0811p0 implements InterfaceC3669g3 {
    public AbstractBinderC3657f3() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // p018b5.BinderC0811p0
    /* renamed from: j0 */
    public final boolean mo18385j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo17952M3((C3833u) C0828q0.m25479a(parcel, C3833u.CREATOR), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo17951N6((C3652ea) C0828q0.m25479a(parcel, C3652ea.CREATOR), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo17956F4((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                mo17950T2((C3833u) C0828q0.m25479a(parcel, C3833u.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo17943e4((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<C3652ea> mo17941g4 = mo17941g4((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR), C0828q0.m25474f(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo17941g4);
                return true;
            case 9:
                byte[] mo17949V1 = mo17949V1((C3833u) C0828q0.m25479a(parcel, C3833u.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(mo17949V1);
                return true;
            case 10:
                mo17953L3(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String mo17940g6 = mo17940g6((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(mo17940g6);
                return true;
            case 12:
                mo17947a5((C3617c) C0828q0.m25479a(parcel, C3617c.CREATOR), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo17945c2((C3617c) C0828q0.m25479a(parcel, C3617c.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<C3652ea> mo17955H1 = mo17955H1(parcel.readString(), parcel.readString(), C0828q0.m25474f(parcel), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo17955H1);
                return true;
            case 15:
                List<C3652ea> mo17933v1 = mo17933v1(parcel.readString(), parcel.readString(), parcel.readString(), C0828q0.m25474f(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo17933v1);
                return true;
            case 16:
                List<C3617c> mo17948Y5 = mo17948Y5(parcel.readString(), parcel.readString(), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo17948Y5);
                return true;
            case 17:
                List<C3617c> mo17937p2 = mo17937p2(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(mo17937p2);
                return true;
            case 18:
                mo17958C5((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                mo17939j5((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), (C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                mo17935q3((C3784pa) C0828q0.m25479a(parcel, C3784pa.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
