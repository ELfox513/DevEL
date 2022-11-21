package p018b5;

import java.util.HashMap;
import java.util.Map;
/* renamed from: b5.b */
/* loaded from: classes2.dex */
public final class C0572b {

    /* renamed from: a */
    public String f1736a;

    /* renamed from: b */
    public final long f1737b;

    /* renamed from: c */
    public final Map<String, Object> f1738c;

    /* renamed from: a */
    public final long m26160a() {
        return this.f1737b;
    }

    /* renamed from: b */
    public final C0572b clone() {
        return new C0572b(this.f1736a, this.f1737b, new HashMap(this.f1738c));
    }

    /* renamed from: d */
    public final String m26157d() {
        return this.f1736a;
    }

    /* renamed from: e */
    public final Map<String, Object> m26156e() {
        return this.f1738c;
    }

    /* renamed from: f */
    public final void m26155f(String str) {
        this.f1736a = str;
    }

    public final String toString() {
        String str = this.f1736a;
        long j = this.f1737b;
        String valueOf = String.valueOf(this.f1738c);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 55 + valueOf.length());
        sb.append("Event{name='");
        sb.append(str);
        sb.append("', timestamp=");
        sb.append(j);
        sb.append(", params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: c */
    public final Object m26158c(String str) {
        if (this.f1738c.containsKey(str)) {
            return this.f1738c.get(str);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0572b)) {
            return false;
        }
        C0572b c0572b = (C0572b) obj;
        if (this.f1737b != c0572b.f1737b || !this.f1736a.equals(c0572b.f1736a)) {
            return false;
        }
        return this.f1738c.equals(c0572b.f1738c);
    }

    /* renamed from: g */
    public final void m26154g(String str, Object obj) {
        if (obj == null) {
            this.f1738c.remove(str);
        } else {
            this.f1738c.put(str, obj);
        }
    }

    public final int hashCode() {
        int hashCode = this.f1736a.hashCode();
        long j = this.f1737b;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f1738c.hashCode();
    }

    public C0572b(String str, long j, Map<String, Object> map) {
        this.f1736a = str;
        this.f1737b = j;
        HashMap hashMap = new HashMap();
        this.f1738c = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }
}
