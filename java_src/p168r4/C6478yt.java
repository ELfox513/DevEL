package p168r4;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import p184t2.C6710g;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.yt */
/* loaded from: classes2.dex */
public final class C6478yt extends AbstractC7408a {
    public static final Parcelable.Creator<C6478yt> CREATOR = new C6515zt();

    /* renamed from: a */
    public final String f34197a;

    /* renamed from: b */
    public final int f34198b;

    /* renamed from: d */
    public final int f34199d;

    /* renamed from: k */
    public final boolean f34200k;

    /* renamed from: p */
    public final int f34201p;

    /* renamed from: q */
    public final int f34202q;

    /* renamed from: r */
    public final C6478yt[] f34203r;

    /* renamed from: s */
    public final boolean f34204s;

    /* renamed from: t */
    public final boolean f34205t;

    /* renamed from: u */
    public boolean f34206u;

    /* renamed from: v */
    public boolean f34207v;

    /* renamed from: w */
    public boolean f34208w;

    /* renamed from: x */
    public boolean f34209x;

    /* renamed from: y */
    public boolean f34210y;

    /* renamed from: z */
    public boolean f34211z;

    public C6478yt() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    /* renamed from: X0 */
    public static int m4576X0(DisplayMetrics displayMetrics) {
        return (int) (m4571c1(displayMetrics) * displayMetrics.density);
    }

    /* renamed from: Y0 */
    public static C6478yt m4575Y0() {
        return new C6478yt("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    /* renamed from: Z0 */
    public static C6478yt m4574Z0() {
        return new C6478yt("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    /* renamed from: a1 */
    public static C6478yt m4573a1() {
        return new C6478yt("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    /* renamed from: b1 */
    public static C6478yt m4572b1() {
        return new C6478yt("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    /* renamed from: c1 */
    public static int m4571c1(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public C6478yt(Context context, C6710g c6710g) {
        this(context, new C6710g[]{c6710g});
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6478yt(android.content.Context r13, p184t2.C6710g[] r14) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6478yt.<init>(android.content.Context, t2.g[]):void");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f34197a, false);
        C7411c.m1479l(parcel, 3, this.f34198b);
        C7411c.m1479l(parcel, 4, this.f34199d);
        C7411c.m1488c(parcel, 5, this.f34200k);
        C7411c.m1479l(parcel, 6, this.f34201p);
        C7411c.m1479l(parcel, 7, this.f34202q);
        C7411c.m1470u(parcel, 8, this.f34203r, i, false);
        C7411c.m1488c(parcel, 9, this.f34204s);
        C7411c.m1488c(parcel, 10, this.f34205t);
        C7411c.m1488c(parcel, 11, this.f34206u);
        C7411c.m1488c(parcel, 12, this.f34207v);
        C7411c.m1488c(parcel, 13, this.f34208w);
        C7411c.m1488c(parcel, 14, this.f34209x);
        C7411c.m1488c(parcel, 15, this.f34210y);
        C7411c.m1488c(parcel, 16, this.f34211z);
        C7411c.m1489b(parcel, m1490a);
    }

    public C6478yt(String str, int i, int i2, boolean z, int i3, int i4, C6478yt[] c6478ytArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f34197a = str;
        this.f34198b = i;
        this.f34199d = i2;
        this.f34200k = z;
        this.f34201p = i3;
        this.f34202q = i4;
        this.f34203r = c6478ytArr;
        this.f34204s = z2;
        this.f34205t = z3;
        this.f34206u = z4;
        this.f34207v = z5;
        this.f34208w = z6;
        this.f34209x = z7;
        this.f34210y = z8;
        this.f34211z = z9;
    }
}
