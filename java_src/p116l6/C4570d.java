package p116l6;

import java.util.Collections;
import java.util.Map;
/* renamed from: l6.d */
/* loaded from: classes2.dex */
public final class C4570d {

    /* renamed from: a */
    public final String f18612a;

    /* renamed from: b */
    public final Map<Class<?>, Object> f18613b;

    /* renamed from: b */
    public static C4570d m15988b(String str) {
        return new C4570d(str, Collections.emptyMap());
    }

    /* renamed from: a */
    public String m15989a() {
        return this.f18612a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4570d)) {
            return false;
        }
        C4570d c4570d = (C4570d) obj;
        return this.f18612a.equals(c4570d.f18612a) && this.f18613b.equals(c4570d.f18613b);
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f18612a + ", properties=" + this.f18613b.values() + "}";
    }

    public int hashCode() {
        return (this.f18612a.hashCode() * 31) + this.f18613b.hashCode();
    }

    public C4570d(String str, Map<Class<?>, Object> map) {
        this.f18612a = str;
        this.f18613b = map;
    }
}
