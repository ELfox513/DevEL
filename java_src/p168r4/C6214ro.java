package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.ro */
/* loaded from: classes2.dex */
public final class C6214ro implements Parcelable.Creator<C6177qo> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6177qo[] newArray(int i) {
        return new C6177qo[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6177qo createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        if (m1504m != 5) {
                            if (m1504m != 6) {
                                C7409b.m1492y(parcel, m1498s);
                            } else {
                                z3 = C7409b.m1503n(parcel, m1498s);
                            }
                        } else {
                            j = C7409b.m1495v(parcel, m1498s);
                        }
                    } else {
                        z2 = C7409b.m1503n(parcel, m1498s);
                    }
                } else {
                    z = C7409b.m1503n(parcel, m1498s);
                }
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) C7409b.m1511f(parcel, m1498s, ParcelFileDescriptor.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6177qo(parcelFileDescriptor, z, z2, j, z3);
    }
}
