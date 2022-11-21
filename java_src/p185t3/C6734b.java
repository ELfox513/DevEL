package p185t3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p220x3.C7289o;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: t3.b */
/* loaded from: classes.dex */
public final class C6734b extends AbstractC7408a {

    /* renamed from: a */
    public final int f35388a;

    /* renamed from: b */
    public final int f35389b;

    /* renamed from: d */
    public final PendingIntent f35390d;

    /* renamed from: k */
    public final String f35391k;
    @RecentlyNonNull

    /* renamed from: p */
    public static final C6734b f35387p = new C6734b(0);
    @RecentlyNonNull
    public static final Parcelable.Creator<C6734b> CREATOR = new C6762r();

    public C6734b(int i) {
        this(i, null, null);
    }

    public C6734b(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f35388a = i;
        this.f35389b = i2;
        this.f35390d = pendingIntent;
        this.f35391k = str;
    }

    /* renamed from: c1 */
    public static String m3523c1(int i) {
        if (i != 99) {
            if (i != 1500) {
                switch (i) {
                    case -1:
                        return "UNKNOWN";
                    case 0:
                        return "SUCCESS";
                    case 1:
                        return "SERVICE_MISSING";
                    case 2:
                        return "SERVICE_VERSION_UPDATE_REQUIRED";
                    case 3:
                        return "SERVICE_DISABLED";
                    case 4:
                        return "SIGN_IN_REQUIRED";
                    case 5:
                        return "INVALID_ACCOUNT";
                    case 6:
                        return "RESOLUTION_REQUIRED";
                    case 7:
                        return "NETWORK_ERROR";
                    case 8:
                        return "INTERNAL_ERROR";
                    case 9:
                        return "SERVICE_INVALID";
                    case 10:
                        return "DEVELOPER_ERROR";
                    case 11:
                        return "LICENSE_CHECK_FAILED";
                    default:
                        switch (i) {
                            case 13:
                                return "CANCELED";
                            case 14:
                                return "TIMEOUT";
                            case 15:
                                return "INTERRUPTED";
                            case 16:
                                return "API_UNAVAILABLE";
                            case 17:
                                return "SIGN_IN_FAILED";
                            case 18:
                                return "SERVICE_UPDATING";
                            case 19:
                                return "SERVICE_MISSING_PERMISSION";
                            case 20:
                                return "RESTRICTED_PROFILE";
                            case 21:
                                return "API_VERSION_UPDATE_REQUIRED";
                            case 22:
                                return "RESOLUTION_ACTIVITY_NOT_FOUND";
                            case 23:
                                return "API_DISABLED";
                            case 24:
                                return "API_DISABLED_FOR_CONNECTION";
                            default:
                                StringBuilder sb = new StringBuilder(31);
                                sb.append("UNKNOWN_ERROR_CODE(");
                                sb.append(i);
                                sb.append(")");
                                return sb.toString();
                        }
                }
            }
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        return "UNFINISHED";
    }

    /* renamed from: X0 */
    public int m3528X0() {
        return this.f35389b;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public String m3527Y0() {
        return this.f35391k;
    }

    @RecentlyNullable
    /* renamed from: Z0 */
    public PendingIntent m3526Z0() {
        return this.f35390d;
    }

    /* renamed from: a1 */
    public boolean m3525a1() {
        return (this.f35389b == 0 || this.f35390d == null) ? false : true;
    }

    /* renamed from: b1 */
    public boolean m3524b1() {
        return this.f35389b == 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6734b)) {
            return false;
        }
        C6734b c6734b = (C6734b) obj;
        return this.f35389b == c6734b.f35389b && C7289o.m1908a(this.f35390d, c6734b.f35390d) && C7289o.m1908a(this.f35391k, c6734b.f35391k);
    }

    public int hashCode() {
        return C7289o.m1907b(Integer.valueOf(this.f35389b), this.f35390d, this.f35391k);
    }

    public C6734b(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public C6734b(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    @RecentlyNonNull
    public String toString() {
        C7289o.C7290a m1906c = C7289o.m1906c(this);
        m1906c.m1905a("statusCode", m3523c1(this.f35389b));
        m1906c.m1905a("resolution", this.f35390d);
        m1906c.m1905a("message", this.f35391k);
        return m1906c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f35388a);
        C7411c.m1479l(parcel, 2, m3528X0());
        C7411c.m1474q(parcel, 3, m3526Z0(), i, false);
        C7411c.m1473r(parcel, 4, m3527Y0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
