package p168r4;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: r4.y42 */
/* loaded from: classes2.dex */
public abstract class y42<AdT> implements q12<AdT> {
    /* renamed from: d */
    public static Bundle m4839d(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        return !TextUtils.isEmpty(no2Var.f28435v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    /* renamed from: c */
    public abstract h83<AdT> mo4453c(hp2 hp2Var, Bundle bundle);

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<AdT> mo4840b(bp2 bp2Var, no2 no2Var) {
        String optString = no2Var.f28435v.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        hp2 hp2Var = bp2Var.f21153a.f34161a;
        fp2 fp2Var = new fp2();
        fp2Var.m11414k(hp2Var);
        fp2Var.m11428L(optString);
        Bundle m4839d = m4839d(hp2Var.f24779d.f32006x);
        Bundle m4839d2 = m4839d(m4839d.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        m4839d2.putInt("gw", 1);
        String optString2 = no2Var.f28435v.optString(AdMobAdapter.HOUSE_ADS_PARAMETER, null);
        if (optString2 != null) {
            m4839d2.putString(AdMobAdapter.HOUSE_ADS_PARAMETER, optString2);
        }
        String optString3 = no2Var.f28435v.optString(AdMobAdapter.AD_JSON_PARAMETER, null);
        if (optString3 != null) {
            m4839d2.putString(AdMobAdapter.AD_PARAMETER, optString3);
        }
        m4839d2.putBoolean("_noRefresh", true);
        Iterator<String> keys = no2Var.f28381D.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = no2Var.f28381D.optString(next, null);
            if (next != null) {
                m4839d2.putString(next, optString4);
            }
        }
        m4839d.putBundle("com.google.ads.mediation.admob.AdMobAdapter", m4839d2);
        C6293tt c6293tt = hp2Var.f24779d;
        fp2Var.m11433G(new C6293tt(c6293tt.f31994a, c6293tt.f31995b, m4839d2, c6293tt.f31997k, c6293tt.f31998p, c6293tt.f31999q, c6293tt.f32000r, c6293tt.f32001s, c6293tt.f32002t, c6293tt.f32003u, c6293tt.f32004v, c6293tt.f32005w, m4839d, c6293tt.f32007y, c6293tt.f32008z, c6293tt.f31985A, c6293tt.f31986B, c6293tt.f31987C, c6293tt.f31988D, c6293tt.f31989E, c6293tt.f31990F, c6293tt.f31991G, c6293tt.f31992H, c6293tt.f31993I));
        hp2 m11413l = fp2Var.m11413l();
        Bundle bundle = new Bundle();
        so2 so2Var = bp2Var.f21154b.f20574b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(so2Var.f31425a));
        bundle2.putInt("refresh_interval", so2Var.f31427c);
        bundle2.putString("gws_query_id", so2Var.f31426b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = bp2Var.f21153a.f34161a.f24781f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", no2Var.f28436w);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(no2Var.f28408c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(no2Var.f28410d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(no2Var.f28429p));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(no2Var.f28427n));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(no2Var.f28418h));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(no2Var.f28420i));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(no2Var.f28422j));
        bundle3.putString("transaction_id", no2Var.f28424k);
        bundle3.putString("valid_from_timestamp", no2Var.f28425l);
        bundle3.putBoolean("is_closable_area_disabled", no2Var.f28389L);
        if (no2Var.f28426m != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", no2Var.f28426m.f30574b);
            bundle4.putString("rb_type", no2Var.f28426m.f30573a);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo4453c(m11413l, bundle);
    }
}
