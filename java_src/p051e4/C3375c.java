package p051e4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import p228y3.C7409b;
/* renamed from: e4.c */
/* loaded from: classes.dex */
public final class C3375c implements Parcelable.Creator<DriveId> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveId[] newArray(int i) {
        return new DriveId[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveId createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        int i = -1;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        if (m1504m != 5) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            i = C7409b.m1496u(parcel, m1498s);
                        }
                    } else {
                        j2 = C7409b.m1495v(parcel, m1498s);
                    }
                } else {
                    j = C7409b.m1495v(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new DriveId(str, j, j2, i);
    }
}
