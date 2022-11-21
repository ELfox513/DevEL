package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: g5.pa */
/* loaded from: classes2.dex */
public final class C3784pa extends AbstractC7408a {
    public static final Parcelable.Creator<C3784pa> CREATOR = new C3796qa();

    /* renamed from: A */
    public final boolean f16839A;

    /* renamed from: B */
    public final String f16840B;

    /* renamed from: C */
    public final Boolean f16841C;

    /* renamed from: D */
    public final long f16842D;

    /* renamed from: E */
    public final List<String> f16843E;

    /* renamed from: F */
    public final String f16844F;

    /* renamed from: G */
    public final String f16845G;

    /* renamed from: a */
    public final String f16846a;

    /* renamed from: b */
    public final String f16847b;

    /* renamed from: d */
    public final String f16848d;

    /* renamed from: k */
    public final String f16849k;

    /* renamed from: p */
    public final long f16850p;

    /* renamed from: q */
    public final long f16851q;

    /* renamed from: r */
    public final String f16852r;

    /* renamed from: s */
    public final boolean f16853s;

    /* renamed from: t */
    public final boolean f16854t;

    /* renamed from: u */
    public final long f16855u;

    /* renamed from: v */
    public final String f16856v;

    /* renamed from: w */
    public final long f16857w;

    /* renamed from: x */
    public final long f16858x;

    /* renamed from: y */
    public final int f16859y;

    /* renamed from: z */
    public final boolean f16860z;

    public C3784pa(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        C7297q.m1887f(str);
        this.f16846a = str;
        this.f16847b = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.f16848d = str3;
        this.f16855u = j;
        this.f16849k = str4;
        this.f16850p = j2;
        this.f16851q = j3;
        this.f16852r = str5;
        this.f16853s = z;
        this.f16854t = z2;
        this.f16856v = str6;
        this.f16857w = j4;
        this.f16858x = j5;
        this.f16859y = i;
        this.f16860z = z3;
        this.f16839A = z4;
        this.f16840B = str7;
        this.f16841C = bool;
        this.f16842D = j6;
        this.f16843E = list;
        this.f16844F = str8;
        this.f16845G = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f16846a, false);
        C7411c.m1473r(parcel, 3, this.f16847b, false);
        C7411c.m1473r(parcel, 4, this.f16848d, false);
        C7411c.m1473r(parcel, 5, this.f16849k, false);
        C7411c.m1476o(parcel, 6, this.f16850p);
        C7411c.m1476o(parcel, 7, this.f16851q);
        C7411c.m1473r(parcel, 8, this.f16852r, false);
        C7411c.m1488c(parcel, 9, this.f16853s);
        C7411c.m1488c(parcel, 10, this.f16854t);
        C7411c.m1476o(parcel, 11, this.f16855u);
        C7411c.m1473r(parcel, 12, this.f16856v, false);
        C7411c.m1476o(parcel, 13, this.f16857w);
        C7411c.m1476o(parcel, 14, this.f16858x);
        C7411c.m1479l(parcel, 15, this.f16859y);
        C7411c.m1488c(parcel, 16, this.f16860z);
        C7411c.m1488c(parcel, 18, this.f16839A);
        C7411c.m1473r(parcel, 19, this.f16840B, false);
        C7411c.m1486e(parcel, 21, this.f16841C, false);
        C7411c.m1476o(parcel, 22, this.f16842D);
        C7411c.m1471t(parcel, 23, this.f16843E, false);
        C7411c.m1473r(parcel, 24, this.f16844F, false);
        C7411c.m1473r(parcel, 25, this.f16845G, false);
        C7411c.m1489b(parcel, m1490a);
    }

    public C3784pa(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        this.f16846a = str;
        this.f16847b = str2;
        this.f16848d = str3;
        this.f16855u = j3;
        this.f16849k = str4;
        this.f16850p = j;
        this.f16851q = j2;
        this.f16852r = str5;
        this.f16853s = z;
        this.f16854t = z2;
        this.f16856v = str6;
        this.f16857w = j4;
        this.f16858x = j5;
        this.f16859y = i;
        this.f16860z = z3;
        this.f16839A = z4;
        this.f16840B = str7;
        this.f16841C = bool;
        this.f16842D = j6;
        this.f16843E = list;
        this.f16844F = str8;
        this.f16845G = str9;
    }
}
