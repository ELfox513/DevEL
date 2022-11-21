package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.cz */
/* loaded from: classes2.dex */
public final class C5669cz extends AbstractC5928jz<Boolean> {
    public C5669cz(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Boolean mo10143c(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(m10141e(), m10140f().booleanValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Boolean mo10142d(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(m10141e(), m10140f().booleanValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10144b(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(m10141e(), bool.booleanValue());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Boolean mo10145a(Bundle bundle) {
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
            return Boolean.valueOf(bundle.getBoolean(str2));
        }
        return m10140f();
    }
}
