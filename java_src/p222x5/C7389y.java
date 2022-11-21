package p222x5;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p196u5.C6930f;
/* renamed from: x5.y */
/* loaded from: classes2.dex */
public class C7389y {

    /* renamed from: a */
    public final Map<String, String> f36979a = new HashMap();

    /* renamed from: b */
    public final int f36980b;

    /* renamed from: c */
    public final int f36981c;

    /* renamed from: a */
    public synchronized Map<String, String> m1599a() {
        return Collections.unmodifiableMap(new HashMap(this.f36979a));
    }

    /* renamed from: d */
    public synchronized void m1596d(Map<String, String> map) {
        String m1598b;
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String m1597c = m1597c(entry.getKey());
            if (this.f36979a.size() >= this.f36980b && !this.f36979a.containsKey(m1597c)) {
                i++;
            }
            String value = entry.getValue();
            Map<String, String> map2 = this.f36979a;
            if (value == null) {
                m1598b = "";
            } else {
                m1598b = m1598b(value);
            }
            map2.put(m1597c, m1598b);
        }
        if (i > 0) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3011k("Ignored " + i + " entries when adding custom keys. Maximum allowable: " + this.f36980b);
        }
    }

    /* renamed from: b */
    public String m1598b(String str) {
        if (str != null) {
            String trim = str.trim();
            int length = trim.length();
            int i = this.f36981c;
            if (length > i) {
                return trim.substring(0, i);
            }
            return trim;
        }
        return str;
    }

    /* renamed from: c */
    public final String m1597c(String str) {
        if (str != null) {
            return m1598b(str);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public C7389y(int i, int i2) {
        this.f36980b = i;
        this.f36981c = i2;
    }
}
