package p168r4;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p220x3.C7289o;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.tt */
/* loaded from: classes2.dex */
public final class C6293tt extends AbstractC7408a {
    public static final Parcelable.Creator<C6293tt> CREATOR = new C6367vt();

    /* renamed from: A */
    public final String f31985A;

    /* renamed from: B */
    public final String f31986B;
    @Deprecated

    /* renamed from: C */
    public final boolean f31987C;

    /* renamed from: D */
    public final C5922jt f31988D;

    /* renamed from: E */
    public final int f31989E;

    /* renamed from: F */
    public final String f31990F;

    /* renamed from: G */
    public final List<String> f31991G;

    /* renamed from: H */
    public final int f31992H;

    /* renamed from: I */
    public final String f31993I;

    /* renamed from: a */
    public final int f31994a;
    @Deprecated

    /* renamed from: b */
    public final long f31995b;

    /* renamed from: d */
    public final Bundle f31996d;
    @Deprecated

    /* renamed from: k */
    public final int f31997k;

    /* renamed from: p */
    public final List<String> f31998p;

    /* renamed from: q */
    public final boolean f31999q;

    /* renamed from: r */
    public final int f32000r;

    /* renamed from: s */
    public final boolean f32001s;

    /* renamed from: t */
    public final String f32002t;

    /* renamed from: u */
    public final C6335uy f32003u;

    /* renamed from: v */
    public final Location f32004v;

    /* renamed from: w */
    public final String f32005w;

    /* renamed from: x */
    public final Bundle f32006x;

    /* renamed from: y */
    public final Bundle f32007y;

    /* renamed from: z */
    public final List<String> f32008z;

    public C6293tt(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, C6335uy c6335uy, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, C5922jt c5922jt, int i4, String str5, List<String> list3, int i5, String str6) {
        this.f31994a = i;
        this.f31995b = j;
        this.f31996d = bundle == null ? new Bundle() : bundle;
        this.f31997k = i2;
        this.f31998p = list;
        this.f31999q = z;
        this.f32000r = i3;
        this.f32001s = z2;
        this.f32002t = str;
        this.f32003u = c6335uy;
        this.f32004v = location;
        this.f32005w = str2;
        this.f32006x = bundle2 == null ? new Bundle() : bundle2;
        this.f32007y = bundle3;
        this.f32008z = list2;
        this.f31985A = str3;
        this.f31986B = str4;
        this.f31987C = z3;
        this.f31988D = c5922jt;
        this.f31989E = i4;
        this.f31990F = str5;
        this.f31991G = list3 == null ? new ArrayList<>() : list3;
        this.f31992H = i5;
        this.f31993I = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C6293tt)) {
            return false;
        }
        C6293tt c6293tt = (C6293tt) obj;
        if (this.f31994a != c6293tt.f31994a || this.f31995b != c6293tt.f31995b || !dm0.m12097a(this.f31996d, c6293tt.f31996d) || this.f31997k != c6293tt.f31997k || !C7289o.m1908a(this.f31998p, c6293tt.f31998p) || this.f31999q != c6293tt.f31999q || this.f32000r != c6293tt.f32000r || this.f32001s != c6293tt.f32001s || !C7289o.m1908a(this.f32002t, c6293tt.f32002t) || !C7289o.m1908a(this.f32003u, c6293tt.f32003u) || !C7289o.m1908a(this.f32004v, c6293tt.f32004v) || !C7289o.m1908a(this.f32005w, c6293tt.f32005w) || !dm0.m12097a(this.f32006x, c6293tt.f32006x) || !dm0.m12097a(this.f32007y, c6293tt.f32007y) || !C7289o.m1908a(this.f32008z, c6293tt.f32008z) || !C7289o.m1908a(this.f31985A, c6293tt.f31985A) || !C7289o.m1908a(this.f31986B, c6293tt.f31986B) || this.f31987C != c6293tt.f31987C || this.f31989E != c6293tt.f31989E || !C7289o.m1908a(this.f31990F, c6293tt.f31990F) || !C7289o.m1908a(this.f31991G, c6293tt.f31991G) || this.f31992H != c6293tt.f31992H || !C7289o.m1908a(this.f31993I, c6293tt.f31993I)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return C7289o.m1907b(Integer.valueOf(this.f31994a), Long.valueOf(this.f31995b), this.f31996d, Integer.valueOf(this.f31997k), this.f31998p, Boolean.valueOf(this.f31999q), Integer.valueOf(this.f32000r), Boolean.valueOf(this.f32001s), this.f32002t, this.f32003u, this.f32004v, this.f32005w, this.f32006x, this.f32007y, this.f32008z, this.f31985A, this.f31986B, Boolean.valueOf(this.f31987C), Integer.valueOf(this.f31989E), this.f31990F, this.f31991G, Integer.valueOf(this.f31992H), this.f31993I);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f31994a);
        C7411c.m1476o(parcel, 2, this.f31995b);
        C7411c.m1485f(parcel, 3, this.f31996d, false);
        C7411c.m1479l(parcel, 4, this.f31997k);
        C7411c.m1471t(parcel, 5, this.f31998p, false);
        C7411c.m1488c(parcel, 6, this.f31999q);
        C7411c.m1479l(parcel, 7, this.f32000r);
        C7411c.m1488c(parcel, 8, this.f32001s);
        C7411c.m1473r(parcel, 9, this.f32002t, false);
        C7411c.m1474q(parcel, 10, this.f32003u, i, false);
        C7411c.m1474q(parcel, 11, this.f32004v, i, false);
        C7411c.m1473r(parcel, 12, this.f32005w, false);
        C7411c.m1485f(parcel, 13, this.f32006x, false);
        C7411c.m1485f(parcel, 14, this.f32007y, false);
        C7411c.m1471t(parcel, 15, this.f32008z, false);
        C7411c.m1473r(parcel, 16, this.f31985A, false);
        C7411c.m1473r(parcel, 17, this.f31986B, false);
        C7411c.m1488c(parcel, 18, this.f31987C);
        C7411c.m1474q(parcel, 19, this.f31988D, i, false);
        C7411c.m1479l(parcel, 20, this.f31989E);
        C7411c.m1473r(parcel, 21, this.f31990F, false);
        C7411c.m1471t(parcel, 22, this.f31991G, false);
        C7411c.m1479l(parcel, 23, this.f31992H);
        C7411c.m1473r(parcel, 24, this.f31993I, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
