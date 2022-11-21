package p185t3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p220x3.C7289o;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: t3.d */
/* loaded from: classes.dex */
public class C6738d extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C6738d> CREATOR = new C6763s();

    /* renamed from: a */
    public final String f35403a;
    @Deprecated

    /* renamed from: b */
    public final int f35404b;

    /* renamed from: d */
    public final long f35405d;

    public C6738d(@RecentlyNonNull String str, int i, long j) {
        this.f35403a = str;
        this.f35404b = i;
        this.f35405d = j;
    }

    public C6738d(@RecentlyNonNull String str, long j) {
        this.f35403a = str;
        this.f35405d = j;
        this.f35404b = -1;
    }

    /* renamed from: X0 */
    public long m3514X0() {
        long j = this.f35405d;
        return j == -1 ? this.f35404b : j;
    }

    @RecentlyNonNull
    public String getName() {
        return this.f35403a;
    }

    public final int hashCode() {
        return C7289o.m1907b(getName(), Long.valueOf(m3514X0()));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C6738d) {
            C6738d c6738d = (C6738d) obj;
            if (((getName() != null && getName().equals(c6738d.getName())) || (getName() == null && c6738d.getName() == null)) && m3514X0() == c6738d.m3514X0()) {
                return true;
            }
        }
        return false;
    }

    @RecentlyNonNull
    public final String toString() {
        C7289o.C7290a m1906c = C7289o.m1906c(this);
        m1906c.m1905a("name", getName());
        m1906c.m1905a("version", Long.valueOf(m3514X0()));
        return m1906c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, getName(), false);
        C7411c.m1479l(parcel, 2, this.f35404b);
        C7411c.m1476o(parcel, 3, m3514X0());
        C7411c.m1489b(parcel, m1490a);
    }
}
