package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
import p228y3.C7411c;
/* renamed from: g5.fa */
/* loaded from: classes2.dex */
public final class C3664fa implements Parcelable.Creator<C3652ea> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3652ea[] newArray(int i) {
        return new C3652ea[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3652ea createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 4:
                    l = C7409b.m1494w(parcel, m1498s);
                    break;
                case 5:
                    f = C7409b.m1499r(parcel, m1498s);
                    break;
                case 6:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    d = C7409b.m1501p(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3652ea(i, str, j, l, f, str2, str3, d);
    }

    /* renamed from: a */
    public static void m18380a(C3652ea c3652ea, Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, c3652ea.f16462a);
        C7411c.m1473r(parcel, 2, c3652ea.f16463b, false);
        C7411c.m1476o(parcel, 3, c3652ea.f16464d);
        C7411c.m1475p(parcel, 4, c3652ea.f16465k, false);
        C7411c.m1481j(parcel, 5, null, false);
        C7411c.m1473r(parcel, 6, c3652ea.f16466p, false);
        C7411c.m1473r(parcel, 7, c3652ea.f16467q, false);
        C7411c.m1483h(parcel, 8, c3652ea.f16468r, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
