package p057f1;
/* renamed from: f1.g */
/* loaded from: classes.dex */
public class C3467g {

    /* renamed from: a */
    public final String f15898a;

    /* renamed from: b */
    public final int f15899b;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3467g)) {
            return false;
        }
        C3467g c3467g = (C3467g) obj;
        if (this.f15899b != c3467g.f15899b) {
            return false;
        }
        return this.f15898a.equals(c3467g.f15898a);
    }

    public int hashCode() {
        return (this.f15898a.hashCode() * 31) + this.f15899b;
    }

    public C3467g(String str, int i) {
        this.f15898a = str;
        this.f15899b = i;
    }
}
