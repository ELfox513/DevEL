package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p228y3.C7411c;
/* renamed from: h4.n */
/* loaded from: classes.dex */
public final class C4038n extends AbstractC4451i implements InterfaceC4023b {
    public static final Parcelable.Creator<C4038n> CREATOR = new C4039o();

    /* renamed from: a */
    public final int f17557a;

    /* renamed from: X0 */
    public static int m17492X0(InterfaceC4023b interfaceC4023b) {
        return C7289o.m1907b(Integer.valueOf(interfaceC4023b.mo17493S0()));
    }

    @Override // p078h4.InterfaceC4023b
    /* renamed from: S0 */
    public final int mo17493S0() {
        return this.f17557a;
    }

    public final boolean equals(Object obj) {
        return m17491Y0(this, obj);
    }

    public final int hashCode() {
        return m17492X0(this);
    }

    public final String toString() {
        return m17490Z0(this);
    }

    /* renamed from: Y0 */
    public static boolean m17491Y0(InterfaceC4023b interfaceC4023b, Object obj) {
        if (!(obj instanceof InterfaceC4023b)) {
            return false;
        }
        if (obj != interfaceC4023b && ((InterfaceC4023b) obj).mo17493S0() != interfaceC4023b.mo17493S0()) {
            return false;
        }
        return true;
    }

    public C4038n(int i) {
        this.f17557a = i;
    }

    /* renamed from: Z0 */
    public static String m17490Z0(InterfaceC4023b interfaceC4023b) {
        C7289o.C7290a m1906c = C7289o.m1906c(interfaceC4023b);
        m1906c.m1905a("FriendsListVisibilityStatus", Integer.valueOf(interfaceC4023b.mo17493S0()));
        return m1906c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, mo17493S0());
        C7411c.m1489b(parcel, m1490a);
    }
}
