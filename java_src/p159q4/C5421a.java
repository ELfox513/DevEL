package p159q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p228y3.C7411c;
/* renamed from: q4.a */
/* loaded from: classes.dex */
public final class C5421a extends AbstractC4451i {
    @RecentlyNonNull
    public static final Parcelable.Creator<C5421a> CREATOR = new C5423c();

    /* renamed from: a */
    public final boolean f20100a;

    /* renamed from: b */
    public final boolean f20101b;

    /* renamed from: d */
    public final boolean f20102d;

    /* renamed from: k */
    public final boolean[] f20103k;

    /* renamed from: p */
    public final boolean[] f20104p;

    @RecentlyNonNull
    /* renamed from: X0 */
    public final boolean[] m13320X0() {
        return this.f20103k;
    }

    @RecentlyNonNull
    /* renamed from: Y0 */
    public final boolean[] m13319Y0() {
        return this.f20104p;
    }

    /* renamed from: Z0 */
    public final boolean m13318Z0() {
        return this.f20100a;
    }

    /* renamed from: a1 */
    public final boolean m13317a1() {
        return this.f20101b;
    }

    /* renamed from: b1 */
    public final boolean m13316b1() {
        return this.f20102d;
    }

    public final int hashCode() {
        return C7289o.m1907b(m13320X0(), m13319Y0(), Boolean.valueOf(m13318Z0()), Boolean.valueOf(m13317a1()), Boolean.valueOf(m13316b1()));
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C5421a)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C5421a c5421a = (C5421a) obj;
        if (!C7289o.m1908a(c5421a.m13320X0(), m13320X0()) || !C7289o.m1908a(c5421a.m13319Y0(), m13319Y0()) || !C7289o.m1908a(Boolean.valueOf(c5421a.m13318Z0()), Boolean.valueOf(m13318Z0())) || !C7289o.m1908a(Boolean.valueOf(c5421a.m13317a1()), Boolean.valueOf(m13317a1())) || !C7289o.m1908a(Boolean.valueOf(c5421a.m13316b1()), Boolean.valueOf(m13316b1()))) {
            return false;
        }
        return true;
    }

    public C5421a(boolean z, boolean z2, boolean z3, @RecentlyNonNull boolean[] zArr, @RecentlyNonNull boolean[] zArr2) {
        this.f20100a = z;
        this.f20101b = z2;
        this.f20102d = z3;
        this.f20103k = zArr;
        this.f20104p = zArr2;
    }

    @RecentlyNonNull
    public final String toString() {
        return C7289o.m1906c(this).m1905a("SupportedCaptureModes", m13320X0()).m1905a("SupportedQualityLevels", m13319Y0()).m1905a("CameraSupported", Boolean.valueOf(m13318Z0())).m1905a("MicSupported", Boolean.valueOf(m13317a1())).m1905a("StorageWriteSupported", Boolean.valueOf(m13316b1())).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 1, m13318Z0());
        C7411c.m1488c(parcel, 2, m13317a1());
        C7411c.m1488c(parcel, 3, m13316b1());
        C7411c.m1487d(parcel, 4, m13320X0(), false);
        C7411c.m1487d(parcel, 5, m13319Y0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
