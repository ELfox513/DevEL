package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p041d3.C3318w;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.rd0 */
/* loaded from: classes2.dex */
public final class rd0 extends AbstractC7408a {
    public static final Parcelable.Creator<rd0> CREATOR = new sd0();

    /* renamed from: a */
    public final int f30535a;

    /* renamed from: b */
    public final int f30536b;

    /* renamed from: d */
    public final int f30537d;

    public rd0(int i, int i2, int i3) {
        this.f30535a = i;
        this.f30536b = i2;
        this.f30537d = i3;
    }

    /* renamed from: X0 */
    public static rd0 m7529X0(C3318w c3318w) {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof rd0)) {
            rd0 rd0Var = (rd0) obj;
            if (rd0Var.f30537d == this.f30537d && rd0Var.f30536b == this.f30536b && rd0Var.f30535a == this.f30535a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f30535a, this.f30536b, this.f30537d});
    }

    public final String toString() {
        int i = this.f30535a;
        int i2 = this.f30536b;
        int i3 = this.f30537d;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f30535a);
        C7411c.m1479l(parcel, 2, this.f30536b);
        C7411c.m1479l(parcel, 3, this.f30537d);
        C7411c.m1489b(parcel, m1490a);
    }
}
