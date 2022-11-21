package p220x3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6738d;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.h1 */
/* loaded from: classes.dex */
public final class C7269h1 extends AbstractC7408a {
    public static final Parcelable.Creator<C7269h1> CREATOR = new C7272i1();

    /* renamed from: a */
    public Bundle f36733a;

    /* renamed from: b */
    public C6738d[] f36734b;

    /* renamed from: d */
    public int f36735d;

    /* renamed from: k */
    public C7258e f36736k;

    public C7269h1() {
    }

    public C7269h1(Bundle bundle, C6738d[] c6738dArr, int i, C7258e c7258e) {
        this.f36733a = bundle;
        this.f36734b = c6738dArr;
        this.f36735d = i;
        this.f36736k = c7258e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1485f(parcel, 1, this.f36733a, false);
        C7411c.m1470u(parcel, 2, this.f36734b, i, false);
        C7411c.m1479l(parcel, 3, this.f36735d);
        C7411c.m1474q(parcel, 4, this.f36736k, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
