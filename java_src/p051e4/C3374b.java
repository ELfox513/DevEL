package p051e4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import p228y3.C7409b;
/* renamed from: e4.b */
/* loaded from: classes.dex */
public final class C3374b implements Parcelable.Creator<C3373a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3373a[] newArray(int i) {
        return new C3373a[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3373a createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        DriveId driveId = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        if (m1504m != 5) {
                            if (m1504m != 7) {
                                if (m1504m != 8) {
                                    C7409b.m1492y(parcel, m1498s);
                                } else {
                                    str = C7409b.m1510g(parcel, m1498s);
                                }
                            } else {
                                z = C7409b.m1503n(parcel, m1498s);
                            }
                        } else {
                            driveId = (DriveId) C7409b.m1511f(parcel, m1498s, DriveId.CREATOR);
                        }
                    } else {
                        i2 = C7409b.m1496u(parcel, m1498s);
                    }
                } else {
                    i = C7409b.m1496u(parcel, m1498s);
                }
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) C7409b.m1511f(parcel, m1498s, ParcelFileDescriptor.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3373a(parcelFileDescriptor, i, i2, driveId, z, str);
    }
}
