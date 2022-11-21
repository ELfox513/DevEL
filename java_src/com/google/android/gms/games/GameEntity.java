package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import p078h4.C4040p;
import p078h4.InterfaceC4024c;
import p220x3.C7289o;
import p228y3.C7411c;
@UsedByReflection("GamesGmsClientImpl.java")
/* loaded from: classes.dex */
public final class GameEntity extends GamesDowngradeableSafeParcel implements InterfaceC4024c {
    @RecentlyNonNull
    public static final Parcelable.Creator<GameEntity> CREATOR = new C1427a();

    /* renamed from: A */
    public final int f7782A;

    /* renamed from: B */
    public final int f7783B;

    /* renamed from: C */
    public final boolean f7784C;

    /* renamed from: D */
    public final boolean f7785D;

    /* renamed from: E */
    public final String f7786E;

    /* renamed from: F */
    public final String f7787F;

    /* renamed from: G */
    public final String f7788G;

    /* renamed from: H */
    public final boolean f7789H;

    /* renamed from: I */
    public final boolean f7790I;

    /* renamed from: J */
    public final boolean f7791J;

    /* renamed from: K */
    public final String f7792K;

    /* renamed from: L */
    public final boolean f7793L;

    /* renamed from: d */
    public final String f7794d;

    /* renamed from: k */
    public final String f7795k;

    /* renamed from: p */
    public final String f7796p;

    /* renamed from: q */
    public final String f7797q;

    /* renamed from: r */
    public final String f7798r;

    /* renamed from: s */
    public final String f7799s;

    /* renamed from: t */
    public final Uri f7800t;

    /* renamed from: u */
    public final Uri f7801u;

    /* renamed from: v */
    public final Uri f7802v;

    /* renamed from: w */
    public final boolean f7803w;

    /* renamed from: x */
    public final boolean f7804x;

    /* renamed from: y */
    public final String f7805y;

    /* renamed from: z */
    public final int f7806z;

    public GameEntity(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Uri uri2, Uri uri3, boolean z, boolean z2, String str7, int i, int i2, int i3, boolean z3, boolean z4, String str8, String str9, String str10, boolean z5, boolean z6, boolean z7, String str11, boolean z8) {
        this.f7794d = str;
        this.f7795k = str2;
        this.f7796p = str3;
        this.f7797q = str4;
        this.f7798r = str5;
        this.f7799s = str6;
        this.f7800t = uri;
        this.f7786E = str8;
        this.f7801u = uri2;
        this.f7787F = str9;
        this.f7802v = uri3;
        this.f7788G = str10;
        this.f7803w = z;
        this.f7804x = z2;
        this.f7805y = str7;
        this.f7806z = i;
        this.f7782A = i2;
        this.f7783B = i3;
        this.f7784C = z3;
        this.f7785D = z4;
        this.f7789H = z5;
        this.f7790I = z6;
        this.f7791J = z7;
        this.f7792K = str11;
        this.f7793L = z8;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: G */
    public final String mo17548G() {
        return this.f7794d;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: H */
    public final boolean mo17547H() {
        return this.f7789H;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: N */
    public final String mo17546N() {
        return this.f7796p;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: R0 */
    public final boolean mo17545R0() {
        return this.f7793L;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: V */
    public final String mo17544V() {
        return this.f7799s;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: W0 */
    public final Uri mo17543W0() {
        return this.f7802v;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: a0 */
    public final int mo17542a0() {
        return this.f7783B;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: b */
    public final boolean mo17541b() {
        return this.f7803w;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: c */
    public final boolean mo17540c() {
        return this.f7804x;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: d */
    public final String mo17539d() {
        return this.f7805y;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: e */
    public final boolean mo17538e() {
        return this.f7790I;
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        return m22992c1(this, obj);
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: f */
    public final boolean mo17537f() {
        return this.f7785D;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: g */
    public final boolean mo17536g() {
        return this.f7784C;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    public final String getDescription() {
        return this.f7798r;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    public final String getFeaturedImageUrl() {
        return this.f7788G;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    public final String getHiResImageUrl() {
        return this.f7787F;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    public final String getIconImageUrl() {
        return this.f7786E;
    }

    public final int hashCode() {
        return m22993b1(this);
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: m0 */
    public final String mo17535m0() {
        return this.f7792K;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: q */
    public final String mo17534q() {
        return this.f7795k;
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: r0 */
    public final boolean mo17533r0() {
        return this.f7791J;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: s */
    public final Uri mo17532s() {
        return this.f7801u;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: t */
    public final Uri mo17531t() {
        return this.f7800t;
    }

    @RecentlyNonNull
    public final String toString() {
        return m22989f1(this);
    }

    @Override // p078h4.InterfaceC4024c
    /* renamed from: v0 */
    public final int mo17530v0() {
        return this.f7782A;
    }

    @Override // p078h4.InterfaceC4024c
    @RecentlyNonNull
    /* renamed from: x0 */
    public final String mo17529x0() {
        return this.f7797q;
    }

    /* renamed from: com.google.android.gms.games.GameEntity$a */
    /* loaded from: classes.dex */
    public static final class C1427a extends C4040p {
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GameEntity createFromParcel(Parcel parcel) {
            return mo17489a(parcel);
        }

        @Override // p078h4.C4040p
        /* renamed from: a */
        public final GameEntity mo17489a(Parcel parcel) {
            Uri parse;
            Uri parse2;
            Uri parse3;
            boolean z;
            boolean z2;
            if (!GamesDowngradeableSafeParcel.m22980a1(DowngradeableSafeParcel.m23010Y0()) && !DowngradeableSafeParcel.m23011X0(GameEntity.class.getCanonicalName())) {
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                if (readString7 == null) {
                    parse = null;
                } else {
                    parse = Uri.parse(readString7);
                }
                String readString8 = parcel.readString();
                if (readString8 == null) {
                    parse2 = null;
                } else {
                    parse2 = Uri.parse(readString8);
                }
                String readString9 = parcel.readString();
                if (readString9 == null) {
                    parse3 = null;
                } else {
                    parse3 = Uri.parse(readString9);
                }
                if (parcel.readInt() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (parcel.readInt() > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                return new GameEntity(readString, readString2, readString3, readString4, readString5, readString6, parse, parse2, parse3, z, z2, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
            }
            return super.mo17489a(parcel);
        }
    }

    /* renamed from: b1 */
    public static int m22993b1(InterfaceC4024c interfaceC4024c) {
        return C7289o.m1907b(interfaceC4024c.mo17548G(), interfaceC4024c.mo17534q(), interfaceC4024c.mo17546N(), interfaceC4024c.mo17529x0(), interfaceC4024c.getDescription(), interfaceC4024c.mo17544V(), interfaceC4024c.mo17531t(), interfaceC4024c.mo17532s(), interfaceC4024c.mo17543W0(), Boolean.valueOf(interfaceC4024c.mo17541b()), Boolean.valueOf(interfaceC4024c.mo17540c()), interfaceC4024c.mo17539d(), Integer.valueOf(interfaceC4024c.mo17530v0()), Integer.valueOf(interfaceC4024c.mo17542a0()), Boolean.valueOf(interfaceC4024c.mo17536g()), Boolean.valueOf(interfaceC4024c.mo17537f()), Boolean.valueOf(interfaceC4024c.mo17547H()), Boolean.valueOf(interfaceC4024c.mo17538e()), Boolean.valueOf(interfaceC4024c.mo17533r0()), interfaceC4024c.mo17535m0(), Boolean.valueOf(interfaceC4024c.mo17545R0()));
    }

    /* renamed from: c1 */
    public static boolean m22992c1(InterfaceC4024c interfaceC4024c, Object obj) {
        if (!(obj instanceof InterfaceC4024c)) {
            return false;
        }
        if (interfaceC4024c == obj) {
            return true;
        }
        InterfaceC4024c interfaceC4024c2 = (InterfaceC4024c) obj;
        if (!C7289o.m1908a(interfaceC4024c2.mo17548G(), interfaceC4024c.mo17548G()) || !C7289o.m1908a(interfaceC4024c2.mo17534q(), interfaceC4024c.mo17534q()) || !C7289o.m1908a(interfaceC4024c2.mo17546N(), interfaceC4024c.mo17546N()) || !C7289o.m1908a(interfaceC4024c2.mo17529x0(), interfaceC4024c.mo17529x0()) || !C7289o.m1908a(interfaceC4024c2.getDescription(), interfaceC4024c.getDescription()) || !C7289o.m1908a(interfaceC4024c2.mo17544V(), interfaceC4024c.mo17544V()) || !C7289o.m1908a(interfaceC4024c2.mo17531t(), interfaceC4024c.mo17531t()) || !C7289o.m1908a(interfaceC4024c2.mo17532s(), interfaceC4024c.mo17532s()) || !C7289o.m1908a(interfaceC4024c2.mo17543W0(), interfaceC4024c.mo17543W0()) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17541b()), Boolean.valueOf(interfaceC4024c.mo17541b())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17540c()), Boolean.valueOf(interfaceC4024c.mo17540c())) || !C7289o.m1908a(interfaceC4024c2.mo17539d(), interfaceC4024c.mo17539d()) || !C7289o.m1908a(Integer.valueOf(interfaceC4024c2.mo17530v0()), Integer.valueOf(interfaceC4024c.mo17530v0())) || !C7289o.m1908a(Integer.valueOf(interfaceC4024c2.mo17542a0()), Integer.valueOf(interfaceC4024c.mo17542a0())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17536g()), Boolean.valueOf(interfaceC4024c.mo17536g())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17537f()), Boolean.valueOf(interfaceC4024c.mo17537f())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17547H()), Boolean.valueOf(interfaceC4024c.mo17547H())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17538e()), Boolean.valueOf(interfaceC4024c.mo17538e())) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17533r0()), Boolean.valueOf(interfaceC4024c.mo17533r0())) || !C7289o.m1908a(interfaceC4024c2.mo17535m0(), interfaceC4024c.mo17535m0()) || !C7289o.m1908a(Boolean.valueOf(interfaceC4024c2.mo17545R0()), Boolean.valueOf(interfaceC4024c.mo17545R0()))) {
            return false;
        }
        return true;
    }

    /* renamed from: f1 */
    public static String m22989f1(InterfaceC4024c interfaceC4024c) {
        return C7289o.m1906c(interfaceC4024c).m1905a("ApplicationId", interfaceC4024c.mo17548G()).m1905a("DisplayName", interfaceC4024c.mo17534q()).m1905a("PrimaryCategory", interfaceC4024c.mo17546N()).m1905a("SecondaryCategory", interfaceC4024c.mo17529x0()).m1905a("Description", interfaceC4024c.getDescription()).m1905a("DeveloperName", interfaceC4024c.mo17544V()).m1905a("IconImageUri", interfaceC4024c.mo17531t()).m1905a("IconImageUrl", interfaceC4024c.getIconImageUrl()).m1905a("HiResImageUri", interfaceC4024c.mo17532s()).m1905a("HiResImageUrl", interfaceC4024c.getHiResImageUrl()).m1905a("FeaturedImageUri", interfaceC4024c.mo17543W0()).m1905a("FeaturedImageUrl", interfaceC4024c.getFeaturedImageUrl()).m1905a("PlayEnabledGame", Boolean.valueOf(interfaceC4024c.mo17541b())).m1905a("InstanceInstalled", Boolean.valueOf(interfaceC4024c.mo17540c())).m1905a("InstancePackageName", interfaceC4024c.mo17539d()).m1905a("AchievementTotalCount", Integer.valueOf(interfaceC4024c.mo17530v0())).m1905a("LeaderboardCount", Integer.valueOf(interfaceC4024c.mo17542a0())).m1905a("AreSnapshotsEnabled", Boolean.valueOf(interfaceC4024c.mo17533r0())).m1905a("ThemeColor", interfaceC4024c.mo17535m0()).m1905a("HasGamepadSupport", Boolean.valueOf(interfaceC4024c.mo17545R0())).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        String uri;
        String uri2;
        if (!m23009Z0()) {
            int m1490a = C7411c.m1490a(parcel);
            C7411c.m1473r(parcel, 1, mo17548G(), false);
            C7411c.m1473r(parcel, 2, mo17534q(), false);
            C7411c.m1473r(parcel, 3, mo17546N(), false);
            C7411c.m1473r(parcel, 4, mo17529x0(), false);
            C7411c.m1473r(parcel, 5, getDescription(), false);
            C7411c.m1473r(parcel, 6, mo17544V(), false);
            C7411c.m1474q(parcel, 7, mo17531t(), i, false);
            C7411c.m1474q(parcel, 8, mo17532s(), i, false);
            C7411c.m1474q(parcel, 9, mo17543W0(), i, false);
            C7411c.m1488c(parcel, 10, this.f7803w);
            C7411c.m1488c(parcel, 11, this.f7804x);
            C7411c.m1473r(parcel, 12, this.f7805y, false);
            C7411c.m1479l(parcel, 13, this.f7806z);
            C7411c.m1479l(parcel, 14, mo17530v0());
            C7411c.m1479l(parcel, 15, mo17542a0());
            C7411c.m1488c(parcel, 16, this.f7784C);
            C7411c.m1488c(parcel, 17, this.f7785D);
            C7411c.m1473r(parcel, 18, getIconImageUrl(), false);
            C7411c.m1473r(parcel, 19, getHiResImageUrl(), false);
            C7411c.m1473r(parcel, 20, getFeaturedImageUrl(), false);
            C7411c.m1488c(parcel, 21, this.f7789H);
            C7411c.m1488c(parcel, 22, this.f7790I);
            C7411c.m1488c(parcel, 23, mo17533r0());
            C7411c.m1473r(parcel, 24, mo17535m0(), false);
            C7411c.m1488c(parcel, 25, mo17545R0());
            C7411c.m1489b(parcel, m1490a);
            return;
        }
        parcel.writeString(this.f7794d);
        parcel.writeString(this.f7795k);
        parcel.writeString(this.f7796p);
        parcel.writeString(this.f7797q);
        parcel.writeString(this.f7798r);
        parcel.writeString(this.f7799s);
        Uri uri3 = this.f7800t;
        String str = null;
        if (uri3 == null) {
            uri = null;
        } else {
            uri = uri3.toString();
        }
        parcel.writeString(uri);
        Uri uri4 = this.f7801u;
        if (uri4 == null) {
            uri2 = null;
        } else {
            uri2 = uri4.toString();
        }
        parcel.writeString(uri2);
        Uri uri5 = this.f7802v;
        if (uri5 != null) {
            str = uri5.toString();
        }
        parcel.writeString(str);
        parcel.writeInt(this.f7803w ? 1 : 0);
        parcel.writeInt(this.f7804x ? 1 : 0);
        parcel.writeString(this.f7805y);
        parcel.writeInt(this.f7806z);
        parcel.writeInt(this.f7782A);
        parcel.writeInt(this.f7783B);
    }
}
