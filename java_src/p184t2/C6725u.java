package p184t2;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C5592av;
import p168r4.C5664cu;
import p168r4.C6225rz;
import p168r4.InterfaceC5853hx;
import p168r4.cm0;
/* renamed from: t2.u */
/* loaded from: classes.dex */
public final class C6725u {

    /* renamed from: a */
    public final InterfaceC5853hx f35373a;

    /* renamed from: b */
    public final List<C6713j> f35374b = new ArrayList();

    /* renamed from: d */
    public static C6725u m3549d(InterfaceC5853hx interfaceC5853hx) {
        if (interfaceC5853hx != null) {
            return new C6725u(interfaceC5853hx);
        }
        return null;
    }

    @RecentlyNonNull
    public String toString() {
        try {
            return m3550c().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m3552a() {
        try {
            InterfaceC5853hx interfaceC5853hx = this.f35373a;
            if (interfaceC5853hx != null) {
                return interfaceC5853hx.mo10772c();
            }
            return null;
        } catch (RemoteException e) {
            cm0.m12439d("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: b */
    public String m3551b() {
        try {
            InterfaceC5853hx interfaceC5853hx = this.f35373a;
            if (interfaceC5853hx != null) {
                return interfaceC5853hx.mo10771d();
            }
            return null;
        } catch (RemoteException e) {
            cm0.m12439d("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final JSONObject m3550c() {
        JSONObject jSONObject = new JSONObject();
        String m3551b = m3551b();
        if (m3551b == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", m3551b);
        }
        String m3552a = m3552a();
        if (m3552a == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", m3552a);
        }
        JSONArray jSONArray = new JSONArray();
        for (C6713j c6713j : this.f35374b) {
            jSONArray.put(c6713j.m3568b());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }

    public C6725u(InterfaceC5853hx interfaceC5853hx) {
        this.f35373a = interfaceC5853hx;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue() && interfaceC5853hx != null) {
            try {
                List<C5664cu> mo10770g = interfaceC5853hx.mo10770g();
                if (mo10770g != null) {
                    for (C5664cu c5664cu : mo10770g) {
                        C6713j m3569a = C6713j.m3569a(c5664cu);
                        if (m3569a != null) {
                            this.f35374b.add(m3569a);
                        }
                    }
                }
            } catch (RemoteException e) {
                cm0.m12439d("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }
}
