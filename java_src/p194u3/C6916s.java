package p194u3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import p228y3.C7409b;
/* renamed from: u3.s */
/* loaded from: classes.dex */
public final class C6916s implements Parcelable.Creator<Scope> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Scope createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new Scope(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Scope[] newArray(int i) {
        return new Scope[i];
    }
}
