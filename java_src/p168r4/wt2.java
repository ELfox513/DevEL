package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.HashMap;
import java.util.Map;
import p077h3.C4011p;
import p235z2.C7601t;
/* renamed from: r4.wt2 */
/* loaded from: classes2.dex */
public final class wt2 {

    /* renamed from: a */
    public final HashMap<String, String> f33320a;

    /* renamed from: b */
    public final cu2 f33321b;

    /* renamed from: c */
    public final wt2 m5588c(String str, String str2) {
        this.f33320a.put(str, str2);
        return this;
    }

    /* renamed from: d */
    public final wt2 m5587d(String str) {
        this.f33321b.m12358a(str);
        return this;
    }

    /* renamed from: e */
    public final wt2 m5586e(String str, String str2) {
        this.f33321b.m12357b(str, str2);
        return this;
    }

    /* renamed from: i */
    public final wt2 m5582i(no2 no2Var) {
        this.f33320a.put("aai", no2Var.f28436w);
        return this;
    }

    /* renamed from: a */
    public static wt2 m5590a(String str) {
        wt2 wt2Var = new wt2();
        wt2Var.f33320a.put("action", str);
        return wt2Var;
    }

    /* renamed from: b */
    public static wt2 m5589b(String str) {
        wt2 wt2Var = new wt2();
        wt2Var.f33320a.put("request_id", str);
        return wt2Var;
    }

    /* renamed from: f */
    public final wt2 m5585f(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f33320a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f33320a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    /* renamed from: g */
    public final wt2 m5584g(bp2 bp2Var, rl0 rl0Var) {
        String str;
        ap2 ap2Var = bp2Var.f21154b;
        m5583h(ap2Var.f20574b);
        if (!ap2Var.f20573a.isEmpty()) {
            switch (ap2Var.f20573a.get(0).f28406b) {
                case 1:
                    this.f33320a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f33320a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f33320a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f33320a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f33320a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f33320a.put("ad_format", "app_open_ad");
                    if (rl0Var != null) {
                        HashMap<String, String> hashMap = this.f33320a;
                        if (true != rl0Var.m7466i()) {
                            str = "0";
                        } else {
                            str = Config.SITE_API_VERSION;
                        }
                        hashMap.put("as", str);
                        break;
                    }
                    break;
                default:
                    this.f33320a.put("ad_format", "unknown");
                    break;
            }
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            boolean m17554a = C4011p.m17554a(bp2Var);
            this.f33320a.put("scar", String.valueOf(m17554a));
            if (m17554a) {
                String m17553b = C4011p.m17553b(bp2Var);
                if (!TextUtils.isEmpty(m17553b)) {
                    this.f33320a.put("ragent", m17553b);
                }
                String m17552c = C4011p.m17552c(bp2Var);
                if (!TextUtils.isEmpty(m17552c)) {
                    this.f33320a.put("rtype", m17552c);
                }
            }
        }
        return this;
    }

    /* renamed from: h */
    public final wt2 m5583h(so2 so2Var) {
        if (!TextUtils.isEmpty(so2Var.f31426b)) {
            this.f33320a.put("gqi", so2Var.f31426b);
        }
        return this;
    }

    /* renamed from: j */
    public final Map<String, String> m5581j() {
        HashMap hashMap = new HashMap(this.f33320a);
        for (bu2 bu2Var : this.f33321b.m12356c()) {
            hashMap.put(bu2Var.f21224a, bu2Var.f21225b);
        }
        return hashMap;
    }

    public wt2() {
        HashMap<String, String> hashMap = new HashMap<>();
        this.f33320a = hashMap;
        this.f33321b = new cu2(C7601t.m932k());
        hashMap.put("new_csi", Config.SITE_API_VERSION);
    }
}
