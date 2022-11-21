package p202v2;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: v2.m */
/* loaded from: classes.dex */
public final class C6990m implements Parcelable.Creator<C6983g> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6983g[] newArray(int i) {
        return new C6983g[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6983g createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        boolean z = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        C7409b.m1492y(parcel, m1498s);
                    } else {
                        iBinder2 = C7409b.m1497t(parcel, m1498s);
                    }
                } else {
                    iBinder = C7409b.m1497t(parcel, m1498s);
                }
            } else {
                z = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6983g(z, iBinder, iBinder2);
    }
}
