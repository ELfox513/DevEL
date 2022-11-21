package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p068g3.C3582d;
import p184t2.C6728w;
import p202v2.C6978e;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.d20 */
/* loaded from: classes2.dex */
public final class d20 extends AbstractC7408a {
    public static final Parcelable.Creator<d20> CREATOR = new e20();

    /* renamed from: a */
    public final int f22042a;

    /* renamed from: b */
    public final boolean f22043b;

    /* renamed from: d */
    public final int f22044d;

    /* renamed from: k */
    public final boolean f22045k;

    /* renamed from: p */
    public final int f22046p;

    /* renamed from: q */
    public final C6446xy f22047q;

    /* renamed from: r */
    public final boolean f22048r;

    /* renamed from: s */
    public final int f22049s;

    public d20(int i, boolean z, int i2, boolean z2, int i3, C6446xy c6446xy, boolean z3, int i4) {
        this.f22042a = i;
        this.f22043b = z;
        this.f22044d = i2;
        this.f22045k = z2;
        this.f22046p = i3;
        this.f22047q = c6446xy;
        this.f22048r = z3;
        this.f22049s = i4;
    }

    public d20(C6978e c6978e) {
        this(4, c6978e.m2805f(), c6978e.m2809b(), c6978e.m2806e(), c6978e.m2810a(), c6978e.m2807d() != null ? new C6446xy(c6978e.m2807d()) : null, c6978e.m2804g(), c6978e.m2808c());
    }

    /* renamed from: X0 */
    public static C3582d m12235X0(d20 d20Var) {
        C3582d.C3583a c3583a = new C3582d.C3583a();
        if (d20Var == null) {
            return c3583a.m18581a();
        }
        int i = d20Var.f22042a;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    c3583a.m18578d(d20Var.f22048r);
                    c3583a.m18579c(d20Var.f22049s);
                }
                c3583a.m18576f(d20Var.f22043b);
                c3583a.m18577e(d20Var.f22045k);
                return c3583a.m18581a();
            }
            C6446xy c6446xy = d20Var.f22047q;
            if (c6446xy != null) {
                c3583a.m18575g(new C6728w(c6446xy));
            }
        }
        c3583a.m18580b(d20Var.f22046p);
        c3583a.m18576f(d20Var.f22043b);
        c3583a.m18577e(d20Var.f22045k);
        return c3583a.m18581a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f22042a);
        C7411c.m1488c(parcel, 2, this.f22043b);
        C7411c.m1479l(parcel, 3, this.f22044d);
        C7411c.m1488c(parcel, 4, this.f22045k);
        C7411c.m1479l(parcel, 5, this.f22046p);
        C7411c.m1474q(parcel, 6, this.f22047q, i, false);
        C7411c.m1488c(parcel, 7, this.f22048r);
        C7411c.m1479l(parcel, 8, this.f22049s);
        C7411c.m1489b(parcel, m1490a);
    }
}
