package p167r3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r3.a */
/* loaded from: classes.dex */
public class C5533a extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C5533a> CREATOR = new C5537d();

    /* renamed from: a */
    public final int f20295a;

    /* renamed from: b */
    public int f20296b;

    /* renamed from: d */
    public Bundle f20297d;

    public C5533a(int i, int i2, Bundle bundle) {
        this.f20295a = i;
        this.f20296b = i2;
        this.f20297d = bundle;
    }

    /* renamed from: X0 */
    public int m13105X0() {
        return this.f20296b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f20295a);
        C7411c.m1479l(parcel, 2, m13105X0());
        C7411c.m1485f(parcel, 3, this.f20297d, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
