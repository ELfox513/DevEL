package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import p078h4.C4035k;
import p078h4.C4038n;
import p078h4.C4043s;
import p078h4.C4047w;
import p078h4.InterfaceC4023b;
import p078h4.InterfaceC4033i;
import p078h4.InterfaceC4036l;
import p114l4.C4563a;
import p220x3.C7289o;
import p228y3.C7411c;
@UsedByReflection("GamesGmsClientImpl.java")
/* loaded from: classes.dex */
public final class PlayerEntity extends GamesDowngradeableSafeParcel implements InterfaceC4033i {
    @RecentlyNonNull
    public static final Parcelable.Creator<PlayerEntity> CREATOR = new C1428a();

    /* renamed from: A */
    public final boolean f7807A;

    /* renamed from: B */
    public final String f7808B;

    /* renamed from: C */
    public final String f7809C;

    /* renamed from: D */
    public final Uri f7810D;

    /* renamed from: E */
    public final String f7811E;

    /* renamed from: F */
    public final Uri f7812F;

    /* renamed from: G */
    public final String f7813G;

    /* renamed from: H */
    public long f7814H;

    /* renamed from: I */
    public final C4047w f7815I;

    /* renamed from: J */
    public final C4038n f7816J;

    /* renamed from: d */
    public String f7817d;

    /* renamed from: k */
    public String f7818k;

    /* renamed from: p */
    public final Uri f7819p;

    /* renamed from: q */
    public final Uri f7820q;

    /* renamed from: r */
    public final long f7821r;

    /* renamed from: s */
    public final int f7822s;

    /* renamed from: t */
    public final long f7823t;

    /* renamed from: u */
    public final String f7824u;

    /* renamed from: v */
    public final String f7825v;

    /* renamed from: w */
    public final String f7826w;

    /* renamed from: x */
    public final C4563a f7827x;

    /* renamed from: y */
    public final C4035k f7828y;

    /* renamed from: z */
    public final boolean f7829z;

    public PlayerEntity(String str, String str2, Uri uri, Uri uri2, long j, int i, long j2, String str3, String str4, String str5, C4563a c4563a, C4035k c4035k, boolean z, boolean z2, String str6, String str7, Uri uri3, String str8, Uri uri4, String str9, long j3, C4047w c4047w, C4038n c4038n) {
        this.f7817d = str;
        this.f7818k = str2;
        this.f7819p = uri;
        this.f7824u = str3;
        this.f7820q = uri2;
        this.f7825v = str4;
        this.f7821r = j;
        this.f7822s = i;
        this.f7823t = j2;
        this.f7826w = str5;
        this.f7829z = z;
        this.f7827x = c4563a;
        this.f7828y = c4035k;
        this.f7807A = z2;
        this.f7808B = str6;
        this.f7809C = str7;
        this.f7810D = uri3;
        this.f7811E = str8;
        this.f7812F = uri4;
        this.f7813G = str9;
        this.f7814H = j3;
        this.f7815I = c4047w;
        this.f7816J = c4038n;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: B0 */
    public final InterfaceC4036l mo17513B0() {
        return this.f7815I;
    }

    @Override // p078h4.InterfaceC4033i
    /* renamed from: O */
    public final long mo17512O() {
        return this.f7821r;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: R */
    public final Uri mo17511R() {
        return this.f7812F;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNonNull
    /* renamed from: U0 */
    public final String mo17510U0() {
        return this.f7817d;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNonNull
    /* renamed from: Z */
    public final InterfaceC4023b mo17509Z() {
        return this.f7816J;
    }

    /* renamed from: b1 */
    public final long m22987b1() {
        return this.f7823t;
    }

    public final boolean equals(@RecentlyNonNull Object obj) {
        return m22985d1(this, obj);
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    public final String getBannerImageLandscapeUrl() {
        return this.f7811E;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    public final String getBannerImagePortraitUrl() {
        return this.f7813G;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    public final String getHiResImageUrl() {
        return this.f7825v;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    public final String getIconImageUrl() {
        return this.f7824u;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNonNull
    public final String getName() {
        return this.f7809C;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    public final String getTitle() {
        return this.f7826w;
    }

    public final int hashCode() {
        return m22986c1(this);
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: i */
    public final String mo17508i() {
        return this.f7808B;
    }

    @Override // p078h4.InterfaceC4033i
    /* renamed from: k */
    public final boolean mo17507k() {
        return this.f7807A;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: l0 */
    public final C4035k mo17506l0() {
        return this.f7828y;
    }

    @Override // p078h4.InterfaceC4033i
    /* renamed from: o */
    public final long mo17505o() {
        return this.f7814H;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNonNull
    /* renamed from: q */
    public final String mo17504q() {
        return this.f7818k;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: s */
    public final Uri mo17503s() {
        return this.f7820q;
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: t */
    public final Uri mo17502t() {
        return this.f7819p;
    }

    @RecentlyNonNull
    public final String toString() {
        return m22982g1(this);
    }

    @Override // p078h4.InterfaceC4033i
    @RecentlyNullable
    /* renamed from: y */
    public final Uri mo17501y() {
        return this.f7810D;
    }

    /* renamed from: com.google.android.gms.games.PlayerEntity$a */
    /* loaded from: classes.dex */
    public static final class C1428a extends C4043s {
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlayerEntity createFromParcel(Parcel parcel) {
            return mo17488a(parcel);
        }

        @Override // p078h4.C4043s
        /* renamed from: a */
        public final PlayerEntity mo17488a(Parcel parcel) {
            Uri parse;
            Uri parse2;
            if (!GamesDowngradeableSafeParcel.m22980a1(DowngradeableSafeParcel.m23010Y0()) && !DowngradeableSafeParcel.m23011X0(PlayerEntity.class.getCanonicalName())) {
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                long readLong = parcel.readLong();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                if (readString3 == null) {
                    parse = null;
                } else {
                    parse = Uri.parse(readString3);
                }
                if (readString4 == null) {
                    parse2 = null;
                } else {
                    parse2 = Uri.parse(readString4);
                }
                return new PlayerEntity(readString, readString2, parse, parse2, readLong, -1, -1L, null, null, null, null, null, true, false, readString5, readString6, null, null, null, null, -1L, null, null);
            }
            return super.mo17488a(parcel);
        }
    }

    /* renamed from: c1 */
    public static int m22986c1(InterfaceC4033i interfaceC4033i) {
        return C7289o.m1907b(interfaceC4033i.mo17510U0(), interfaceC4033i.mo17504q(), Boolean.valueOf(interfaceC4033i.mo17507k()), interfaceC4033i.mo17502t(), interfaceC4033i.mo17503s(), Long.valueOf(interfaceC4033i.mo17512O()), interfaceC4033i.getTitle(), interfaceC4033i.mo17506l0(), interfaceC4033i.mo17508i(), interfaceC4033i.getName(), interfaceC4033i.mo17501y(), interfaceC4033i.mo17511R(), Long.valueOf(interfaceC4033i.mo17505o()), interfaceC4033i.mo17513B0(), interfaceC4033i.mo17509Z());
    }

    /* renamed from: d1 */
    public static boolean m22985d1(InterfaceC4033i interfaceC4033i, Object obj) {
        if (!(obj instanceof InterfaceC4033i)) {
            return false;
        }
        if (interfaceC4033i == obj) {
            return true;
        }
        InterfaceC4033i interfaceC4033i2 = (InterfaceC4033i) obj;
        if (!C7289o.m1908a(interfaceC4033i2.mo17510U0(), interfaceC4033i.mo17510U0()) || !C7289o.m1908a(interfaceC4033i2.mo17504q(), interfaceC4033i.mo17504q()) || !C7289o.m1908a(Boolean.valueOf(interfaceC4033i2.mo17507k()), Boolean.valueOf(interfaceC4033i.mo17507k())) || !C7289o.m1908a(interfaceC4033i2.mo17502t(), interfaceC4033i.mo17502t()) || !C7289o.m1908a(interfaceC4033i2.mo17503s(), interfaceC4033i.mo17503s()) || !C7289o.m1908a(Long.valueOf(interfaceC4033i2.mo17512O()), Long.valueOf(interfaceC4033i.mo17512O())) || !C7289o.m1908a(interfaceC4033i2.getTitle(), interfaceC4033i.getTitle()) || !C7289o.m1908a(interfaceC4033i2.mo17506l0(), interfaceC4033i.mo17506l0()) || !C7289o.m1908a(interfaceC4033i2.mo17508i(), interfaceC4033i.mo17508i()) || !C7289o.m1908a(interfaceC4033i2.getName(), interfaceC4033i.getName()) || !C7289o.m1908a(interfaceC4033i2.mo17501y(), interfaceC4033i.mo17501y()) || !C7289o.m1908a(interfaceC4033i2.mo17511R(), interfaceC4033i.mo17511R()) || !C7289o.m1908a(Long.valueOf(interfaceC4033i2.mo17505o()), Long.valueOf(interfaceC4033i.mo17505o())) || !C7289o.m1908a(interfaceC4033i2.mo17509Z(), interfaceC4033i.mo17509Z()) || !C7289o.m1908a(interfaceC4033i2.mo17513B0(), interfaceC4033i.mo17513B0())) {
            return false;
        }
        return true;
    }

    /* renamed from: g1 */
    public static String m22982g1(InterfaceC4033i interfaceC4033i) {
        C7289o.C7290a m1905a = C7289o.m1906c(interfaceC4033i).m1905a("PlayerId", interfaceC4033i.mo17510U0()).m1905a("DisplayName", interfaceC4033i.mo17504q()).m1905a("HasDebugAccess", Boolean.valueOf(interfaceC4033i.mo17507k())).m1905a("IconImageUri", interfaceC4033i.mo17502t()).m1905a("IconImageUrl", interfaceC4033i.getIconImageUrl()).m1905a("HiResImageUri", interfaceC4033i.mo17503s()).m1905a("HiResImageUrl", interfaceC4033i.getHiResImageUrl()).m1905a("RetrievedTimestamp", Long.valueOf(interfaceC4033i.mo17512O())).m1905a("Title", interfaceC4033i.getTitle()).m1905a("LevelInfo", interfaceC4033i.mo17506l0()).m1905a("GamerTag", interfaceC4033i.mo17508i()).m1905a("Name", interfaceC4033i.getName()).m1905a("BannerImageLandscapeUri", interfaceC4033i.mo17501y()).m1905a("BannerImageLandscapeUrl", interfaceC4033i.getBannerImageLandscapeUrl()).m1905a("BannerImagePortraitUri", interfaceC4033i.mo17511R()).m1905a("BannerImagePortraitUrl", interfaceC4033i.getBannerImagePortraitUrl()).m1905a("CurrentPlayerInfo", interfaceC4033i.mo17509Z()).m1905a("totalUnlockedAchievement", Long.valueOf(interfaceC4033i.mo17505o()));
        if (interfaceC4033i.mo17513B0() != null) {
            m1905a.m1905a("RelationshipInfo", interfaceC4033i.mo17513B0());
        }
        return m1905a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        String uri;
        if (!m23009Z0()) {
            int m1490a = C7411c.m1490a(parcel);
            C7411c.m1473r(parcel, 1, mo17510U0(), false);
            C7411c.m1473r(parcel, 2, mo17504q(), false);
            C7411c.m1474q(parcel, 3, mo17502t(), i, false);
            C7411c.m1474q(parcel, 4, mo17503s(), i, false);
            C7411c.m1476o(parcel, 5, mo17512O());
            C7411c.m1479l(parcel, 6, this.f7822s);
            C7411c.m1476o(parcel, 7, m22987b1());
            C7411c.m1473r(parcel, 8, getIconImageUrl(), false);
            C7411c.m1473r(parcel, 9, getHiResImageUrl(), false);
            C7411c.m1473r(parcel, 14, getTitle(), false);
            C7411c.m1474q(parcel, 15, this.f7827x, i, false);
            C7411c.m1474q(parcel, 16, mo17506l0(), i, false);
            C7411c.m1488c(parcel, 18, this.f7829z);
            C7411c.m1488c(parcel, 19, this.f7807A);
            C7411c.m1473r(parcel, 20, this.f7808B, false);
            C7411c.m1473r(parcel, 21, this.f7809C, false);
            C7411c.m1474q(parcel, 22, mo17501y(), i, false);
            C7411c.m1473r(parcel, 23, getBannerImageLandscapeUrl(), false);
            C7411c.m1474q(parcel, 24, mo17511R(), i, false);
            C7411c.m1473r(parcel, 25, getBannerImagePortraitUrl(), false);
            C7411c.m1476o(parcel, 29, this.f7814H);
            C7411c.m1474q(parcel, 33, mo17513B0(), i, false);
            C7411c.m1474q(parcel, 35, mo17509Z(), i, false);
            C7411c.m1489b(parcel, m1490a);
            return;
        }
        parcel.writeString(this.f7817d);
        parcel.writeString(this.f7818k);
        Uri uri2 = this.f7819p;
        String str = null;
        if (uri2 == null) {
            uri = null;
        } else {
            uri = uri2.toString();
        }
        parcel.writeString(uri);
        Uri uri3 = this.f7820q;
        if (uri3 != null) {
            str = uri3.toString();
        }
        parcel.writeString(str);
        parcel.writeLong(this.f7821r);
    }
}
