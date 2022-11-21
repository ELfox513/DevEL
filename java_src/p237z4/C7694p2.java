package p237z4;

import java.util.Map;
/* renamed from: z4.p2 */
/* loaded from: classes2.dex */
public final class C7694p2 implements Comparable, Map.Entry {

    /* renamed from: a */
    public final Comparable f37840a;

    /* renamed from: b */
    public Object f37841b;

    /* renamed from: d */
    public final /* synthetic */ C7655i2 f37842d;

    public C7694p2(C7655i2 c7655i2, Map.Entry entry) {
        this(c7655i2, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: c */
    public static boolean m621c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
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
        return m621c(this.f37840a, entry.getKey()) && m621c(this.f37841b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f37840a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f37841b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f37840a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f37841b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f37840a);
        String valueOf2 = String.valueOf(this.f37841b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    public C7694p2(C7655i2 c7655i2, Comparable comparable, Object obj) {
        this.f37842d = c7655i2;
        this.f37840a = comparable;
        this.f37841b = obj;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((C7694p2) obj).getKey());
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f37842d.m681p();
        Object obj2 = this.f37841b;
        this.f37841b = obj;
        return obj2;
    }
}
