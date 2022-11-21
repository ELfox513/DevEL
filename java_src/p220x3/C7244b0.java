package p220x3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;
import p026c4.C1049j;
import p042d4.C3325e;
import p145p.C5283g;
import p176s3.C6579b;
import p185t3.C6750j;
import p185t3.C6759o;
import p232z.C7520b;
/* renamed from: x3.b0 */
/* loaded from: classes.dex */
public final class C7244b0 {

    /* renamed from: a */
    public static final C5283g<String, String> f36639a = new C5283g<>();

    /* renamed from: b */
    public static Locale f36640b;

    /* renamed from: b */
    public static String m2036b(Context context, int i) {
        String m2037a;
        if (i == 6) {
            m2037a = m2029i(context, "common_google_play_services_resolution_required_title");
        } else {
            m2037a = m2037a(context, i);
        }
        if (m2037a == null) {
            return context.getResources().getString(C6579b.f35134h);
        }
        return m2037a;
    }

    /* renamed from: d */
    public static String m2034d(Context context, int i) {
        if (i != 6 && i != 19) {
            return m2035c(context, i);
        }
        return m2030h(context, "common_google_play_services_resolution_required_text", m2032f(context));
    }

    /* renamed from: i */
    public static String m2029i(Context context, String str) {
        String str2;
        String str3;
        C5283g<String, String> c5283g = f36639a;
        synchronized (c5283g) {
            Locale m1302c = C7520b.m1307a(context.getResources().getConfiguration()).m1302c(0);
            if (!m1302c.equals(f36640b)) {
                c5283g.clear();
                f36640b = m1302c;
            }
            String str4 = c5283g.get(str);
            if (str4 != null) {
                return str4;
            }
            Resources m3485d = C6750j.m3485d(context);
            if (m3485d == null) {
                return null;
            }
            int identifier = m3485d.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                if (str.length() != 0) {
                    str3 = "Missing resource: ".concat(str);
                } else {
                    str3 = new String("Missing resource: ");
                }
                Log.w("GoogleApiAvailability", str3);
                return null;
            }
            String string = m3485d.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                if (str.length() != 0) {
                    str2 = "Got empty resource: ".concat(str);
                } else {
                    str2 = new String("Got empty resource: ");
                }
                Log.w("GoogleApiAvailability", str2);
                return null;
            }
            c5283g.put(str, string);
            return string;
        }
    }

    /* renamed from: a */
    public static String m2037a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C6579b.f35132f);
            case 2:
                return resources.getString(C6579b.f35138l);
            case 3:
                return resources.getString(C6579b.f35129c);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m2029i(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m2029i(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return m2029i(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m2029i(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: c */
    public static String m2035c(Context context, int i) {
        Resources resources = context.getResources();
        String m2032f = m2032f(context);
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 7) {
                            if (i != 9) {
                                if (i != 20) {
                                    switch (i) {
                                        case 16:
                                            return m2030h(context, "common_google_play_services_api_unavailable_text", m2032f);
                                        case 17:
                                            return m2030h(context, "common_google_play_services_sign_in_failed_text", m2032f);
                                        case 18:
                                            return resources.getString(C6579b.f35139m, m2032f);
                                        default:
                                            return resources.getString(C6759o.f35439a, m2032f);
                                    }
                                }
                                return m2030h(context, "common_google_play_services_restricted_profile_text", m2032f);
                            }
                            return resources.getString(C6579b.f35135i, m2032f);
                        }
                        return m2030h(context, "common_google_play_services_network_error_text", m2032f);
                    }
                    return m2030h(context, "common_google_play_services_invalid_account_text", m2032f);
                }
                return resources.getString(C6579b.f35128b, m2032f);
            } else if (C1049j.m24752h(context)) {
                return resources.getString(C6579b.f35140n);
            } else {
                return resources.getString(C6579b.f35137k, m2032f);
            }
        }
        return resources.getString(C6579b.f35131e, m2032f);
    }

    /* renamed from: e */
    public static String m2033e(Context context, int i) {
        Resources resources = context.getResources();
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return resources.getString(17039370);
                }
                return resources.getString(C6579b.f35127a);
            }
            return resources.getString(C6579b.f35136j);
        }
        return resources.getString(C6579b.f35130d);
    }

    /* renamed from: f */
    public static String m2032f(Context context) {
        String packageName = context.getPackageName();
        try {
            return C3325e.m19140a(context).m19145d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            if (TextUtils.isEmpty(str)) {
                return packageName;
            }
            return str;
        }
    }

    /* renamed from: g */
    public static String m2031g(Context context) {
        return context.getResources().getString(C6579b.f35133g);
    }

    /* renamed from: h */
    public static String m2030h(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m2029i = m2029i(context, str);
        if (m2029i == null) {
            m2029i = resources.getString(C6759o.f35439a);
        }
        return String.format(resources.getConfiguration().locale, m2029i, str2);
    }
}
