package p194u3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import p185t3.C6734b;
import p228y3.C7409b;
/* renamed from: u3.t */
/* loaded from: classes.dex */
public final class C6917t implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        C6734b c6734b = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                str = C7409b.m1510g(parcel, m1498s);
            } else if (m1504m == 3) {
                pendingIntent = (PendingIntent) C7409b.m1511f(parcel, m1498s, PendingIntent.CREATOR);
            } else if (m1504m == 4) {
                c6734b = (C6734b) C7409b.m1511f(parcel, m1498s, C6734b.CREATOR);
            } else if (m1504m != 1000) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new Status(i, i2, str, pendingIntent, c6734b);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
