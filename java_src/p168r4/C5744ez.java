package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.ez */
/* loaded from: classes2.dex */
public final class C5744ez extends AbstractC5928jz<Long> {
    public C5744ez(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Long mo10143c(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(m10141e(), m10140f().longValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Long mo10142d(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(m10141e(), m10140f().longValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10144b(SharedPreferences.Editor editor, Long l) {
        editor.putLong(m10141e(), l.longValue());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Long mo10145a(Bundle bundle) {
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
            return Long.valueOf(bundle.getLong(str2));
        }
        return m10140f();
    }
}
