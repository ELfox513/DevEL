package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.w60 */
/* loaded from: classes2.dex */
public final class w60 implements Parcelable.Creator<v60> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ v60[] newArray(int i) {
        return new v60[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ v60 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 4:
                    bArr = C7409b.m1514c(parcel, m1498s);
                    break;
                case 5:
                    strArr = C7409b.m1509h(parcel, m1498s);
                    break;
                case 6:
                    strArr2 = C7409b.m1509h(parcel, m1498s);
                    break;
                case 7:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 8:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new v60(z, str, i, bArr, strArr, strArr2, z2, j);
    }
}
