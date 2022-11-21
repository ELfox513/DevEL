package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
import p228y3.C7411c;
/* renamed from: g5.v */
/* loaded from: classes2.dex */
public final class C3845v implements Parcelable.Creator<C3833u> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3833u[] newArray(int i) {
        return new C3833u[i];
    }

    /* renamed from: a */
    public static void m17932a(C3833u c3833u, Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, c3833u.f16970a, false);
        C7411c.m1474q(parcel, 3, c3833u.f16971b, i, false);
        C7411c.m1473r(parcel, 4, c3833u.f16972d, false);
        C7411c.m1476o(parcel, 5, c3833u.f16973k);
        C7411c.m1489b(parcel, m1490a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3833u createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        C3809s c3809s = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        if (m1504m != 5) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            j = C7409b.m1495v(parcel, m1498s);
                        }
                    } else {
                        str2 = C7409b.m1510g(parcel, m1498s);
                    }
                } else {
                    c3809s = (C3809s) C7409b.m1511f(parcel, m1498s, C3809s.CREATOR);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3833u(str, c3809s, str2, j);
    }
}
