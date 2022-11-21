package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p077h3.C4011p;
@Deprecated
/* renamed from: r4.hs1 */
/* loaded from: classes2.dex */
public final class hs1 {

    /* renamed from: a */
    public final ConcurrentHashMap<String, String> f24813a;

    /* renamed from: b */
    public final rl0 f24814b;

    public hs1(qs1 qs1Var, rl0 rl0Var) {
        this.f24813a = new ConcurrentHashMap<>(qs1Var.f31496b);
        this.f24814b = rl0Var;
    }

    /* renamed from: c */
    public final Map<String, String> m10827c() {
        return this.f24813a;
    }

    /* renamed from: a */
    public final void m10829a(bp2 bp2Var) {
        String str;
        if (bp2Var.f21154b.f20573a.size() > 0) {
            switch (bp2Var.f21154b.f20573a.get(0).f28406b) {
                case 1:
                    this.f24813a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f24813a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f24813a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f24813a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f24813a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f24813a.put("ad_format", "app_open_ad");
                    ConcurrentHashMap<String, String> concurrentHashMap = this.f24813a;
                    if (true != this.f24814b.m7466i()) {
                        str = "0";
                    } else {
                        str = Config.SITE_API_VERSION;
                    }
                    concurrentHashMap.put("as", str);
                    break;
                default:
                    this.f24813a.put("ad_format", "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(bp2Var.f21154b.f20574b.f31426b)) {
            this.f24813a.put("gqi", bp2Var.f21154b.f20574b.f31426b);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            boolean m17554a = C4011p.m17554a(bp2Var);
            this.f24813a.put("scar", String.valueOf(m17554a));
            if (m17554a) {
                String m17553b = C4011p.m17553b(bp2Var);
                if (!TextUtils.isEmpty(m17553b)) {
                    this.f24813a.put("ragent", m17553b);
                }
                String m17552c = C4011p.m17552c(bp2Var);
                if (!TextUtils.isEmpty(m17552c)) {
                    this.f24813a.put("rtype", m17552c);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m10828b(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f24813a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f24813a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
