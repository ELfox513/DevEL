package p168r4;

import android.text.TextUtils;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.util.HashMap;
import org.json.JSONObject;
import p016b3.C0543w1;
/* renamed from: r4.hz1 */
/* loaded from: classes2.dex */
public final class hz1 implements ps2<gz1, cz1> {

    /* renamed from: a */
    public final String f24908a;

    public hz1(String str) {
        this.f24908a = str;
    }

    @Override // p168r4.ps2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ cz1 mo4065a(gz1 gz1Var) {
        JSONObject jSONObject;
        rg0 rg0Var;
        rg0 rg0Var2;
        rg0 rg0Var3;
        rg0 rg0Var4;
        rg0 rg0Var5;
        rg0 rg0Var6;
        rg0 rg0Var7;
        JSONObject jSONObject2;
        gz1 gz1Var2 = gz1Var;
        jSONObject = gz1Var2.f24374a;
        int optInt = jSONObject.optInt("http_timeout_millis", 60000);
        rg0Var = gz1Var2.f24375b;
        if (rg0Var.m7512a() == -2) {
            HashMap hashMap = new HashMap();
            rg0Var2 = gz1Var2.f24375b;
            if (rg0Var2.m7506g() && !TextUtils.isEmpty(this.f24908a)) {
                hashMap.put(HttpRequestHeader.Cookie, this.f24908a);
            }
            rg0Var3 = gz1Var2.f24375b;
            String str = "";
            if (rg0Var3.m7507f()) {
                jSONObject2 = gz1Var2.f24374a;
                JSONObject optJSONObject = jSONObject2.optJSONObject("pii");
                if (optJSONObject != null) {
                    if (!TextUtils.isEmpty(optJSONObject.optString("doritos", ""))) {
                        hashMap.put("x-afma-drt-cookie", optJSONObject.optString("doritos", ""));
                    }
                    if (!TextUtils.isEmpty(optJSONObject.optString("doritos_v2", ""))) {
                        hashMap.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", ""));
                    }
                } else {
                    C0543w1.m26251k("DSID signal does not exist.");
                }
            }
            rg0Var4 = gz1Var2.f24375b;
            if (rg0Var4 != null) {
                rg0Var6 = gz1Var2.f24375b;
                if (!TextUtils.isEmpty(rg0Var6.m7509d())) {
                    rg0Var7 = gz1Var2.f24375b;
                    str = rg0Var7.m7509d();
                }
            }
            rg0Var5 = gz1Var2.f24375b;
            return new cz1(rg0Var5.m7508e(), optInt, hashMap, str);
        } else if (rg0Var.m7512a() == 1) {
            if (rg0Var.m7511b() != null) {
                cm0.m12440c(TextUtils.join(", ", rg0Var.m7511b()));
            }
            throw new sv1(2, "Error building request URL.");
        } else {
            throw new sv1(1);
        }
    }
}
