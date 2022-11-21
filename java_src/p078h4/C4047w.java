package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p105k4.AbstractC4451i;
import p220x3.C7289o;
import p228y3.C7411c;
/* renamed from: h4.w */
/* loaded from: classes.dex */
public final class C4047w extends AbstractC4451i implements InterfaceC4036l {
    public static final Parcelable.Creator<C4047w> CREATOR = new C4046v();

    /* renamed from: a */
    public int f17558a;

    /* renamed from: b */
    public String f17559b;

    /* renamed from: d */
    public String f17560d;

    /* renamed from: k */
    public String f17561k;

    /* renamed from: X0 */
    public static int m17486X0(InterfaceC4036l interfaceC4036l) {
        return C7289o.m1907b(Integer.valueOf(interfaceC4036l.mo17487M()), interfaceC4036l.mo17483m(), interfaceC4036l.mo17481w(), interfaceC4036l.mo17482r());
    }

    @Override // p078h4.InterfaceC4036l
    /* renamed from: M */
    public final int mo17487M() {
        return this.f17558a;
    }

    public final boolean equals(Object obj) {
        return m17485Y0(this, obj);
    }

    public final int hashCode() {
        return m17486X0(this);
    }

    @Override // p078h4.InterfaceC4036l
    /* renamed from: m */
    public final String mo17483m() {
        return this.f17559b;
    }

    @Override // p078h4.InterfaceC4036l
    /* renamed from: r */
    public final String mo17482r() {
        return this.f17561k;
    }

    public final String toString() {
        return m17484Z0(this);
    }

    @Override // p078h4.InterfaceC4036l
    /* renamed from: w */
    public final String mo17481w() {
        return this.f17560d;
    }

    /* renamed from: Y0 */
    public static boolean m17485Y0(InterfaceC4036l interfaceC4036l, Object obj) {
        if (!(obj instanceof InterfaceC4036l)) {
            return false;
        }
        if (obj == interfaceC4036l) {
            return true;
        }
        InterfaceC4036l interfaceC4036l2 = (InterfaceC4036l) obj;
        if (interfaceC4036l2.mo17487M() != interfaceC4036l.mo17487M() || !C7289o.m1908a(interfaceC4036l2.mo17483m(), interfaceC4036l.mo17483m()) || !C7289o.m1908a(interfaceC4036l2.mo17481w(), interfaceC4036l.mo17481w()) || !C7289o.m1908a(interfaceC4036l2.mo17482r(), interfaceC4036l.mo17482r())) {
            return false;
        }
        return true;
    }

    public C4047w(int i, String str, String str2, String str3) {
        this.f17558a = i;
        this.f17559b = str;
        this.f17560d = str2;
        this.f17561k = str3;
    }

    /* renamed from: Z0 */
    public static String m17484Z0(InterfaceC4036l interfaceC4036l) {
        C7289o.C7290a m1906c = C7289o.m1906c(interfaceC4036l);
        m1906c.m1905a("FriendStatus", Integer.valueOf(interfaceC4036l.mo17487M()));
        if (interfaceC4036l.mo17483m() != null) {
            m1906c.m1905a("Nickname", interfaceC4036l.mo17483m());
        }
        if (interfaceC4036l.mo17481w() != null) {
            m1906c.m1905a("InvitationNickname", interfaceC4036l.mo17481w());
        }
        if (interfaceC4036l.mo17482r() != null) {
            m1906c.m1905a("NicknameAbuseReportToken", interfaceC4036l.mo17481w());
        }
        return m1906c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, mo17487M());
        C7411c.m1473r(parcel, 2, this.f17559b, false);
        C7411c.m1473r(parcel, 3, this.f17560d, false);
        C7411c.m1473r(parcel, 4, this.f17561k, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
