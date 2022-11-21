package p168r4;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import p235z2.C7601t;
/* renamed from: r4.kk0 */
/* loaded from: classes2.dex */
public final class kk0 {
    /* renamed from: a */
    public static String m10015a(String str, Context context, boolean z) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31018g0)).booleanValue() && !z) {
            return str;
        }
        if (C7601t.m942a().m10622g(context) && !TextUtils.isEmpty(str)) {
            String m10612q = C7601t.m942a().m10612q(context);
            if (m10612q == null) {
                return str;
            }
            String str2 = (String) C5592av.m12935c().m8098c(C6225rz.f30958Z);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30950Y)).booleanValue() && str.contains(str2)) {
                if (C7601t.m939d().m26332W(str)) {
                    C7601t.m942a().m10610s(context, m10612q);
                    return m10012d(str, context).replace(str2, m10612q);
                } else if (C7601t.m939d().m26331X(str)) {
                    C7601t.m942a().m10609t(context, m10612q);
                    return m10012d(str, context).replace(str2, m10612q);
                } else {
                    return str;
                }
            } else if (!str.contains("fbs_aeid")) {
                if (C7601t.m939d().m26332W(str)) {
                    C7601t.m942a().m10610s(context, m10612q);
                    return m10013c(m10012d(str, context), "fbs_aeid", m10612q).toString();
                } else if (C7601t.m939d().m26331X(str)) {
                    C7601t.m942a().m10609t(context, m10612q);
                    return m10013c(m10012d(str, context), "fbs_aeid", m10612q).toString();
                } else {
                    return str;
                }
            } else {
                return str;
            }
        }
        return str;
    }

    /* renamed from: c */
    public static Uri m10013c(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(str.substring(0, i) + str2 + "=" + str3 + "&" + str.substring(i));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    /* renamed from: b */
    public static String m10014b(Uri uri, Context context) {
        if (!C7601t.m942a().m10622g(context)) {
            return uri.toString();
        }
        String m10612q = C7601t.m942a().m10612q(context);
        if (m10612q == null) {
            return uri.toString();
        }
        String str = (String) C5592av.m12935c().m8098c(C6225rz.f30958Z);
        String uri2 = uri.toString();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30950Y)).booleanValue() && uri2.contains(str)) {
            C7601t.m942a().m10610s(context, m10612q);
            return m10012d(uri2, context).replace(str, m10612q);
        } else if (!TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            return uri2;
        } else {
            String uri3 = m10013c(m10012d(uri2, context), "fbs_aeid", m10612q).toString();
            C7601t.m942a().m10610s(context, m10612q);
            return uri3;
        }
    }

    /* renamed from: d */
    public static String m10012d(String str, Context context) {
        String m10614o = C7601t.m942a().m10614o(context);
        String m10613p = C7601t.m942a().m10613p(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(m10614o)) {
            str = m10013c(str, "gmp_app_id", m10614o).toString();
        }
        if (!str.contains("fbs_aiid") && !TextUtils.isEmpty(m10613p)) {
            return m10013c(str, "fbs_aiid", m10613p).toString();
        }
        return str;
    }
}
