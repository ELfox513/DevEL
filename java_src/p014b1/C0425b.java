package p014b1;
/* renamed from: b1.b */
/* loaded from: classes.dex */
public class C0425b {

    /* renamed from: a */
    public boolean f1496a;

    /* renamed from: b */
    public boolean f1497b;

    /* renamed from: c */
    public boolean f1498c;

    /* renamed from: d */
    public boolean f1499d;

    /* renamed from: a */
    public boolean m26542a() {
        return this.f1496a;
    }

    /* renamed from: b */
    public boolean m26541b() {
        return this.f1498c;
    }

    /* renamed from: c */
    public boolean m26540c() {
        return this.f1499d;
    }

    /* renamed from: d */
    public boolean m26539d() {
        return this.f1497b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0425b)) {
            return false;
        }
        C0425b c0425b = (C0425b) obj;
        return this.f1496a == c0425b.f1496a && this.f1497b == c0425b.f1497b && this.f1498c == c0425b.f1498c && this.f1499d == c0425b.f1499d;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f1496a), Boolean.valueOf(this.f1497b), Boolean.valueOf(this.f1498c), Boolean.valueOf(this.f1499d));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public int hashCode() {
        ?? r0 = this.f1496a;
        int i = r0;
        if (this.f1497b) {
            i = r0 + 16;
        }
        int i2 = i;
        if (this.f1498c) {
            i2 = i + 256;
        }
        if (this.f1499d) {
            return i2 + 4096;
        }
        return i2;
    }

    public C0425b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f1496a = z;
        this.f1497b = z2;
        this.f1498c = z3;
        this.f1499d = z4;
    }
}
