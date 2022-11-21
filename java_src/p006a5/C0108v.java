package p006a5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: a5.v */
/* loaded from: classes2.dex */
public final class C0108v implements Parcelable.Creator<C0109w> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C0109w[] newArray(int i) {
        return new C0109w[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C0109w createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Bundle bundle = null;
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
                bundle = C7409b.m1515b(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C0109w(bundle, iBinder);
    }
}
