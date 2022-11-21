package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p220x3.C7297q;
import p228y3.C7411c;
/* renamed from: h4.j */
/* loaded from: classes.dex */
public final class C4034j extends AbstractC4451i {
    @RecentlyNonNull
    public static final Parcelable.Creator<C4034j> CREATOR = new C4044t();

    /* renamed from: a */
    public final int f17550a;

    /* renamed from: b */
    public final long f17551b;

    /* renamed from: d */
    public final long f17552d;

    /* renamed from: X0 */
    public final int m17500X0() {
        return this.f17550a;
    }

    /* renamed from: Y0 */
    public final long m17499Y0() {
        return this.f17552d;
    }

    /* renamed from: Z0 */
    public final long m17498Z0() {
        return this.f17551b;
    }

    public final int hashCode() {
        return C7289o.m1907b(Integer.valueOf(this.f17550a), Long.valueOf(this.f17551b), Long.valueOf(this.f17552d));
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C4034j)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C4034j c4034j = (C4034j) obj;
        if (!C7289o.m1908a(Integer.valueOf(c4034j.m17500X0()), Integer.valueOf(m17500X0())) || !C7289o.m1908a(Long.valueOf(c4034j.m17498Z0()), Long.valueOf(m17498Z0())) || !C7289o.m1908a(Long.valueOf(c4034j.m17499Y0()), Long.valueOf(m17499Y0()))) {
            return false;
        }
        return true;
    }

    public C4034j(int i, long j, long j2) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1879n(z, "Min XP must be positive!");
        C7297q.m1879n(j2 > j, "Max XP must be more than min XP!");
        this.f17550a = i;
        this.f17551b = j;
        this.f17552d = j2;
    }

    @RecentlyNonNull
    public final String toString() {
        return C7289o.m1906c(this).m1905a("LevelNumber", Integer.valueOf(m17500X0())).m1905a("MinXp", Long.valueOf(m17498Z0())).m1905a("MaxXp", Long.valueOf(m17499Y0())).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, m17500X0());
        C7411c.m1476o(parcel, 2, m17498Z0());
        C7411c.m1476o(parcel, 3, m17499Y0());
        C7411c.m1489b(parcel, m1490a);
    }
}
