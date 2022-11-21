package p235z2;

import org.json.JSONObject;
import p168r4.e73;
import p168r4.h83;
import p168r4.y73;
/* renamed from: z2.d */
/* loaded from: classes.dex */
public final /* synthetic */ class C7585d implements e73 {

    /* renamed from: a */
    public static final e73 f37545a = new C7585d();

    @Override // p168r4.e73
    /* renamed from: a */
    public final h83 mo1029a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            C7601t.m935h().m9051p().mo26200h0(jSONObject.getString("appSettingsJson"));
        }
        return y73.m4814a(null);
    }
}
