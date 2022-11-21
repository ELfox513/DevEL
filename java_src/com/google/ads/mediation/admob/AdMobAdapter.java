package com.google.ads.mediation.admob;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.AbstractAdViewAdapter;
@Keep
/* loaded from: classes.dex */
public final class AdMobAdapter extends AbstractAdViewAdapter {
    public static final String AD_JSON_PARAMETER = "adJson";
    public static final String AD_PARAMETER = "_ad";
    public static final String HOUSE_ADS_PARAMETER = "mad_hac";
    @RecentlyNonNull
    public static final String NEW_BUNDLE = "_newBundle";

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    @RecentlyNonNull
    public Bundle buildExtrasBundle(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle.getBoolean(NEW_BUNDLE)) {
            bundle = new Bundle(bundle);
        }
        bundle.putInt("gw", 1);
        bundle.putString(HOUSE_ADS_PARAMETER, bundle2.getString(HOUSE_ADS_PARAMETER));
        if (!TextUtils.isEmpty(bundle2.getString(AD_JSON_PARAMETER))) {
            bundle.putString(AD_PARAMETER, bundle2.getString(AD_JSON_PARAMETER));
        }
        bundle.putBoolean("_noRefresh", true);
        return bundle;
    }
}
