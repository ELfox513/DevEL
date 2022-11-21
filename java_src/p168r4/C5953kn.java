package p168r4;

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: r4.kn */
/* loaded from: classes2.dex */
public final class C5953kn {

    /* renamed from: a */
    public static final Pattern f26484a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* renamed from: b */
    public static final Pattern f26485b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    /* renamed from: a */
    public static long m10002a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f26485b.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        String group = matcher.group(1);
        group.getClass();
        return Long.parseLong(group);
    }

    /* renamed from: b */
    public static long m10001b(String str, String str2) {
        long j = -1;
        if (!TextUtils.isEmpty(str)) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(str);
                sb.append("]");
                Log.e("HttpUtil", sb.toString());
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            Matcher matcher = f26484a.matcher(str2);
            if (matcher.matches()) {
                try {
                    String group = matcher.group(2);
                    group.getClass();
                    long parseLong = Long.parseLong(group);
                    String group2 = matcher.group(1);
                    group2.getClass();
                    long parseLong2 = (parseLong - Long.parseLong(group2)) + 1;
                    if (j < 0) {
                        return parseLong2;
                    }
                    if (j != parseLong2) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(str2).length());
                        sb2.append("Inconsistent headers [");
                        sb2.append(str);
                        sb2.append("] [");
                        sb2.append(str2);
                        sb2.append("]");
                        Log.w("HttpUtil", sb2.toString());
                        return Math.max(j, parseLong2);
                    }
                    return j;
                } catch (NumberFormatException unused2) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 27);
                    sb3.append("Unexpected Content-Range [");
                    sb3.append(str2);
                    sb3.append("]");
                    Log.e("HttpUtil", sb3.toString());
                    return j;
                }
            }
            return j;
        }
        return j;
    }
}
