package p168r4;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import p042d4.C3325e;
/* renamed from: r4.ay */
/* loaded from: classes2.dex */
public final class C5595ay extends ContentProvider {
    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        String str;
        String str2;
        Bundle bundle = null;
        try {
            bundle = C3325e.m19140a(context).m19146c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            cm0.m12439d("Failed to load metadata: Package name not found.", e);
        } catch (NullPointerException e2) {
            cm0.m12439d("Failed to load metadata: Null pointer exception.", e2);
        }
        xa0 m5430a = xa0.m5430a();
        if (bundle == null) {
            cm0.m12440c("Metadata was null.");
        } else {
            try {
                String str3 = (String) bundle.get("com.google.android.gms.ads.APPLICATION_ID");
                try {
                    Boolean bool = (Boolean) bundle.get("com.google.android.gms.ads.AD_MANAGER_APP");
                    try {
                        Boolean bool2 = (Boolean) bundle.get("com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT");
                        try {
                            String str4 = (String) bundle.get("com.google.android.gms.ads.INTEGRATION_MANAGER");
                            if (str3 != null && !str3.matches("^/\\d+~.+$")) {
                                if (str3.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$")) {
                                    if (str3.length() != 0) {
                                        str2 = "Publisher provided Google AdMob App ID in manifest: ".concat(str3);
                                    } else {
                                        str2 = new String("Publisher provided Google AdMob App ID in manifest: ");
                                    }
                                    cm0.m12442a(str2);
                                    if (bool2 == null || !bool2.booleanValue()) {
                                        m5430a.m5429b(context, str3);
                                    }
                                } else {
                                    throw new IllegalStateException("\n\n******************************************************************************\n* Invalid application ID. Follow instructions here:                          *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to find your app ID.                                                       *\n******************************************************************************\n\n");
                                }
                            } else if (bool == null || !bool.booleanValue()) {
                                if (!TextUtils.isEmpty(str4)) {
                                    String valueOf = String.valueOf(str4);
                                    if (valueOf.length() != 0) {
                                        str = "The Google Mobile Ads SDK is integrated by ".concat(valueOf);
                                    } else {
                                        str = new String("The Google Mobile Ads SDK is integrated by ");
                                    }
                                    cm0.m12442a(str);
                                } else {
                                    throw new IllegalStateException("\n\n******************************************************************************\n* The Google Mobile Ads SDK was initialized incorrectly. AdMob publishers    *\n* should follow the instructions here:                                       *\n* https://googlemobileadssdk.page.link/admob-android-update-manifest         *\n* to add a valid App ID inside the AndroidManifest.                          *\n* Google Ad Manager publishers should follow instructions here:              *\n* https://googlemobileadssdk.page.link/ad-manager-android-update-manifest.   *\n******************************************************************************\n\n");
                                }
                            }
                        } catch (ClassCastException e3) {
                            throw new IllegalStateException("The com.google.android.gms.ads.INTEGRATION_MANAGER metadata must have a String value.", e3);
                        }
                    } catch (ClassCastException e4) {
                        throw new IllegalStateException("The com.google.android.gms.ads.DELAY_APP_MEASUREMENT_INIT metadata must have a boolean value.", e4);
                    }
                } catch (ClassCastException e5) {
                    throw new IllegalStateException("The com.google.android.gms.ads.AD_MANAGER_APP metadata must have a boolean value.", e5);
                }
            } catch (ClassCastException e6) {
                throw new IllegalStateException("The com.google.android.gms.ads.APPLICATION_ID metadata must have a String value.", e6);
            }
        }
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
