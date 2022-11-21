package p124m5;

import android.content.Context;
import android.text.TextUtils;
import p026c4.C1058s;
import p220x3.C7289o;
import p220x3.C7297q;
import p220x3.C7306t;
/* renamed from: m5.i */
/* loaded from: classes2.dex */
public final class C4649i {

    /* renamed from: a */
    public final String f18696a;

    /* renamed from: b */
    public final String f18697b;

    /* renamed from: c */
    public final String f18698c;

    /* renamed from: d */
    public final String f18699d;

    /* renamed from: e */
    public final String f18700e;

    /* renamed from: f */
    public final String f18701f;

    /* renamed from: g */
    public final String f18702g;

    /* renamed from: b */
    public String m15877b() {
        return this.f18696a;
    }

    /* renamed from: c */
    public String m15876c() {
        return this.f18697b;
    }

    /* renamed from: d */
    public String m15875d() {
        return this.f18700e;
    }

    /* renamed from: e */
    public String m15874e() {
        return this.f18702g;
    }

    public int hashCode() {
        return C7289o.m1907b(this.f18697b, this.f18696a, this.f18698c, this.f18699d, this.f18700e, this.f18701f, this.f18702g);
    }

    /* renamed from: a */
    public static C4649i m15878a(Context context) {
        C7306t c7306t = new C7306t(context);
        String m1859a = c7306t.m1859a("google_app_id");
        if (TextUtils.isEmpty(m1859a)) {
            return null;
        }
        return new C4649i(m1859a, c7306t.m1859a("google_api_key"), c7306t.m1859a("firebase_database_url"), c7306t.m1859a("ga_trackingId"), c7306t.m1859a("gcm_defaultSenderId"), c7306t.m1859a("google_storage_bucket"), c7306t.m1859a("project_id"));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C4649i)) {
            return false;
        }
        C4649i c4649i = (C4649i) obj;
        if (!C7289o.m1908a(this.f18697b, c4649i.f18697b) || !C7289o.m1908a(this.f18696a, c4649i.f18696a) || !C7289o.m1908a(this.f18698c, c4649i.f18698c) || !C7289o.m1908a(this.f18699d, c4649i.f18699d) || !C7289o.m1908a(this.f18700e, c4649i.f18700e) || !C7289o.m1908a(this.f18701f, c4649i.f18701f) || !C7289o.m1908a(this.f18702g, c4649i.f18702g)) {
            return false;
        }
        return true;
    }

    public C4649i(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        C7297q.m1879n(!C1058s.m24726a(str), "ApplicationId must be set.");
        this.f18697b = str;
        this.f18696a = str2;
        this.f18698c = str3;
        this.f18699d = str4;
        this.f18700e = str5;
        this.f18701f = str6;
        this.f18702g = str7;
    }

    public String toString() {
        return C7289o.m1906c(this).m1905a("applicationId", this.f18697b).m1905a("apiKey", this.f18696a).m1905a("databaseUrl", this.f18698c).m1905a("gcmSenderId", this.f18700e).m1905a("storageBucket", this.f18701f).m1905a("projectId", this.f18702g).toString();
    }
}
