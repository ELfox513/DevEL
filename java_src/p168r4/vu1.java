package p168r4;

import android.os.IBinder;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: r4.vu1 */
/* loaded from: classes2.dex */
public final class vu1 implements m71, ga1, c91 {

    /* renamed from: a */
    public final iv1 f32822a;

    /* renamed from: b */
    public final String f32823b;

    /* renamed from: d */
    public int f32824d = 0;

    /* renamed from: k */
    public uu1 f32825k = uu1.AD_REQUESTED;

    /* renamed from: p */
    public b71 f32826p;

    /* renamed from: q */
    public C5996lt f32827q;

    public vu1(iv1 iv1Var, hp2 hp2Var) {
        this.f32822a = iv1Var;
        this.f32823b = hp2Var.f24781f;
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        this.f32825k = uu1.AD_LOAD_FAILED;
        this.f32827q = c5996lt;
    }

    @Override // p168r4.c91
    /* renamed from: C0 */
    public final void mo6006C0(i31 i31Var) {
        this.f32826p = i31Var.m10732d();
        this.f32825k = uu1.AD_LOADED;
    }

    /* renamed from: a */
    public final boolean m6005a() {
        return this.f32825k != uu1.AD_REQUESTED;
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
        this.f32822a.m10498j(this.f32823b, this);
    }

    /* renamed from: c */
    public static JSONObject m6003c(b71 b71Var) {
        JSONObject m6002d;
        String str;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", b71Var.mo10772c());
        jSONObject.put("responseSecsSinceEpoch", b71Var.m12861f7());
        jSONObject.put("responseId", b71Var.mo10771d());
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30813G6)).booleanValue()) {
            String m12860g7 = b71Var.m12860g7();
            if (!TextUtils.isEmpty(m12860g7)) {
                String valueOf = String.valueOf(m12860g7);
                if (valueOf.length() != 0) {
                    str = "Bidding data: ".concat(valueOf);
                } else {
                    str = new String("Bidding data: ");
                }
                cm0.m12442a(str);
                jSONObject.put("biddingData", new JSONObject(m12860g7));
            }
        }
        JSONArray jSONArray = new JSONArray();
        List<C5664cu> mo10770g = b71Var.mo10770g();
        if (mo10770g != null) {
            for (C5664cu c5664cu : mo10770g) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("adapterClassName", c5664cu.f21675a);
                jSONObject2.put("latencyMillis", c5664cu.f21676b);
                C5996lt c5996lt = c5664cu.f21677d;
                if (c5996lt == null) {
                    m6002d = null;
                } else {
                    m6002d = m6002d(c5996lt);
                }
                jSONObject2.put("error", m6002d);
                jSONArray.put(jSONObject2);
            }
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONObject m6002d(C5996lt c5996lt) {
        JSONObject m6002d;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", c5996lt.f27363d);
        jSONObject.put("errorCode", c5996lt.f27361a);
        jSONObject.put("errorDescription", c5996lt.f27362b);
        C5996lt c5996lt2 = c5996lt.f27364k;
        if (c5996lt2 == null) {
            m6002d = null;
        } else {
            m6002d = m6002d(c5996lt2);
        }
        jSONObject.put("underlyingError", m6002d);
        return jSONObject;
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
        if (!bp2Var.f21154b.f20573a.isEmpty()) {
            this.f32824d = bp2Var.f21154b.f20573a.get(0).f28406b;
        }
    }

    /* renamed from: b */
    public final JSONObject m6004b() {
        IBinder iBinder;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("state", this.f32825k);
        jSONObject.put("format", no2.m9024a(this.f32824d));
        b71 b71Var = this.f32826p;
        JSONObject jSONObject2 = null;
        if (b71Var != null) {
            jSONObject2 = m6003c(b71Var);
        } else {
            C5996lt c5996lt = this.f32827q;
            if (c5996lt != null && (iBinder = c5996lt.f27365p) != null) {
                b71 b71Var2 = (b71) iBinder;
                jSONObject2 = m6003c(b71Var2);
                List<C5664cu> mo10770g = b71Var2.mo10770g();
                if (mo10770g != null && mo10770g.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(m6002d(this.f32827q));
                    jSONObject2.put("errors", jSONArray);
                }
            }
        }
        jSONObject.put("responseInfo", jSONObject2);
        return jSONObject;
    }
}
