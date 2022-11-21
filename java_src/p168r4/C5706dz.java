package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.dz */
/* loaded from: classes2.dex */
public final class C5706dz extends AbstractC5928jz<Integer> {
    public C5706dz(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Integer mo10143c(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(m10141e(), m10140f().intValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Integer mo10142d(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(m10141e(), m10140f().intValue()));
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10144b(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(m10141e(), num.intValue());
    }

    @Override // p168r4.AbstractC5928jz
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Integer mo10145a(Bundle bundle) {
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
            return Integer.valueOf(bundle.getInt(str2));
        }
        return m10140f();
    }
}
