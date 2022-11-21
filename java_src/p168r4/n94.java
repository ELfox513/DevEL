package p168r4;

import com.badlogic.gdx.net.HttpResponseHeader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* renamed from: r4.n94 */
/* loaded from: classes2.dex */
public final class n94 {
    /* renamed from: c */
    public static String m9140c(long j) {
        return m9139d("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    /* renamed from: a */
    public static y74 m9142a(l84 l84Var) {
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = l84Var.f27130c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        if (str != null) {
            j = m9141b(str);
        } else {
            j = 0;
        }
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            int i2 = 0;
            j2 = 0;
            j3 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j2 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j3 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    i2 = 1;
                }
                i++;
            }
            i = i2;
            z = true;
        } else {
            z = false;
            j2 = 0;
            j3 = 0;
        }
        String str3 = map.get(HttpResponseHeader.Expires);
        if (str3 != null) {
            j4 = m9141b(str3);
        } else {
            j4 = 0;
        }
        String str4 = map.get(HttpResponseHeader.LastModified);
        if (str4 != null) {
            j5 = m9141b(str4);
        } else {
            j5 = 0;
        }
        String str5 = map.get(HttpResponseHeader.ETag);
        if (z) {
            j7 = currentTimeMillis + (j2 * 1000);
            if (i != 0) {
                j8 = j7;
            } else {
                Long.signum(j3);
                j8 = (j3 * 1000) + j7;
            }
            j6 = j8;
        } else {
            j6 = 0;
            if (j > 0 && j4 >= j) {
                j7 = currentTimeMillis + (j4 - j);
                j6 = j7;
            } else {
                j7 = 0;
            }
        }
        y74 y74Var = new y74();
        y74Var.f33997a = l84Var.f27129b;
        y74Var.f33998b = str5;
        y74Var.f34002f = j7;
        y74Var.f34001e = j6;
        y74Var.f33999c = j;
        y74Var.f34000d = j5;
        y74Var.f34003g = map;
        y74Var.f34004h = l84Var.f27131d;
        return y74Var;
    }

    /* renamed from: b */
    public static long m9141b(String str) {
        try {
            return m9139d("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if (!"0".equals(str) && !"-1".equals(str)) {
                c94.m12504d(e, "Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            c94.m12507a("Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    /* renamed from: d */
    public static SimpleDateFormat m9139d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
