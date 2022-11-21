package p235z2;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: z2.k */
/* loaded from: classes.dex */
public final class C7592k implements Parcelable.Creator<C7591j> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7591j[] newArray(int i) {
        return new C7591j[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7591j createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 3:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 4:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 6:
                    f = C7409b.m1500q(parcel, m1498s);
                    break;
                case 7:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 8:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 9:
                    z5 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 10:
                    z6 = C7409b.m1503n(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7591j(z, z2, str, z3, f, i, z4, z5, z6);
    }
}
