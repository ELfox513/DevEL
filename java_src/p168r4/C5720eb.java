package p168r4;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
/* renamed from: r4.eb */
/* loaded from: classes2.dex */
public final class C5720eb {
    /* renamed from: c */
    public static String m11831c(String str, Throwable th) {
        String replace;
        if (th == null) {
            replace = null;
        } else {
            Throwable th2 = th;
            while (true) {
                if (th2 != null) {
                    if (th2 instanceof UnknownHostException) {
                        replace = "UnknownHostException (no network)";
                        break;
                    }
                    th2 = th2.getCause();
                } else {
                    replace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                    break;
                }
            }
        }
        if (!TextUtils.isEmpty(replace)) {
            String valueOf = String.valueOf(str);
            String replace2 = replace.replace("\n", "\n  ");
            StringBuilder sb = new StringBuilder(valueOf.length() + 4 + String.valueOf(replace2).length());
            sb.append(valueOf);
            sb.append("\n  ");
            sb.append(replace2);
            sb.append('\n');
            return sb.toString();
        }
        return str;
    }

    /* renamed from: a */
    public static void m11833a(String str, String str2, Throwable th) {
        Log.w(str, m11831c(str2, th));
    }

    /* renamed from: b */
    public static void m11832b(String str, String str2, Throwable th) {
        Log.e(str, m11831c(str2, th));
    }
}
