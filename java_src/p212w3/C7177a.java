package p212w3;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import p228y3.C7409b;
/* renamed from: w3.a */
/* loaded from: classes.dex */
public final class C7177a implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                strArr = C7409b.m1509h(parcel, m1498s);
            } else if (m1504m == 2) {
                cursorWindowArr = (CursorWindow[]) C7409b.m1507j(parcel, m1498s, CursorWindow.CREATOR);
            } else if (m1504m == 3) {
                i2 = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 4) {
                bundle = C7409b.m1515b(parcel, m1498s);
            } else if (m1504m != 1000) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        DataHolder dataHolder = new DataHolder(i, strArr, cursorWindowArr, i2, bundle);
        dataHolder.m23012Z0();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
