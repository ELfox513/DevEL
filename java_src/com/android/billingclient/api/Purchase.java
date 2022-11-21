package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class Purchase {

    /* renamed from: a */
    public final String f2985a;

    /* renamed from: b */
    public final String f2986b;

    /* renamed from: c */
    public final JSONObject f2987c;

    /* renamed from: a */
    public String m24623a() {
        return this.f2987c.optString("orderId");
    }

    /* renamed from: b */
    public String m24622b() {
        return this.f2985a;
    }

    /* renamed from: c */
    public int m24621c() {
        return this.f2987c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: d */
    public long m24620d() {
        return this.f2987c.optLong("purchaseTime");
    }

    /* renamed from: e */
    public String m24619e() {
        JSONObject jSONObject = this.f2987c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f2985a, purchase.m24622b()) && TextUtils.equals(this.f2986b, purchase.m24618f());
    }

    /* renamed from: f */
    public String m24618f() {
        return this.f2986b;
    }

    /* renamed from: g */
    public String m24617g() {
        return this.f2987c.optString("productId");
    }

    /* renamed from: h */
    public boolean m24616h() {
        return this.f2987c.optBoolean("acknowledged", true);
    }

    public int hashCode() {
        return this.f2985a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f2985a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }

    /* renamed from: com.android.billingclient.api.Purchase$a */
    /* loaded from: classes.dex */
    public static class C1081a {

        /* renamed from: a */
        public final List<Purchase> f2988a;

        /* renamed from: b */
        public final C1087c f2989b;

        /* renamed from: a */
        public C1087c m24615a() {
            return this.f2989b;
        }

        /* renamed from: b */
        public List<Purchase> m24614b() {
            return this.f2988a;
        }

        /* renamed from: c */
        public int m24613c() {
            return m24615a().m24549a();
        }

        public C1081a(C1087c c1087c, List<Purchase> list) {
            this.f2988a = list;
            this.f2989b = c1087c;
        }
    }

    public Purchase(String str, String str2) {
        this.f2985a = str;
        this.f2986b = str2;
        this.f2987c = new JSONObject(str);
    }
}
