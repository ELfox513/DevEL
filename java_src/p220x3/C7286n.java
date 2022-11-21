package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.n */
/* loaded from: classes.dex */
public class C7286n extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C7286n> CREATOR = new C7271i0();

    /* renamed from: a */
    public final int f36749a;

    /* renamed from: b */
    public final int f36750b;

    /* renamed from: d */
    public final int f36751d;

    /* renamed from: k */
    public final long f36752k;

    /* renamed from: p */
    public final long f36753p;

    /* renamed from: q */
    public final String f36754q;

    /* renamed from: r */
    public final String f36755r;

    /* renamed from: s */
    public final int f36756s;

    public C7286n(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
        this.f36749a = i;
        this.f36750b = i2;
        this.f36751d = i3;
        this.f36752k = j;
        this.f36753p = j2;
        this.f36754q = str;
        this.f36755r = str2;
        this.f36756s = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f36749a);
        C7411c.m1479l(parcel, 2, this.f36750b);
        C7411c.m1479l(parcel, 3, this.f36751d);
        C7411c.m1476o(parcel, 4, this.f36752k);
        C7411c.m1476o(parcel, 5, this.f36753p);
        C7411c.m1473r(parcel, 6, this.f36754q, false);
        C7411c.m1473r(parcel, 7, this.f36755r, false);
        C7411c.m1479l(parcel, 8, this.f36756s);
        C7411c.m1489b(parcel, m1490a);
    }
}
