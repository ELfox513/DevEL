package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class SkuDetails {

    /* renamed from: a */
    public final String f2990a;

    /* renamed from: b */
    public final JSONObject f2991b;

    /* renamed from: a */
    public String m24612a() {
        return this.f2991b.optString("description");
    }

    /* renamed from: b */
    public String m24611b() {
        return this.f2991b.optString("freeTrialPeriod");
    }

    /* renamed from: c */
    public String m24610c() {
        return this.f2990a;
    }

    /* renamed from: d */
    public String m24609d() {
        return this.f2991b.optString("price");
    }

    /* renamed from: e */
    public long m24608e() {
        return this.f2991b.optLong("price_amount_micros");
    }

    /* renamed from: f */
    public String m24607f() {
        return this.f2991b.optString("price_currency_code");
    }

    /* renamed from: g */
    public String m24606g() {
        return this.f2991b.optString("productId");
    }

    /* renamed from: h */
    public String m24605h() {
        return this.f2991b.optString("title");
    }

    public int hashCode() {
        return this.f2990a.hashCode();
    }

    /* renamed from: i */
    public String m24604i() {
        return this.f2991b.optString("type");
    }

    /* renamed from: j */
    public final String m24603j() {
        return this.f2991b.optString("packageName");
    }

    /* renamed from: k */
    public final String m24602k() {
        return this.f2991b.optString("skuDetailsToken");
    }

    public String toString() {
        String valueOf = String.valueOf(this.f2990a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }

    /* renamed from: com.android.billingclient.api.SkuDetails$a */
    /* loaded from: classes.dex */
    public static class C1082a {

        /* renamed from: a */
        public final List<SkuDetails> f2992a;

        /* renamed from: b */
        public final int f2993b;

        /* renamed from: c */
        public final String f2994c;

        /* renamed from: a */
        public final List<SkuDetails> m24601a() {
            return this.f2992a;
        }

        /* renamed from: b */
        public final int m24600b() {
            return this.f2993b;
        }

        /* renamed from: c */
        public final String m24599c() {
            return this.f2994c;
        }

        public C1082a(int i, String str, List<SkuDetails> list) {
            this.f2993b = i;
            this.f2994c = str;
            this.f2992a = list;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetails)) {
            return false;
        }
        return TextUtils.equals(this.f2990a, ((SkuDetails) obj).f2990a);
    }

    public SkuDetails(String str) {
        this.f2990a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f2991b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (!TextUtils.isEmpty(jSONObject.optString("type"))) {
                return;
            }
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }
}
