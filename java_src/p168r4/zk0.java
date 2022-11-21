package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.zk0 */
/* loaded from: classes2.dex */
public final class zk0 extends AbstractC7408a {
    public static final Parcelable.Creator<zk0> CREATOR = new al0();
    @Deprecated

    /* renamed from: a */
    public final String f34655a;

    /* renamed from: b */
    public final String f34656b;
    @Deprecated

    /* renamed from: d */
    public final C6478yt f34657d;

    /* renamed from: k */
    public final C6293tt f34658k;

    public zk0(String str, String str2, C6478yt c6478yt, C6293tt c6293tt) {
        this.f34655a = str;
        this.f34656b = str2;
        this.f34657d = c6478yt;
        this.f34658k = c6293tt;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f34655a, false);
        C7411c.m1473r(parcel, 2, this.f34656b, false);
        C7411c.m1474q(parcel, 3, this.f34657d, i, false);
        C7411c.m1474q(parcel, 4, this.f34658k, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
