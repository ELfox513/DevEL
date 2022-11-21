package p168r4;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p220x3.C7297q;
/* renamed from: r4.ja2 */
/* loaded from: classes2.dex */
public final class ja2 implements dg2<Bundle> {

    /* renamed from: a */
    public final hp2 f25975a;

    /* renamed from: b */
    public final long f25976b;

    public ja2(hp2 hp2Var, long j) {
        C7297q.m1882k(hp2Var, "the targeting must not be null");
        this.f25975a = hp2Var;
        this.f25976b = j;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Bundle bundle2 = bundle;
        C6293tt c6293tt = this.f25975a.f24779d;
        bundle2.putInt("http_timeout_millis", c6293tt.f31992H);
        bundle2.putString("slotname", this.f25975a.f24781f);
        int i = this.f25975a.f24790o.f33649a;
        int i2 = i - 1;
        if (i != 0) {
            boolean z7 = true;
            if (i2 != 1) {
                if (i2 == 2) {
                    bundle2.putBoolean("is_rewarded_interstitial", true);
                }
            } else {
                bundle2.putBoolean("is_new_rewarded", true);
            }
            bundle2.putLong("start_signals_timestamp", this.f25976b);
            String format = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(c6293tt.f31995b));
            if (c6293tt.f31995b != -1) {
                z = true;
            } else {
                z = false;
            }
            up2.m6399b(bundle2, "cust_age", format, z);
            up2.m6395f(bundle2, "extras", c6293tt.f31996d);
            Integer valueOf = Integer.valueOf(c6293tt.f31997k);
            if (c6293tt.f31997k != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            up2.m6398c(bundle2, "cust_gender", valueOf, z2);
            up2.m6394g(bundle2, "kw", c6293tt.f31998p);
            Integer valueOf2 = Integer.valueOf(c6293tt.f32000r);
            if (c6293tt.f32000r != -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            up2.m6398c(bundle2, "tag_for_child_directed_treatment", valueOf2, z3);
            if (c6293tt.f31999q) {
                bundle2.putBoolean("test_request", true);
            }
            if (c6293tt.f31994a >= 2 && c6293tt.f32001s) {
                z4 = true;
            } else {
                z4 = false;
            }
            up2.m6398c(bundle2, "d_imp_hdr", 1, z4);
            String str = c6293tt.f32002t;
            if (c6293tt.f31994a >= 2 && !TextUtils.isEmpty(str)) {
                z5 = true;
            } else {
                z5 = false;
            }
            up2.m6399b(bundle2, "ppid", str, z5);
            Location location = c6293tt.f32004v;
            if (location != null) {
                Float valueOf3 = Float.valueOf(location.getAccuracy() * 1000.0f);
                Long valueOf4 = Long.valueOf(location.getTime() * 1000);
                Long valueOf5 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
                Long valueOf6 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
                Bundle bundle3 = new Bundle();
                bundle3.putFloat("radius", valueOf3.floatValue());
                bundle3.putLong("lat", valueOf5.longValue());
                bundle3.putLong("long", valueOf6.longValue());
                bundle3.putLong("time", valueOf4.longValue());
                bundle2.putBundle("uule", bundle3);
            }
            up2.m6396e(bundle2, "url", c6293tt.f32005w);
            up2.m6394g(bundle2, "neighboring_content_urls", c6293tt.f31991G);
            up2.m6395f(bundle2, "custom_targeting", c6293tt.f32007y);
            up2.m6394g(bundle2, "category_exclusions", c6293tt.f32008z);
            up2.m6396e(bundle2, "request_agent", c6293tt.f31985A);
            up2.m6396e(bundle2, "request_pkg", c6293tt.f31986B);
            Boolean valueOf7 = Boolean.valueOf(c6293tt.f31987C);
            if (c6293tt.f31994a >= 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            up2.m6397d(bundle2, "is_designed_for_families", valueOf7, z6);
            if (c6293tt.f31994a >= 8) {
                Integer valueOf8 = Integer.valueOf(c6293tt.f31989E);
                if (c6293tt.f31989E == -1) {
                    z7 = false;
                }
                up2.m6398c(bundle2, "tag_for_under_age_of_consent", valueOf8, z7);
                up2.m6396e(bundle2, "max_ad_content_rating", c6293tt.f31990F);
                return;
            }
            return;
        }
        throw null;
    }
}
