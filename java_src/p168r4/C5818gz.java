package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.gz */
/* loaded from: classes2.dex */
public final class C5818gz extends AbstractC5928jz<Float> {
    public C5818gz(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Float mo10143c(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(m10141e(), m10140f().floatValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Float mo10142d(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(m10141e(), m10140f().floatValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10144b(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(m10141e(), f.floatValue());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Float mo10145a(Bundle bundle) {
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
            return Float.valueOf(bundle.getFloat(str2));
        }
        return m10140f();
    }
}
