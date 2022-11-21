package p004a3;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: a3.d */
/* loaded from: classes.dex */
public final class C0063d implements Parcelable.Creator<C0064e> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0064e[] newArray(int i) {
        return new C0064e[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0064e createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Intent intent = null;
        IBinder iBinder = null;
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
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 9:
                    intent = (Intent) C7409b.m1511f(parcel, m1498s, Intent.CREATOR);
                    break;
                case 10:
                    iBinder = C7409b.m1497t(parcel, m1498s);
                    break;
                case 11:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C0064e(str, str2, str3, str4, str5, str6, str7, intent, iBinder, z);
    }
}
