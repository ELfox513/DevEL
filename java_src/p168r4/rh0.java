package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONArray;
import p220x3.C7289o;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.rh0 */
/* loaded from: classes2.dex */
public final class rh0 extends AbstractC7408a {
    public static final Parcelable.Creator<rh0> CREATOR = new sh0();

    /* renamed from: a */
    public final String f30573a;

    /* renamed from: b */
    public final int f30574b;

    public rh0(String str, int i) {
        this.f30573a = str;
        this.f30574b = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof rh0)) {
            rh0 rh0Var = (rh0) obj;
            if (C7289o.m1908a(this.f30573a, rh0Var.f30573a) && C7289o.m1908a(Integer.valueOf(this.f30574b), Integer.valueOf(rh0Var.f30574b))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return C7289o.m1907b(this.f30573a, Integer.valueOf(this.f30574b));
    }

    /* renamed from: X0 */
    public static rh0 m7501X0(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            return new rh0(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f30573a, false);
        C7411c.m1479l(parcel, 3, this.f30574b);
        C7411c.m1489b(parcel, m1490a);
    }
}
