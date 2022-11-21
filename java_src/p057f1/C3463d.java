package p057f1;
/* renamed from: f1.d */
/* loaded from: classes.dex */
public class C3463d {

    /* renamed from: a */
    public String f15893a;

    /* renamed from: b */
    public Long f15894b;

    public C3463d(String str, boolean z) {
        this(str, z ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3463d)) {
            return false;
        }
        C3463d c3463d = (C3463d) obj;
        if (!this.f15893a.equals(c3463d.f15893a)) {
            return false;
        }
        Long l = this.f15894b;
        Long l2 = c3463d.f15894b;
        if (l != null) {
            return l.equals(l2);
        }
        return l2 == null;
    }

    public C3463d(String str, long j) {
        this.f15893a = str;
        this.f15894b = Long.valueOf(j);
    }

    public int hashCode() {
        int i;
        int hashCode = this.f15893a.hashCode() * 31;
        Long l = this.f15894b;
        if (l != null) {
            i = l.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}
