package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: r4.cj0 */
/* loaded from: classes2.dex */
public final class cj0 implements Parcelable.Creator<bj0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bj0[] newArray(int i) {
        return new bj0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bj0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 4:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 5:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 6:
                    arrayList = C7409b.m1508i(parcel, m1498s);
                    break;
                case 7:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 8:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 9:
                    arrayList2 = C7409b.m1508i(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new bj0(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }
}
