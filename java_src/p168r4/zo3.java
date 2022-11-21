package p168r4;

import java.util.Map;
/* renamed from: r4.zo3 */
/* loaded from: classes2.dex */
public final class zo3 implements Map.Entry, Comparable<zo3> {

    /* renamed from: a */
    public final Comparable f34698a;

    /* renamed from: b */
    public Object f34699b;

    /* renamed from: d */
    public final /* synthetic */ dp3 f34700d;

    public zo3(dp3 dp3Var, Comparable comparable, Object obj) {
        this.f34700d = dp3Var;
        this.f34698a = comparable;
        this.f34699b = obj;
    }

    /* renamed from: d */
    public static final boolean m4155d(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: c */
    public final Comparable m4156c() {
        return this.f34698a;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return m4155d(this.f34698a, entry.getKey()) && m4155d(this.f34699b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f34698a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f34699b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f34698a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f34699b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f34700d.m12000m();
        Object obj2 = this.f34699b;
        this.f34699b = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f34698a);
        String valueOf2 = String.valueOf(this.f34699b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(zo3 zo3Var) {
        return this.f34698a.compareTo(zo3Var.f34698a);
    }
}
