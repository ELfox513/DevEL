package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.cu */
/* loaded from: classes2.dex */
public final class C5664cu extends AbstractC7408a {
    public static final Parcelable.Creator<C5664cu> CREATOR = new C5701du();

    /* renamed from: a */
    public final String f21675a;

    /* renamed from: b */
    public long f21676b;

    /* renamed from: d */
    public C5996lt f21677d;

    /* renamed from: k */
    public final Bundle f21678k;

    public C5664cu(String str, long j, C5996lt c5996lt, Bundle bundle) {
        this.f21675a = str;
        this.f21676b = j;
        this.f21677d = c5996lt;
        this.f21678k = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f21675a, false);
        C7411c.m1476o(parcel, 2, this.f21676b);
        C7411c.m1474q(parcel, 3, this.f21677d, i, false);
        C7411c.m1485f(parcel, 4, this.f21678k, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
