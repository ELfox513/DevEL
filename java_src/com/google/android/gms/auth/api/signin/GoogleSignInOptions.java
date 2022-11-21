package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p158q3.C5417f;
import p158q3.C5418g;
import p167r3.C5533a;
import p167r3.C5535b;
import p194u3.C6883a;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractC7408a implements C6883a.InterfaceC6887d, ReflectedParcelable {
    @RecentlyNonNull

    /* renamed from: B */
    public static final Scope f7666B;
    @RecentlyNonNull

    /* renamed from: C */
    public static final Scope f7667C;
    @RecentlyNonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: D */
    public static Comparator<Scope> f7668D;
    @RecentlyNonNull

    /* renamed from: w */
    public static final GoogleSignInOptions f7669w;
    @RecentlyNonNull

    /* renamed from: x */
    public static final GoogleSignInOptions f7670x;

    /* renamed from: a */
    public final int f7673a;

    /* renamed from: b */
    public final ArrayList<Scope> f7674b;

    /* renamed from: d */
    public Account f7675d;

    /* renamed from: k */
    public boolean f7676k;

    /* renamed from: p */
    public final boolean f7677p;

    /* renamed from: q */
    public final boolean f7678q;

    /* renamed from: r */
    public String f7679r;

    /* renamed from: s */
    public String f7680s;

    /* renamed from: t */
    public ArrayList<C5533a> f7681t;

    /* renamed from: u */
    public String f7682u;

    /* renamed from: v */
    public Map<Integer, C5533a> f7683v;
    @RecentlyNonNull

    /* renamed from: y */
    public static final Scope f7671y = new Scope("profile");
    @RecentlyNonNull

    /* renamed from: z */
    public static final Scope f7672z = new Scope("email");
    @RecentlyNonNull

    /* renamed from: A */
    public static final Scope f7665A = new Scope("openid");

    /* renamed from: com.google.android.gms.auth.api.signin.GoogleSignInOptions$a */
    /* loaded from: classes.dex */
    public static final class C1407a {

        /* renamed from: a */
        public Set<Scope> f7684a;

        /* renamed from: b */
        public boolean f7685b;

        /* renamed from: c */
        public boolean f7686c;

        /* renamed from: d */
        public boolean f7687d;

        /* renamed from: e */
        public String f7688e;

        /* renamed from: f */
        public Account f7689f;

        /* renamed from: g */
        public String f7690g;

        /* renamed from: h */
        public Map<Integer, C5533a> f7691h;

        /* renamed from: i */
        public String f7692i;

        public C1407a() {
            this.f7684a = new HashSet();
            this.f7691h = new HashMap();
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C1407a m23058b() {
            this.f7684a.add(GoogleSignInOptions.f7672z);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C1407a m23057c() {
            this.f7684a.add(GoogleSignInOptions.f7665A);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C1407a m23056d(@RecentlyNonNull String str) {
            this.f7687d = true;
            m23052h(str);
            this.f7688e = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C1407a m23055e() {
            this.f7684a.add(GoogleSignInOptions.f7671y);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C1407a m23053g(@RecentlyNonNull String str) {
            this.f7692i = str;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public GoogleSignInOptions m23059a() {
            if (this.f7684a.contains(GoogleSignInOptions.f7667C)) {
                Set<Scope> set = this.f7684a;
                Scope scope = GoogleSignInOptions.f7666B;
                if (set.contains(scope)) {
                    this.f7684a.remove(scope);
                }
            }
            if (this.f7687d && (this.f7689f == null || !this.f7684a.isEmpty())) {
                m23057c();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.f7684a), this.f7689f, this.f7687d, this.f7685b, this.f7686c, this.f7688e, this.f7690g, this.f7691h, this.f7692i, null);
        }

        @RecentlyNonNull
        /* renamed from: f */
        public C1407a m23054f(@RecentlyNonNull Scope scope, @RecentlyNonNull Scope... scopeArr) {
            this.f7684a.add(scope);
            this.f7684a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public C1407a(@RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
            this.f7684a = new HashSet();
            this.f7691h = new HashMap();
            C7297q.m1883j(googleSignInOptions);
            this.f7684a = new HashSet(googleSignInOptions.f7674b);
            this.f7685b = googleSignInOptions.f7677p;
            this.f7686c = googleSignInOptions.f7678q;
            this.f7687d = googleSignInOptions.f7676k;
            this.f7688e = googleSignInOptions.f7679r;
            this.f7689f = googleSignInOptions.f7675d;
            this.f7690g = googleSignInOptions.f7680s;
            this.f7691h = GoogleSignInOptions.m23061q1(googleSignInOptions.f7681t);
            this.f7692i = googleSignInOptions.f7682u;
        }

        /* renamed from: h */
        public final String m23052h(String str) {
            C7297q.m1887f(str);
            String str2 = this.f7688e;
            boolean z = true;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            C7297q.m1891b(z, "two different server client ids provided");
            return str;
        }
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<C5533a> arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, m23061q1(arrayList2), str3);
    }

    public /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3, C5417f c5417f) {
        this(3, arrayList, account, z, z2, z3, str, str2, map, str3);
    }

    @RecentlyNonNull
    /* renamed from: X0 */
    public ArrayList<C5533a> m23080X0() {
        return this.f7681t;
    }

    @RecentlyNullable
    /* renamed from: Y0 */
    public String m23079Y0() {
        return this.f7682u;
    }

    @RecentlyNonNull
    /* renamed from: Z0 */
    public ArrayList<Scope> m23078Z0() {
        return new ArrayList<>(this.f7674b);
    }

    @RecentlyNullable
    /* renamed from: a1 */
    public String m23077a1() {
        return this.f7679r;
    }

    /* renamed from: b1 */
    public boolean m23076b1() {
        return this.f7678q;
    }

    /* renamed from: c1 */
    public boolean m23075c1() {
        return this.f7676k;
    }

    /* renamed from: d1 */
    public boolean m23074d1() {
        return this.f7677p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r1.equals(r4.m23060u0()) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList<r3.a> r1 = r3.f7681t     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 > 0) goto L90
            java.util.ArrayList<r3.a> r1 = r4.f7681t     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 <= 0) goto L18
            goto L90
        L18:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f7674b     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.m23078Z0()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.f7674b     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.m23078Z0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.f7675d     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.m23060u0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.m23060u0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.f7679r     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.m23077a1()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.f7679r     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.m23077a1()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.f7678q     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.m23076b1()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f7676k     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.m23075c1()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f7677p     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.m23074d1()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r1 = r3.f7682u     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.m23079Y0()     // Catch: java.lang.ClassCastException -> L90
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r4 == 0) goto L90
            r4 = 1
            return r4
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    @RecentlyNullable
    /* renamed from: u0 */
    public Account m23060u0() {
        return this.f7675d;
    }

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        f7666B = scope;
        f7667C = new Scope("https://www.googleapis.com/auth/games");
        C1407a c1407a = new C1407a();
        c1407a.m23057c();
        c1407a.m23055e();
        f7669w = c1407a.m23059a();
        C1407a c1407a2 = new C1407a();
        c1407a2.m23054f(scope, new Scope[0]);
        f7670x = c1407a2.m23059a();
        CREATOR = new C5418g();
        f7668D = new C5417f();
    }

    /* renamed from: q1 */
    public static Map<Integer, C5533a> m23061q1(List<C5533a> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (C5533a c5533a : list) {
            hashMap.put(Integer.valueOf(c5533a.m13105X0()), c5533a);
        }
        return hashMap;
    }

    @RecentlyNonNull
    /* renamed from: f1 */
    public final String m23072f1() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f7674b, f7668D);
            Iterator<Scope> it = this.f7674b.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().m23039X0());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.f7675d;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.f7676k);
            jSONObject.put("forceCodeForRefreshToken", this.f7678q);
            jSONObject.put("serverAuthRequested", this.f7677p);
            if (!TextUtils.isEmpty(this.f7679r)) {
                jSONObject.put("serverClientId", this.f7679r);
            }
            if (!TextUtils.isEmpty(this.f7680s)) {
                jSONObject.put("hostedDomain", this.f7680s);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.f7674b;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(arrayList2.get(i).m23039X0());
        }
        Collections.sort(arrayList);
        C5535b c5535b = new C5535b();
        c5535b.m13104a(arrayList);
        c5535b.m13104a(this.f7675d);
        c5535b.m13104a(this.f7679r);
        c5535b.m13102c(this.f7678q);
        c5535b.m13102c(this.f7676k);
        c5535b.m13102c(this.f7677p);
        c5535b.m13104a(this.f7682u);
        return c5535b.m13103b();
    }

    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, C5533a> map, String str3) {
        this.f7673a = i;
        this.f7674b = arrayList;
        this.f7675d = account;
        this.f7676k = z;
        this.f7677p = z2;
        this.f7678q = z3;
        this.f7679r = str;
        this.f7680s = str2;
        this.f7681t = new ArrayList<>(map.values());
        this.f7683v = map;
        this.f7682u = str3;
    }

    @RecentlyNullable
    /* renamed from: e1 */
    public static GoogleSignInOptions m23073e1(String str) {
        String str2;
        Account account;
        String str3;
        String str4 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        if (jSONObject.has("accountName")) {
            str2 = jSONObject.optString("accountName");
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            account = new Account(str2, "com.google");
        } else {
            account = null;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z = jSONObject.getBoolean("idTokenRequested");
        boolean z2 = jSONObject.getBoolean("serverAuthRequested");
        boolean z3 = jSONObject.getBoolean("forceCodeForRefreshToken");
        if (jSONObject.has("serverClientId")) {
            str3 = jSONObject.optString("serverClientId");
        } else {
            str3 = null;
        }
        if (jSONObject.has("hostedDomain")) {
            str4 = jSONObject.optString("hostedDomain");
        }
        return new GoogleSignInOptions(3, arrayList, account, z, z2, z3, str3, str4, new HashMap(), (String) null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f7673a);
        C7411c.m1469v(parcel, 2, m23078Z0(), false);
        C7411c.m1474q(parcel, 3, m23060u0(), i, false);
        C7411c.m1488c(parcel, 4, m23075c1());
        C7411c.m1488c(parcel, 5, m23074d1());
        C7411c.m1488c(parcel, 6, m23076b1());
        C7411c.m1473r(parcel, 7, m23077a1(), false);
        C7411c.m1473r(parcel, 8, this.f7680s, false);
        C7411c.m1469v(parcel, 9, m23080X0(), false);
        C7411c.m1473r(parcel, 10, m23079Y0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
