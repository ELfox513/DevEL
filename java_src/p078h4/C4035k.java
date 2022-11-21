package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p220x3.C7297q;
import p228y3.C7411c;
/* renamed from: h4.k */
/* loaded from: classes.dex */
public final class C4035k extends AbstractC4451i {
    @RecentlyNonNull
    public static final Parcelable.Creator<C4035k> CREATOR = new C4045u();

    /* renamed from: a */
    public final long f17553a;

    /* renamed from: b */
    public final long f17554b;

    /* renamed from: d */
    public final C4034j f17555d;

    /* renamed from: k */
    public final C4034j f17556k;

    @RecentlyNonNull
    /* renamed from: X0 */
    public final C4034j m17497X0() {
        return this.f17555d;
    }

    /* renamed from: Y0 */
    public final long m17496Y0() {
        return this.f17553a;
    }

    /* renamed from: Z0 */
    public final long m17495Z0() {
        return this.f17554b;
    }

    @RecentlyNonNull
    /* renamed from: a1 */
    public final C4034j m17494a1() {
        return this.f17556k;
    }

    public final int hashCode() {
        return C7289o.m1907b(Long.valueOf(this.f17553a), Long.valueOf(this.f17554b), this.f17555d, this.f17556k);
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C4035k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C4035k c4035k = (C4035k) obj;
        if (!C7289o.m1908a(Long.valueOf(this.f17553a), Long.valueOf(c4035k.f17553a)) || !C7289o.m1908a(Long.valueOf(this.f17554b), Long.valueOf(c4035k.f17554b)) || !C7289o.m1908a(this.f17555d, c4035k.f17555d) || !C7289o.m1908a(this.f17556k, c4035k.f17556k)) {
            return false;
        }
        return true;
    }

    public C4035k(long j, long j2, @RecentlyNonNull C4034j c4034j, @RecentlyNonNull C4034j c4034j2) {
        boolean z;
        if (j != -1) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1880m(z);
        C7297q.m1883j(c4034j);
        C7297q.m1883j(c4034j2);
        this.f17553a = j;
        this.f17554b = j2;
        this.f17555d = c4034j;
        this.f17556k = c4034j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1476o(parcel, 1, m17496Y0());
        C7411c.m1476o(parcel, 2, m17495Z0());
        C7411c.m1474q(parcel, 3, m17497X0(), i, false);
        C7411c.m1474q(parcel, 4, m17494a1(), i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
