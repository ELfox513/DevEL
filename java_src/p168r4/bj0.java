package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import p016b3.C0460b1;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.bj0 */
/* loaded from: classes2.dex */
public final class bj0 extends AbstractC7408a {
    public static final Parcelable.Creator<bj0> CREATOR = new cj0();

    /* renamed from: a */
    public final String f21073a;

    /* renamed from: b */
    public final String f21074b;

    /* renamed from: d */
    public final boolean f21075d;

    /* renamed from: k */
    public final boolean f21076k;

    /* renamed from: p */
    public final List<String> f21077p;

    /* renamed from: q */
    public final boolean f21078q;

    /* renamed from: r */
    public final boolean f21079r;

    /* renamed from: s */
    public final List<String> f21080s;

    /* renamed from: X0 */
    public static bj0 m12770X0(JSONObject jSONObject) {
        return new bj0(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), C0460b1.m26429a(jSONObject.optJSONArray("allowed_headers"), null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), C0460b1.m26429a(jSONObject.optJSONArray("webview_permissions"), null));
    }

    public bj0(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.f21073a = str;
        this.f21074b = str2;
        this.f21075d = z;
        this.f21076k = z2;
        this.f21077p = list;
        this.f21078q = z3;
        this.f21079r = z4;
        this.f21080s = list2 == null ? new ArrayList<>() : list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f21073a, false);
        C7411c.m1473r(parcel, 3, this.f21074b, false);
        C7411c.m1488c(parcel, 4, this.f21075d);
        C7411c.m1488c(parcel, 5, this.f21076k);
        C7411c.m1471t(parcel, 6, this.f21077p, false);
        C7411c.m1488c(parcel, 7, this.f21078q);
        C7411c.m1488c(parcel, 8, this.f21079r);
        C7411c.m1471t(parcel, 9, this.f21080s, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
