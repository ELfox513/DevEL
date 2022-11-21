package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: g5.d */
/* loaded from: classes2.dex */
public final class C3629d implements Parcelable.Creator<C3617c> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3617c[] newArray(int i) {
        return new C3617c[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3617c createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        String str = null;
        String str2 = null;
        C3652ea c3652ea = null;
        String str3 = null;
        C3833u c3833u = null;
        C3833u c3833u2 = null;
        C3833u c3833u3 = null;
        boolean z = false;
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
                    c3652ea = (C3652ea) C7409b.m1511f(parcel, m1498s, C3652ea.CREATOR);
                    break;
                case 5:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 6:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 7:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    c3833u = (C3833u) C7409b.m1511f(parcel, m1498s, C3833u.CREATOR);
                    break;
                case 9:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 10:
                    c3833u2 = (C3833u) C7409b.m1511f(parcel, m1498s, C3833u.CREATOR);
                    break;
                case 11:
                    j3 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 12:
                    c3833u3 = (C3833u) C7409b.m1511f(parcel, m1498s, C3833u.CREATOR);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3617c(str, str2, c3652ea, j, z, str3, c3833u, j2, c3833u2, j3, c3833u3);
    }
}
