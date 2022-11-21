package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.au */
/* loaded from: classes2.dex */
public final class C5591au extends AbstractC7408a {
    public static final Parcelable.Creator<C5591au> CREATOR = new C5628bu();

    /* renamed from: a */
    public final int f20613a;

    /* renamed from: b */
    public final int f20614b;

    /* renamed from: d */
    public final String f20615d;

    /* renamed from: k */
    public final long f20616k;

    public C5591au(int i, int i2, String str, long j) {
        this.f20613a = i;
        this.f20614b = i2;
        this.f20615d = str;
        this.f20616k = j;
    }

    /* renamed from: X0 */
    public static C5591au m12939X0(JSONObject jSONObject) {
        return new C5591au(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f20613a);
        C7411c.m1479l(parcel, 2, this.f20614b);
        C7411c.m1473r(parcel, 3, this.f20615d, false);
        C7411c.m1476o(parcel, 4, this.f20616k);
        C7411c.m1489b(parcel, m1490a);
    }
}
