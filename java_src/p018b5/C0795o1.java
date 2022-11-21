package p018b5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: b5.o1 */
/* loaded from: classes2.dex */
public final class C0795o1 extends AbstractC7408a {
    public static final Parcelable.Creator<C0795o1> CREATOR = new C0812p1();

    /* renamed from: a */
    public final long f2070a;

    /* renamed from: b */
    public final long f2071b;

    /* renamed from: d */
    public final boolean f2072d;

    /* renamed from: k */
    public final String f2073k;

    /* renamed from: p */
    public final String f2074p;

    /* renamed from: q */
    public final String f2075q;

    /* renamed from: r */
    public final Bundle f2076r;

    /* renamed from: s */
    public final String f2077s;

    public C0795o1(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.f2070a = j;
        this.f2071b = j2;
        this.f2072d = z;
        this.f2073k = str;
        this.f2074p = str2;
        this.f2075q = str3;
        this.f2076r = bundle;
        this.f2077s = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1476o(parcel, 1, this.f2070a);
        C7411c.m1476o(parcel, 2, this.f2071b);
        C7411c.m1488c(parcel, 3, this.f2072d);
        C7411c.m1473r(parcel, 4, this.f2073k, false);
        C7411c.m1473r(parcel, 5, this.f2074p, false);
        C7411c.m1473r(parcel, 6, this.f2075q, false);
        C7411c.m1485f(parcel, 7, this.f2076r, false);
        C7411c.m1473r(parcel, 8, this.f2077s, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
