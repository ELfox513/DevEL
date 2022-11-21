package p018b5;

import java.util.Map;
/* renamed from: b5.wa */
/* loaded from: classes2.dex */
public final class C0940wa implements Map.Entry, Comparable<C0940wa> {

    /* renamed from: a */
    public final Comparable f2377a;

    /* renamed from: b */
    public Object f2378b;

    /* renamed from: d */
    public final /* synthetic */ C0618db f2379d;

    public C0940wa(C0618db c0618db, Comparable comparable, Object obj) {
        this.f2379d = c0618db;
        this.f2377a = comparable;
        this.f2378b = obj;
    }

    /* renamed from: d */
    public static final boolean m25025d(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: c */
    public final Comparable m25026c() {
        return this.f2377a;
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
        return m25025d(this.f2377a, entry.getKey()) && m25025d(this.f2378b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f2377a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f2378b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f2377a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f2378b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f2379d.m26040n();
        Object obj2 = this.f2378b;
        this.f2378b = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f2377a);
        String valueOf2 = String.valueOf(this.f2378b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C0940wa c0940wa) {
        return this.f2377a.compareTo(c0940wa.f2377a);
    }
}
