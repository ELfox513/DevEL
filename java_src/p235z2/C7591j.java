package p235z2;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: z2.j */
/* loaded from: classes.dex */
public final class C7591j extends AbstractC7408a {
    public static final Parcelable.Creator<C7591j> CREATOR = new C7592k();

    /* renamed from: a */
    public final boolean f37566a;

    /* renamed from: b */
    public final boolean f37567b;

    /* renamed from: d */
    public final String f37568d;

    /* renamed from: k */
    public final boolean f37569k;

    /* renamed from: p */
    public final float f37570p;

    /* renamed from: q */
    public final int f37571q;

    /* renamed from: r */
    public final boolean f37572r;

    /* renamed from: s */
    public final boolean f37573s;

    /* renamed from: t */
    public final boolean f37574t;

    public C7591j(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.f37566a = z;
        this.f37567b = z2;
        this.f37568d = str;
        this.f37569k = z3;
        this.f37570p = f;
        this.f37571q = i;
        this.f37572r = z4;
        this.f37573s = z5;
        this.f37574t = z6;
    }

    public C7591j(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 2, this.f37566a);
        C7411c.m1488c(parcel, 3, this.f37567b);
        C7411c.m1473r(parcel, 4, this.f37568d, false);
        C7411c.m1488c(parcel, 5, this.f37569k);
        C7411c.m1482i(parcel, 6, this.f37570p);
        C7411c.m1479l(parcel, 7, this.f37571q);
        C7411c.m1488c(parcel, 8, this.f37572r);
        C7411c.m1488c(parcel, 9, this.f37573s);
        C7411c.m1488c(parcel, 10, this.f37574t);
        C7411c.m1489b(parcel, m1490a);
    }
}
