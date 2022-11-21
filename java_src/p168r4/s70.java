package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.prineside.tdi2.tiles.CoreTile;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.s70 */
/* loaded from: classes2.dex */
public final class s70 extends AbstractC7408a {
    public static final Parcelable.Creator<s70> CREATOR = new t70();

    /* renamed from: a */
    public final int f31274a;

    /* renamed from: b */
    public final int f31275b;

    /* renamed from: d */
    public final String f31276d;

    /* renamed from: k */
    public final int f31277k;

    public s70(int i, int i2, String str, int i3) {
        this.f31274a = i;
        this.f31275b = i2;
        this.f31276d = str;
        this.f31277k = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f31275b);
        C7411c.m1473r(parcel, 2, this.f31276d, false);
        C7411c.m1479l(parcel, 3, this.f31277k);
        C7411c.m1479l(parcel, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, this.f31274a);
        C7411c.m1489b(parcel, m1490a);
    }
}
