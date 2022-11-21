package p058f2;
/* renamed from: f2.b */
/* loaded from: classes.dex */
public final class C3503b {

    /* renamed from: a */
    public final String f15972a;

    /* renamed from: b */
    public static C3503b m18748b(String str) {
        return new C3503b(str);
    }

    /* renamed from: a */
    public String m18749a() {
        return this.f15972a;
    }

    public int hashCode() {
        return this.f15972a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f15972a + "\"}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3503b)) {
            return false;
        }
        return this.f15972a.equals(((C3503b) obj).f15972a);
    }

    public C3503b(String str) {
        if (str != null) {
            this.f15972a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }
}
