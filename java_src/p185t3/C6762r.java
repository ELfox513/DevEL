package p185t3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: t3.r */
/* loaded from: classes.dex */
public final class C6762r implements Parcelable.Creator<C6734b> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6734b createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 3) {
                pendingIntent = (PendingIntent) C7409b.m1511f(parcel, m1498s, PendingIntent.CREATOR);
            } else if (m1504m != 4) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6734b(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6734b[] newArray(int i) {
        return new C6734b[i];
    }
}
