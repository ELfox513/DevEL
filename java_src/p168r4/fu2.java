package p168r4;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.List;
import java.util.Map;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.fu2 */
/* loaded from: classes2.dex */
public final class fu2 {

    /* renamed from: a */
    public final Context f23671a;

    /* renamed from: b */
    public final String f23672b;

    /* renamed from: c */
    public final String f23673c;

    public fu2(Context context, im0 im0Var) {
        this.f23671a = context;
        this.f23672b = context.getPackageName();
        this.f23673c = im0Var.f25171a;
    }

    /* renamed from: a */
    public final void m11365a(Map<String, String> map) {
        String str;
        map.put(C6226s.f31189J, "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        C7601t.m939d();
        map.put("device", C0497k2.m26319e0());
        map.put("app", this.f23672b);
        C7601t.m939d();
        if (true != C0497k2.m26314h(this.f23671a)) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        map.put("is_lite_sdk", str);
        List<String> m7275d = C6225rz.m7275d();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31015f5)).booleanValue()) {
            m7275d.addAll(C7601t.m935h().m9051p().mo26194p().m10883h());
        }
        map.put("e", TextUtils.join(",", m7275d));
        map.put("sdkVersion", this.f23673c);
    }
}
