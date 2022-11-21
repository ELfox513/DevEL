package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.s60 */
/* loaded from: classes2.dex */
public final class s60 extends AbstractC7408a {
    public static final Parcelable.Creator<s60> CREATOR = new t60();

    /* renamed from: a */
    public final String f31265a;

    /* renamed from: b */
    public final String[] f31266b;

    /* renamed from: d */
    public final String[] f31267d;

    public s60(String str, String[] strArr, String[] strArr2) {
        this.f31265a = str;
        this.f31266b = strArr;
        this.f31267d = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f31265a, false);
        C7411c.m1472s(parcel, 2, this.f31266b, false);
        C7411c.m1472s(parcel, 3, this.f31267d, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
