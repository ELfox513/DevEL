package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1048i;
import p026c4.InterfaceC1045f;
import p158q3.C5415d;
import p158q3.C5416e;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractC7408a implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new C5416e();
    @RecentlyNonNull

    /* renamed from: y */
    public static InterfaceC1045f f7651y = C1048i.m24760d();

    /* renamed from: a */
    public final int f7652a;

    /* renamed from: b */
    public String f7653b;

    /* renamed from: d */
    public String f7654d;

    /* renamed from: k */
    public String f7655k;

    /* renamed from: p */
    public String f7656p;

    /* renamed from: q */
    public Uri f7657q;

    /* renamed from: r */
    public String f7658r;

    /* renamed from: s */
    public long f7659s;

    /* renamed from: t */
    public String f7660t;

    /* renamed from: u */
    public List<Scope> f7661u;

    /* renamed from: v */
    public String f7662v;

    /* renamed from: w */
    public String f7663w;

    /* renamed from: x */
    public Set<Scope> f7664x = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.f7652a = i;
        this.f7653b = str;
        this.f7654d = str2;
        this.f7655k = str3;
        this.f7656p = str4;
        this.f7657q = uri;
        this.f7658r = str5;
        this.f7659s = j;
        this.f7660t = str6;
        this.f7661u = list;
        this.f7662v = str7;
        this.f7663w = str8;
    }

    @RecentlyNullable
    /* renamed from: X0 */
    public String m23095X0() {
        return this.f7655k;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public String m23094Y0() {
        return this.f7663w;
    }

    @RecentlyNullable
    /* renamed from: Z0 */
    public String m23093Z0() {
        return this.f7662v;
    }

    @RecentlyNullable
    /* renamed from: a1 */
    public String m23092a1() {
        return this.f7653b;
    }

    @RecentlyNullable
    /* renamed from: b1 */
    public String m23091b1() {
        return this.f7654d;
    }

    @RecentlyNullable
    /* renamed from: c1 */
    public Uri m23090c1() {
        return this.f7657q;
    }

    @RecentlyNullable
    /* renamed from: e1 */
    public String m23088e1() {
        return this.f7658r;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof GoogleSignInAccount) {
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
            return googleSignInAccount.f7660t.equals(this.f7660t) && googleSignInAccount.m23089d1().equals(m23089d1());
        }
        return false;
    }

    /* renamed from: f1 */
    public boolean m23087f1() {
        return f7651y.mo24763a() / 1000 >= this.f7659s + (-300);
    }

    /* renamed from: i1 */
    public final String m23084i1() {
        return this.f7660t;
    }

    @RecentlyNullable
    /* renamed from: q */
    public String m23082q() {
        return this.f7656p;
    }

    @RecentlyNullable
    /* renamed from: u0 */
    public Account m23081u0() {
        String str = this.f7655k;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    @RecentlyNonNull
    /* renamed from: h1 */
    public static GoogleSignInAccount m23085h1(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, @RecentlyNonNull String str7, @RecentlyNonNull Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), C7297q.m1887f(str7), new ArrayList((Collection) C7297q.m1883j(set)), str5, str6);
    }

    /* renamed from: d1 */
    public Set<Scope> m23089d1() {
        HashSet hashSet = new HashSet(this.f7661u);
        hashSet.addAll(this.f7664x);
        return hashSet;
    }

    public int hashCode() {
        return ((this.f7660t.hashCode() + 527) * 31) + m23089d1().hashCode();
    }

    @RecentlyNonNull
    /* renamed from: j1 */
    public final String m23083j1() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (m23092a1() != null) {
                jSONObject.put("id", m23092a1());
            }
            if (m23091b1() != null) {
                jSONObject.put("tokenId", m23091b1());
            }
            if (m23095X0() != null) {
                jSONObject.put("email", m23095X0());
            }
            if (m23082q() != null) {
                jSONObject.put("displayName", m23082q());
            }
            if (m23093Z0() != null) {
                jSONObject.put("givenName", m23093Z0());
            }
            if (m23094Y0() != null) {
                jSONObject.put("familyName", m23094Y0());
            }
            Uri m23090c1 = m23090c1();
            if (m23090c1 != null) {
                jSONObject.put("photoUrl", m23090c1.toString());
            }
            if (m23088e1() != null) {
                jSONObject.put("serverAuthCode", m23088e1());
            }
            jSONObject.put("expirationTime", this.f7659s);
            jSONObject.put("obfuscatedIdentifier", this.f7660t);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.f7661u;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, C5415d.f20098a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.m23039X0());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @RecentlyNullable
    /* renamed from: g1 */
    public static GoogleSignInAccount m23086g1(String str) {
        Uri uri;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        if (!TextUtils.isEmpty(optString)) {
            uri = Uri.parse(optString);
        } else {
            uri = null;
        }
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString2 = jSONObject.optString("id");
        if (jSONObject.has("tokenId")) {
            str2 = jSONObject.optString("tokenId");
        } else {
            str2 = null;
        }
        if (jSONObject.has("email")) {
            str3 = jSONObject.optString("email");
        } else {
            str3 = null;
        }
        if (jSONObject.has("displayName")) {
            str4 = jSONObject.optString("displayName");
        } else {
            str4 = null;
        }
        if (jSONObject.has("givenName")) {
            str5 = jSONObject.optString("givenName");
        } else {
            str5 = null;
        }
        if (jSONObject.has("familyName")) {
            str6 = jSONObject.optString("familyName");
        } else {
            str6 = null;
        }
        GoogleSignInAccount m23085h1 = m23085h1(optString2, str2, str3, str4, str5, str6, uri, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        if (jSONObject.has("serverAuthCode")) {
            str7 = jSONObject.optString("serverAuthCode");
        }
        m23085h1.f7658r = str7;
        return m23085h1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f7652a);
        C7411c.m1473r(parcel, 2, m23092a1(), false);
        C7411c.m1473r(parcel, 3, m23091b1(), false);
        C7411c.m1473r(parcel, 4, m23095X0(), false);
        C7411c.m1473r(parcel, 5, m23082q(), false);
        C7411c.m1474q(parcel, 6, m23090c1(), i, false);
        C7411c.m1473r(parcel, 7, m23088e1(), false);
        C7411c.m1476o(parcel, 8, this.f7659s);
        C7411c.m1473r(parcel, 9, this.f7660t, false);
        C7411c.m1469v(parcel, 10, this.f7661u, false);
        C7411c.m1473r(parcel, 11, m23093Z0(), false);
        C7411c.m1473r(parcel, 12, m23094Y0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
