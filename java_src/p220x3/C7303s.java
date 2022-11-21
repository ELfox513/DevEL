package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.s */
/* loaded from: classes.dex */
public class C7303s extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C7303s> CREATOR = new C7324z0();

    /* renamed from: a */
    public final int f36791a;

    /* renamed from: b */
    public final boolean f36792b;

    /* renamed from: d */
    public final boolean f36793d;

    /* renamed from: k */
    public final int f36794k;

    /* renamed from: p */
    public final int f36795p;

    public C7303s(int i, boolean z, boolean z2, int i2, int i3) {
        this.f36791a = i;
        this.f36792b = z;
        this.f36793d = z2;
        this.f36794k = i2;
        this.f36795p = i3;
    }

    /* renamed from: X0 */
    public int m1868X0() {
        return this.f36794k;
    }

    /* renamed from: Y0 */
    public int m1867Y0() {
        return this.f36795p;
    }

    /* renamed from: Z0 */
    public boolean m1866Z0() {
        return this.f36792b;
    }

    /* renamed from: a1 */
    public boolean m1865a1() {
        return this.f36793d;
    }

    /* renamed from: b1 */
    public int m1864b1() {
        return this.f36791a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, m1864b1());
        C7411c.m1488c(parcel, 2, m1866Z0());
        C7411c.m1488c(parcel, 3, m1865a1());
        C7411c.m1479l(parcel, 4, m1868X0());
        C7411c.m1479l(parcel, 5, m1867Y0());
        C7411c.m1489b(parcel, m1490a);
    }
}
