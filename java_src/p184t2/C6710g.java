package p184t2;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.RecentlyNonNull;
import p168r4.C6478yt;
import p168r4.C6479yu;
import p168r4.vl0;
/* renamed from: t2.g */
/* loaded from: classes.dex */
public final class C6710g {

    /* renamed from: a */
    public final int f35345a;

    /* renamed from: b */
    public final int f35346b;

    /* renamed from: c */
    public final String f35347c;

    /* renamed from: d */
    public boolean f35348d;

    /* renamed from: e */
    public boolean f35349e;

    /* renamed from: f */
    public int f35350f;

    /* renamed from: g */
    public boolean f35351g;

    /* renamed from: h */
    public int f35352h;
    @RecentlyNonNull

    /* renamed from: i */
    public static final C6710g f35334i = new C6710g(320, 50, "320x50_mb");
    @RecentlyNonNull

    /* renamed from: j */
    public static final C6710g f35335j = new C6710g(468, 60, "468x60_as");
    @RecentlyNonNull

    /* renamed from: k */
    public static final C6710g f35336k = new C6710g(320, 100, "320x100_as");
    @RecentlyNonNull

    /* renamed from: l */
    public static final C6710g f35337l = new C6710g(728, 90, "728x90_as");
    @RecentlyNonNull

    /* renamed from: m */
    public static final C6710g f35338m = new C6710g(300, 250, "300x250_as");
    @RecentlyNonNull

    /* renamed from: n */
    public static final C6710g f35339n = new C6710g(160, 600, "160x600_as");
    @RecentlyNonNull
    @Deprecated

    /* renamed from: o */
    public static final C6710g f35340o = new C6710g(-1, -2, "smart_banner");
    @RecentlyNonNull

    /* renamed from: p */
    public static final C6710g f35341p = new C6710g(-3, -4, "fluid");
    @RecentlyNonNull

    /* renamed from: q */
    public static final C6710g f35342q = new C6710g(0, 0, "invalid");
    @RecentlyNonNull

    /* renamed from: s */
    public static final C6710g f35344s = new C6710g(50, 50, "50x50_mb");
    @RecentlyNonNull

    /* renamed from: r */
    public static final C6710g f35343r = new C6710g(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6710g(int r6, int r7) {
        /*
            r5 = this;
            r0 = -1
            if (r6 != r0) goto L6
            java.lang.String r0 = "FULL"
            goto La
        L6:
            java.lang.String r0 = java.lang.String.valueOf(r6)
        La:
            r1 = -2
            if (r7 != r1) goto L10
            java.lang.String r1 = "AUTO"
            goto L14
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r7)
        L14:
            java.lang.String r2 = java.lang.String.valueOf(r0)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r3 = r3.length()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r2 = r2 + 4
            int r2 = r2 + r3
            r4.<init>(r2)
            r4.append(r0)
            java.lang.String r0 = "x"
            r4.append(r0)
            r4.append(r1)
            java.lang.String r0 = "_as"
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r5.<init>(r6, r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p184t2.C6710g.<init>(int, int):void");
    }

    /* renamed from: a */
    public int m3585a() {
        return this.f35346b;
    }

    /* renamed from: c */
    public int m3583c() {
        return this.f35345a;
    }

    /* renamed from: e */
    public boolean m3581e() {
        return this.f35345a == -3 && this.f35346b == -4;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6710g) {
            C6710g c6710g = (C6710g) obj;
            return this.f35345a == c6710g.f35345a && this.f35346b == c6710g.f35346b && this.f35347c.equals(c6710g.f35347c);
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m3580f() {
        return this.f35348d;
    }

    /* renamed from: g */
    public final boolean m3579g() {
        return this.f35349e;
    }

    /* renamed from: h */
    public final void m3578h(boolean z) {
        this.f35349e = true;
    }

    public int hashCode() {
        return this.f35347c.hashCode();
    }

    /* renamed from: i */
    public final void m3577i(int i) {
        this.f35350f = i;
    }

    /* renamed from: j */
    public final int m3576j() {
        return this.f35350f;
    }

    /* renamed from: k */
    public final boolean m3575k() {
        return this.f35351g;
    }

    /* renamed from: l */
    public final void m3574l(boolean z) {
        this.f35351g = true;
    }

    /* renamed from: m */
    public final int m3573m() {
        return this.f35352h;
    }

    /* renamed from: n */
    public final void m3572n(int i) {
        this.f35352h = i;
    }

    @RecentlyNonNull
    public String toString() {
        return this.f35347c;
    }

    /* renamed from: b */
    public int m3584b(@RecentlyNonNull Context context) {
        int i = this.f35346b;
        if (i != -4 && i != -3) {
            if (i != -2) {
                C6479yu.m4568a();
                return vl0.m6111q(context, this.f35346b);
            }
            return C6478yt.m4576X0(context.getResources().getDisplayMetrics());
        }
        return -1;
    }

    /* renamed from: d */
    public int m3582d(@RecentlyNonNull Context context) {
        int i = this.f35345a;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            C6479yu.m4568a();
            return vl0.m6111q(context, this.f35345a);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<C6478yt> creator = C6478yt.CREATOR;
        return displayMetrics.widthPixels;
    }

    public C6710g(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 < 0 && i2 != -2 && i2 != -4) {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            this.f35345a = i;
            this.f35346b = i2;
            this.f35347c = str;
        }
    }
}
