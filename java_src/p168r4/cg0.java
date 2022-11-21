package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: r4.cg0 */
/* loaded from: classes2.dex */
public final class cg0 implements Parcelable.Creator<bg0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bg0[] newArray(int i) {
        return new bg0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bg0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    arrayList = C7409b.m1508i(parcel, m1498s);
                }
            } else {
                z = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new bg0(z, arrayList);
    }
}
