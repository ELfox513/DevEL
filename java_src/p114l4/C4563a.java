package p114l4;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByReflection;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p228y3.C7411c;
@UsedByReflection("GamesGmsClientImpl.java")
/* renamed from: l4.a */
/* loaded from: classes.dex */
public final class C4563a extends AbstractC4451i implements InterfaceC4564b {
    @RecentlyNonNull
    public static final Parcelable.Creator<C4563a> CREATOR = new C4565c();

    /* renamed from: a */
    public final String f18606a;

    /* renamed from: b */
    public final String f18607b;

    /* renamed from: d */
    public final long f18608d;

    /* renamed from: k */
    public final Uri f18609k;

    /* renamed from: p */
    public final Uri f18610p;

    /* renamed from: q */
    public final Uri f18611q;

    /* renamed from: X0 */
    public static int m15999X0(InterfaceC4564b interfaceC4564b) {
        return C7289o.m1907b(interfaceC4564b.mo15996L0(), interfaceC4564b.mo15994N0(), Long.valueOf(interfaceC4564b.mo15993O0()), interfaceC4564b.mo15992P0(), interfaceC4564b.mo15991Q0(), interfaceC4564b.mo15995M0());
    }

    @Override // p114l4.InterfaceC4564b
    @RecentlyNonNull
    /* renamed from: L0 */
    public final String mo15996L0() {
        return this.f18606a;
    }

    @Override // p114l4.InterfaceC4564b
    @RecentlyNonNull
    /* renamed from: M0 */
    public final Uri mo15995M0() {
        return this.f18611q;
    }

    @Override // p114l4.InterfaceC4564b
    @RecentlyNonNull
    /* renamed from: N0 */
    public final String mo15994N0() {
        return this.f18607b;
    }

    @Override // p114l4.InterfaceC4564b
    /* renamed from: O0 */
    public final long mo15993O0() {
        return this.f18608d;
    }

    @Override // p114l4.InterfaceC4564b
    @RecentlyNonNull
    /* renamed from: P0 */
    public final Uri mo15992P0() {
        return this.f18609k;
    }

    @Override // p114l4.InterfaceC4564b
    @RecentlyNonNull
    /* renamed from: Q0 */
    public final Uri mo15991Q0() {
        return this.f18610p;
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        return m15998Y0(this, obj);
    }

    public final int hashCode() {
        return m15999X0(this);
    }

    @RecentlyNonNull
    public final String toString() {
        return m15997Z0(this);
    }

    /* renamed from: Y0 */
    public static boolean m15998Y0(InterfaceC4564b interfaceC4564b, Object obj) {
        if (!(obj instanceof InterfaceC4564b)) {
            return false;
        }
        if (interfaceC4564b == obj) {
            return true;
        }
        InterfaceC4564b interfaceC4564b2 = (InterfaceC4564b) obj;
        if (!C7289o.m1908a(interfaceC4564b2.mo15996L0(), interfaceC4564b.mo15996L0()) || !C7289o.m1908a(interfaceC4564b2.mo15994N0(), interfaceC4564b.mo15994N0()) || !C7289o.m1908a(Long.valueOf(interfaceC4564b2.mo15993O0()), Long.valueOf(interfaceC4564b.mo15993O0())) || !C7289o.m1908a(interfaceC4564b2.mo15992P0(), interfaceC4564b.mo15992P0()) || !C7289o.m1908a(interfaceC4564b2.mo15991Q0(), interfaceC4564b.mo15991Q0()) || !C7289o.m1908a(interfaceC4564b2.mo15995M0(), interfaceC4564b.mo15995M0())) {
            return false;
        }
        return true;
    }

    public C4563a(String str, String str2, long j, Uri uri, Uri uri2, Uri uri3) {
        this.f18606a = str;
        this.f18607b = str2;
        this.f18608d = j;
        this.f18609k = uri;
        this.f18610p = uri2;
        this.f18611q = uri3;
    }

    /* renamed from: Z0 */
    public static String m15997Z0(InterfaceC4564b interfaceC4564b) {
        return C7289o.m1906c(interfaceC4564b).m1905a("GameId", interfaceC4564b.mo15996L0()).m1905a("GameName", interfaceC4564b.mo15994N0()).m1905a("ActivityTimestampMillis", Long.valueOf(interfaceC4564b.mo15993O0())).m1905a("GameIconUri", interfaceC4564b.mo15992P0()).m1905a("GameHiResUri", interfaceC4564b.mo15991Q0()).m1905a("GameFeaturedUri", interfaceC4564b.mo15995M0()).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f18606a, false);
        C7411c.m1473r(parcel, 2, this.f18607b, false);
        C7411c.m1476o(parcel, 3, this.f18608d);
        C7411c.m1474q(parcel, 4, this.f18609k, i, false);
        C7411c.m1474q(parcel, 5, this.f18610p, i, false);
        C7411c.m1474q(parcel, 6, this.f18611q, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
