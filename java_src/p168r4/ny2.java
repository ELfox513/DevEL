package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.ny2 */
/* loaded from: classes2.dex */
public final class ny2 extends AbstractC7408a {
    public static final Parcelable.Creator<ny2> CREATOR = new oy2();

    /* renamed from: a */
    public final int f28716a;

    /* renamed from: b */
    public final byte[] f28717b;

    public ny2(int i, byte[] bArr) {
        this.f28716a = i;
        this.f28717b = bArr;
    }

    public ny2(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f28716a);
        C7411c.m1484g(parcel, 2, this.f28717b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
