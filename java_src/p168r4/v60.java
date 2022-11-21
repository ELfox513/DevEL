package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.v60 */
/* loaded from: classes2.dex */
public final class v60 extends AbstractC7408a {
    public static final Parcelable.Creator<v60> CREATOR = new w60();

    /* renamed from: a */
    public final boolean f32604a;

    /* renamed from: b */
    public final String f32605b;

    /* renamed from: d */
    public final int f32606d;

    /* renamed from: k */
    public final byte[] f32607k;

    /* renamed from: p */
    public final String[] f32608p;

    /* renamed from: q */
    public final String[] f32609q;

    /* renamed from: r */
    public final boolean f32610r;

    /* renamed from: s */
    public final long f32611s;

    public v60(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.f32604a = z;
        this.f32605b = str;
        this.f32606d = i;
        this.f32607k = bArr;
        this.f32608p = strArr;
        this.f32609q = strArr2;
        this.f32610r = z2;
        this.f32611s = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 1, this.f32604a);
        C7411c.m1473r(parcel, 2, this.f32605b, false);
        C7411c.m1479l(parcel, 3, this.f32606d);
        C7411c.m1484g(parcel, 4, this.f32607k, false);
        C7411c.m1472s(parcel, 5, this.f32608p, false);
        C7411c.m1472s(parcel, 6, this.f32609q, false);
        C7411c.m1488c(parcel, 7, this.f32610r);
        C7411c.m1476o(parcel, 8, this.f32611s);
        C7411c.m1489b(parcel, m1490a);
    }
}
