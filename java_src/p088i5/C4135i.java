package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: i5.i */
/* loaded from: classes2.dex */
public final class C4135i implements Parcelable.Creator<C4134h> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4134h createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        ArrayList<String> arrayList = null;
        String str = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                arrayList = C7409b.m1508i(parcel, m1498s);
            } else if (m1504m != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4134h(arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C4134h[] newArray(int i) {
        return new C4134h[i];
    }
}
