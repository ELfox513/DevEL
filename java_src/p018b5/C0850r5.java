package p018b5;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: b5.r5 */
/* loaded from: classes2.dex */
public final class C0850r5 {

    /* renamed from: f */
    public static HashMap<String, String> f2244f;

    /* renamed from: k */
    public static Object f2249k;

    /* renamed from: l */
    public static boolean f2250l;

    /* renamed from: a */
    public static final Uri f2239a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f2240b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f2241c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f2242d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    public static final AtomicBoolean f2243e = new AtomicBoolean();

    /* renamed from: g */
    public static final HashMap<String, Boolean> f2245g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Integer> f2246h = new HashMap<>();

    /* renamed from: i */
    public static final HashMap<String, Long> f2247i = new HashMap<>();

    /* renamed from: j */
    public static final HashMap<String, Float> f2248j = new HashMap<>();

    /* renamed from: m */
    public static final String[] f2251m = new String[0];

    /* renamed from: a */
    public static String m25434a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C0850r5.class) {
            String str3 = null;
            if (f2244f == null) {
                f2243e.set(false);
                f2244f = new HashMap<>();
                f2249k = new Object();
                f2250l = false;
                contentResolver.registerContentObserver(f2239a, true, new C0833q5(null));
            } else if (f2243e.getAndSet(false)) {
                f2244f.clear();
                f2245g.clear();
                f2246h.clear();
                f2247i.clear();
                f2248j.clear();
                f2249k = new Object();
                f2250l = false;
            }
            Object obj = f2249k;
            if (f2244f.containsKey(str)) {
                String str4 = f2244f.get(str);
                if (str4 != null) {
                    str3 = str4;
                }
                return str3;
            }
            int length = f2251m.length;
            Cursor query = contentResolver.query(f2239a, null, null, new String[]{str}, null);
            if (query == null) {
                return null;
            }
            try {
                if (!query.moveToFirst()) {
                    m25432c(obj, str, null);
                    return null;
                }
                String string = query.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                m25432c(obj, str, string);
                if (string != null) {
                    str3 = string;
                }
                return str3;
            } finally {
                query.close();
            }
        }
    }

    /* renamed from: c */
    public static void m25432c(Object obj, String str, String str2) {
        synchronized (C0850r5.class) {
            if (obj == f2249k) {
                f2244f.put(str, str2);
            }
        }
    }
}
