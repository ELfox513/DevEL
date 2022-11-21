package p184t2;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C5592av;
import p168r4.C6225rz;
/* renamed from: t2.m */
/* loaded from: classes.dex */
public final class C6716m extends C6702a {

    /* renamed from: e */
    public final C6725u f35359e;

    public C6716m(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, C6702a c6702a, C6725u c6725u) {
        super(i, str, str2, c6702a);
        this.f35359e = c6725u;
    }

    @Override // p184t2.C6702a
    @RecentlyNonNull
    public String toString() {
        try {
            return mo3563e().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @RecentlyNullable
    /* renamed from: f */
    public C6725u m3562f() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue()) {
            return this.f35359e;
        }
        return null;
    }

    @Override // p184t2.C6702a
    @RecentlyNonNull
    /* renamed from: e */
    public final JSONObject mo3563e() {
        JSONObject mo3563e = super.mo3563e();
        C6725u m3562f = m3562f();
        if (m3562f == null) {
            mo3563e.put("Response Info", "null");
        } else {
            mo3563e.put("Response Info", m3562f.m3550c());
        }
        return mo3563e;
    }
}
