package p168r4;

import android.content.Context;
import android.os.Build;
import com.prineside.tdi2.Config;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.uz */
/* loaded from: classes2.dex */
public final class C6336uz {

    /* renamed from: a */
    public final String f32499a = a10.f20330b.m6673e();

    /* renamed from: b */
    public final Map<String, String> f32500b;

    /* renamed from: c */
    public final Context f32501c;

    /* renamed from: d */
    public final String f32502d;

    /* renamed from: a */
    public final String m6291a() {
        return this.f32499a;
    }

    /* renamed from: b */
    public final Context m6290b() {
        return this.f32501c;
    }

    /* renamed from: c */
    public final String m6289c() {
        return this.f32502d;
    }

    /* renamed from: d */
    public final Map<String, String> m6288d() {
        return this.f32500b;
    }

    public C6336uz(Context context, String str) {
        String packageName;
        String str2;
        this.f32501c = context;
        this.f32502d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f32500b = linkedHashMap;
        linkedHashMap.put(C6226s.f31189J, "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        C7601t.m939d();
        linkedHashMap.put("device", C0497k2.m26319e0());
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        linkedHashMap.put("app", packageName);
        C7601t.m939d();
        if (true != C0497k2.m26314h(context)) {
            str2 = "0";
        } else {
            str2 = Config.SITE_API_VERSION;
        }
        linkedHashMap.put("is_lite_sdk", str2);
        Future<tg0> m5733b = C7601t.m928o().m5733b(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(m5733b.get().f31850k));
            linkedHashMap.put("network_fine", Integer.toString(m5733b.get().f31851l));
        } catch (Exception e) {
            C7601t.m935h().m9056k(e, "CsiConfiguration.CsiConfiguration");
        }
    }
}
