package p202v2;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: v2.j */
/* loaded from: classes.dex */
public final class C6987j implements Parcelable.Creator<C6974a> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6974a[] newArray(int i) {
        return new C6974a[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6974a createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean z = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    iBinder = C7409b.m1497t(parcel, m1498s);
                }
            } else {
                z = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6974a(z, iBinder);
    }
}
