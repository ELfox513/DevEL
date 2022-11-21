package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.e */
/* loaded from: classes.dex */
public class C7258e extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C7258e> CREATOR = new C7276j1();

    /* renamed from: a */
    public final C7303s f36700a;

    /* renamed from: b */
    public final boolean f36701b;

    /* renamed from: d */
    public final boolean f36702d;

    /* renamed from: k */
    public final int[] f36703k;

    /* renamed from: p */
    public final int f36704p;

    /* renamed from: q */
    public final int[] f36705q;

    public C7258e(@RecentlyNonNull C7303s c7303s, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.f36700a = c7303s;
        this.f36701b = z;
        this.f36702d = z2;
        this.f36703k = iArr;
        this.f36704p = i;
        this.f36705q = iArr2;
    }

    /* renamed from: X0 */
    public int m1958X0() {
        return this.f36704p;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public int[] m1957Y0() {
        return this.f36703k;
    }

    @RecentlyNullable
    /* renamed from: Z0 */
    public int[] m1956Z0() {
        return this.f36705q;
    }

    /* renamed from: a1 */
    public boolean m1955a1() {
        return this.f36701b;
    }

    /* renamed from: b1 */
    public boolean m1954b1() {
        return this.f36702d;
    }

    @RecentlyNonNull
    /* renamed from: c1 */
    public C7303s m1953c1() {
        return this.f36700a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 1, m1953c1(), i, false);
        C7411c.m1488c(parcel, 2, m1955a1());
        C7411c.m1488c(parcel, 3, m1954b1());
        C7411c.m1478m(parcel, 4, m1957Y0(), false);
        C7411c.m1479l(parcel, 5, m1958X0());
        C7411c.m1478m(parcel, 6, m1956Z0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
