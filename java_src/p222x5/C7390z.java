package p222x5;

import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
import p196u5.C6930f;
/* renamed from: x5.z */
/* loaded from: classes2.dex */
public class C7390z {

    /* renamed from: b */
    public static final Charset f36982b = Charset.forName("UTF-8");

    /* renamed from: a */
    public final File f36983a;

    /* renamed from: g */
    public static String m1589g(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    /* renamed from: a */
    public File m1595a(String str) {
        File file = this.f36983a;
        return new File(file, str + "internal-keys.meta");
    }

    /* renamed from: b */
    public File m1594b(String str) {
        File file = this.f36983a;
        return new File(file, str + "keys.meta");
    }

    /* renamed from: c */
    public File m1593c(String str) {
        File file = this.f36983a;
        return new File(file, str + "user.meta");
    }

    /* renamed from: e */
    public Map<String, String> m1591e(String str) {
        return m1590f(str, false);
    }

    /* renamed from: d */
    public static Map<String, String> m1592d(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, m1589g(jSONObject, next));
        }
        return hashMap;
    }

    /* renamed from: f */
    public Map<String, String> m1590f(String str, boolean z) {
        File m1594b;
        FileInputStream fileInputStream;
        if (z) {
            m1594b = m1595a(str);
        } else {
            m1594b = m1594b(str);
        }
        if (!m1594b.exists()) {
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(m1594b);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            Map<String, String> m1592d = m1592d(C7341g.m1796A(fileInputStream));
            C7341g.m1791e(fileInputStream, "Failed to close user metadata file.");
            return m1592d;
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            C6930f.m3016f().m3017e("Error deserializing user metadata.", e);
            C7341g.m1791e(fileInputStream2, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            C7341g.m1791e(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public C7390z(File file) {
        this.f36983a = file;
    }
}
