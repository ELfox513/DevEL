package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.internal.a */
/* loaded from: classes2.dex */
public class C1433a {

    /* renamed from: f */
    public static final Date f7880f = new Date(0);

    /* renamed from: a */
    public JSONObject f7881a;

    /* renamed from: b */
    public JSONObject f7882b;

    /* renamed from: c */
    public Date f7883c;

    /* renamed from: d */
    public JSONArray f7884d;

    /* renamed from: e */
    public JSONObject f7885e;

    /* renamed from: com.google.firebase.remoteconfig.internal.a$b */
    /* loaded from: classes2.dex */
    public static class C1435b {

        /* renamed from: a */
        public JSONObject f7886a;

        /* renamed from: b */
        public Date f7887b;

        /* renamed from: c */
        public JSONArray f7888c;

        /* renamed from: d */
        public JSONObject f7889d;

        /* renamed from: a */
        public C1433a m22897a() {
            return new C1433a(this.f7886a, this.f7887b, this.f7888c, this.f7889d);
        }

        /* renamed from: b */
        public C1435b m22896b(JSONObject jSONObject) {
            try {
                this.f7886a = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        /* renamed from: c */
        public C1435b m22895c(JSONArray jSONArray) {
            try {
                this.f7888c = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        /* renamed from: d */
        public C1435b m22894d(Date date) {
            this.f7887b = date;
            return this;
        }

        /* renamed from: e */
        public C1435b m22893e(JSONObject jSONObject) {
            try {
                this.f7889d = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public C1435b() {
            this.f7886a = new JSONObject();
            this.f7887b = C1433a.f7880f;
            this.f7888c = new JSONArray();
            this.f7889d = new JSONObject();
        }
    }

    /* renamed from: g */
    public static C1435b m22898g() {
        return new C1435b();
    }

    /* renamed from: c */
    public JSONArray m22902c() {
        return this.f7884d;
    }

    /* renamed from: d */
    public JSONObject m22901d() {
        return this.f7882b;
    }

    /* renamed from: e */
    public Date m22900e() {
        return this.f7883c;
    }

    /* renamed from: f */
    public JSONObject m22899f() {
        return this.f7885e;
    }

    public int hashCode() {
        return this.f7881a.hashCode();
    }

    public String toString() {
        return this.f7881a.toString();
    }

    public C1433a(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f7882b = jSONObject;
        this.f7883c = date;
        this.f7884d = jSONArray;
        this.f7885e = jSONObject2;
        this.f7881a = jSONObject3;
    }

    /* renamed from: b */
    public static C1433a m22903b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        return new C1433a(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), optJSONObject);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1433a)) {
            return false;
        }
        return this.f7881a.toString().equals(((C1433a) obj).toString());
    }
}
