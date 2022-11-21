package p168r4;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.br2 */
/* loaded from: classes2.dex */
public final class br2 extends AbstractC7408a {
    public static final Parcelable.Creator<br2> CREATOR = new cr2();

    /* renamed from: a */
    public final yq2[] f21178a;

    /* renamed from: b */
    public final Context f21179b;

    /* renamed from: d */
    public final int f21180d;

    /* renamed from: k */
    public final yq2 f21181k;

    /* renamed from: p */
    public final int f21182p;

    /* renamed from: q */
    public final int f21183q;

    /* renamed from: r */
    public final int f21184r;

    /* renamed from: s */
    public final String f21185s;

    /* renamed from: t */
    public final int f21186t;

    /* renamed from: u */
    public final int f21187u;

    /* renamed from: v */
    public final int[] f21188v;

    /* renamed from: w */
    public final int[] f21189w;

    /* renamed from: x */
    public final int f21190x;

    public br2(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        yq2[] values = yq2.values();
        this.f21178a = values;
        int[] m4097a = zq2.m4097a();
        this.f21188v = m4097a;
        int[] m12966a = ar2.m12966a();
        this.f21189w = m12966a;
        this.f21179b = null;
        this.f21180d = i;
        this.f21181k = values[i];
        this.f21182p = i2;
        this.f21183q = i3;
        this.f21184r = i4;
        this.f21185s = str;
        this.f21186t = i5;
        this.f21190x = m4097a[i5];
        this.f21187u = i6;
        int i7 = m12966a[i6];
    }

    /* renamed from: X0 */
    public static br2 m12709X0(yq2 yq2Var, Context context) {
        if (yq2Var == yq2.Rewarded) {
            return new br2(context, yq2Var, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30819H4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30867N4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30883P4)).intValue(), (String) C5592av.m12935c().m8098c(C6225rz.f30899R4), (String) C5592av.m12935c().m8098c(C6225rz.f30835J4), (String) C5592av.m12935c().m8098c(C6225rz.f30851L4));
        } else if (yq2Var == yq2.Interstitial) {
            return new br2(context, yq2Var, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30827I4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30875O4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30891Q4)).intValue(), (String) C5592av.m12935c().m8098c(C6225rz.f30907S4), (String) C5592av.m12935c().m8098c(C6225rz.f30843K4), (String) C5592av.m12935c().m8098c(C6225rz.f30859M4));
        } else if (yq2Var == yq2.AppOpen) {
            return new br2(context, yq2Var, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30931V4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30947X4)).intValue(), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30955Y4)).intValue(), (String) C5592av.m12935c().m8098c(C6225rz.f30915T4), (String) C5592av.m12935c().m8098c(C6225rz.f30923U4), (String) C5592av.m12935c().m8098c(C6225rz.f30939W4));
        } else {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f21180d);
        C7411c.m1479l(parcel, 2, this.f21182p);
        C7411c.m1479l(parcel, 3, this.f21183q);
        C7411c.m1479l(parcel, 4, this.f21184r);
        C7411c.m1473r(parcel, 5, this.f21185s, false);
        C7411c.m1479l(parcel, 6, this.f21186t);
        C7411c.m1479l(parcel, 7, this.f21187u);
        C7411c.m1489b(parcel, m1490a);
    }

    public br2(Context context, yq2 yq2Var, int i, int i2, int i3, String str, String str2, String str3) {
        this.f21178a = yq2.values();
        this.f21188v = zq2.m4097a();
        this.f21189w = ar2.m12966a();
        this.f21179b = context;
        this.f21180d = yq2Var.ordinal();
        this.f21181k = yq2Var;
        this.f21182p = i;
        this.f21183q = i2;
        this.f21184r = i3;
        this.f21185s = str;
        int i4 = 2;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else if (!"lru".equals(str2) && "lfu".equals(str2)) {
            i4 = 3;
        }
        this.f21190x = i4;
        this.f21186t = i4 - 1;
        "onAdClosed".equals(str3);
        this.f21187u = 0;
    }
}
