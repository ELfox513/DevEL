package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.r70 */
/* loaded from: classes2.dex */
public final class r70 implements Parcelable.Creator<q70> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ q70[] newArray(int i) {
        return new q70[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ q70 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    bundle = C7409b.m1515b(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new q70(str, bundle);
    }
}
