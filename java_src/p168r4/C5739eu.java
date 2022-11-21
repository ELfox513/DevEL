package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.eu */
/* loaded from: classes2.dex */
public final class C5739eu extends AbstractC7408a {
    public static final Parcelable.Creator<C5739eu> CREATOR = new C5776fu();

    /* renamed from: a */
    public final int f23140a;

    public C5739eu(int i) {
        this.f23140a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 2, this.f23140a);
        C7411c.m1489b(parcel, m1490a);
    }
}
