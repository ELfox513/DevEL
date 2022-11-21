package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.rf0 */
/* loaded from: classes2.dex */
public final class rf0 implements Parcelable.Creator<qf0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qf0[] newArray(int i) {
        return new qf0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qf0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    iBinder2 = C7409b.m1497t(parcel, m1498s);
                }
            } else {
                iBinder = C7409b.m1497t(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new qf0(iBinder, iBinder2);
    }
}
