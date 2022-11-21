package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.cz2 */
/* loaded from: classes2.dex */
public final class cz2 extends AbstractC7408a {
    public static final Parcelable.Creator<cz2> CREATOR = new dz2();

    /* renamed from: a */
    public final int f21995a;

    /* renamed from: b */
    public final byte[] f21996b;

    /* renamed from: d */
    public final int f21997d;

    public cz2(int i, byte[] bArr, int i2) {
        this.f21995a = i;
        this.f21996b = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f21997d = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f21995a);
        C7411c.m1484g(parcel, 2, this.f21996b, false);
        C7411c.m1479l(parcel, 3, this.f21997d);
        C7411c.m1489b(parcel, m1490a);
    }

    public cz2(byte[] bArr, int i) {
        this(1, null, 1);
    }
}
