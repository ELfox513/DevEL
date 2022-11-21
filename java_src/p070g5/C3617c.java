package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: g5.c */
/* loaded from: classes2.dex */
public final class C3617c extends AbstractC7408a {
    public static final Parcelable.Creator<C3617c> CREATOR = new C3629d();

    /* renamed from: a */
    public String f16309a;

    /* renamed from: b */
    public String f16310b;

    /* renamed from: d */
    public C3652ea f16311d;

    /* renamed from: k */
    public long f16312k;

    /* renamed from: p */
    public boolean f16313p;

    /* renamed from: q */
    public String f16314q;

    /* renamed from: r */
    public final C3833u f16315r;

    /* renamed from: s */
    public long f16316s;

    /* renamed from: t */
    public C3833u f16317t;

    /* renamed from: u */
    public final long f16318u;

    /* renamed from: v */
    public final C3833u f16319v;

    public C3617c(C3617c c3617c) {
        C7297q.m1883j(c3617c);
        this.f16309a = c3617c.f16309a;
        this.f16310b = c3617c.f16310b;
        this.f16311d = c3617c.f16311d;
        this.f16312k = c3617c.f16312k;
        this.f16313p = c3617c.f16313p;
        this.f16314q = c3617c.f16314q;
        this.f16315r = c3617c.f16315r;
        this.f16316s = c3617c.f16316s;
        this.f16317t = c3617c.f16317t;
        this.f16318u = c3617c.f16318u;
        this.f16319v = c3617c.f16319v;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f16309a, false);
        C7411c.m1473r(parcel, 3, this.f16310b, false);
        C7411c.m1474q(parcel, 4, this.f16311d, i, false);
        C7411c.m1476o(parcel, 5, this.f16312k);
        C7411c.m1488c(parcel, 6, this.f16313p);
        C7411c.m1473r(parcel, 7, this.f16314q, false);
        C7411c.m1474q(parcel, 8, this.f16315r, i, false);
        C7411c.m1476o(parcel, 9, this.f16316s);
        C7411c.m1474q(parcel, 10, this.f16317t, i, false);
        C7411c.m1476o(parcel, 11, this.f16318u);
        C7411c.m1474q(parcel, 12, this.f16319v, i, false);
        C7411c.m1489b(parcel, m1490a);
    }

    public C3617c(String str, String str2, C3652ea c3652ea, long j, boolean z, String str3, C3833u c3833u, long j2, C3833u c3833u2, long j3, C3833u c3833u3) {
        this.f16309a = str;
        this.f16310b = str2;
        this.f16311d = c3652ea;
        this.f16312k = j;
        this.f16313p = z;
        this.f16314q = str3;
        this.f16315r = c3833u;
        this.f16316s = j2;
        this.f16317t = c3833u2;
        this.f16318u = j3;
        this.f16319v = c3833u3;
    }
}
