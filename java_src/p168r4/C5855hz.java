package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.hz */
/* loaded from: classes2.dex */
public final class C5855hz extends AbstractC5928jz<String> {
    public C5855hz(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ String mo10143c(JSONObject jSONObject) {
        return jSONObject.optString(m10141e(), m10140f());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ String mo10142d(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(m10141e(), m10140f());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10144b(SharedPreferences.Editor editor, String str) {
        editor.putString(m10141e(), str);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ String mo10145a(Bundle bundle) {
        String str;
        String str2;
        String m10141e = m10141e();
        if (m10141e.length() != 0) {
            str = "com.google.android.gms.ads.flag.".concat(m10141e);
        } else {
            str = new String("com.google.android.gms.ads.flag.");
        }
        if (bundle.containsKey(str)) {
            String m10141e2 = m10141e();
            if (m10141e2.length() != 0) {
                str2 = "com.google.android.gms.ads.flag.".concat(m10141e2);
            } else {
                str2 = new String("com.google.android.gms.ads.flag.");
            }
            return bundle.getString(str2);
        }
        return m10140f();
    }
}
