package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.ArrayList;
import java.util.List;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.u */
/* loaded from: classes.dex */
public class C7309u extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C7309u> CREATOR = new C7321y();

    /* renamed from: a */
    public final int f36803a;

    /* renamed from: b */
    public List<C7286n> f36804b;

    public C7309u(int i, List<C7286n> list) {
        this.f36803a = i;
        this.f36804b = list;
    }

    /* renamed from: X0 */
    public final int m1856X0() {
        return this.f36803a;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public final List<C7286n> m1855Y0() {
        return this.f36804b;
    }

    /* renamed from: Z0 */
    public final void m1854Z0(@RecentlyNonNull C7286n c7286n) {
        if (this.f36804b == null) {
            this.f36804b = new ArrayList();
        }
        this.f36804b.add(c7286n);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f36803a);
        C7411c.m1469v(parcel, 2, this.f36804b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
