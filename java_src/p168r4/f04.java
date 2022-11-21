package p168r4;
/* renamed from: r4.f04 */
/* loaded from: classes2.dex */
public class f04 {

    /* renamed from: a */
    public final Object f23237a;

    /* renamed from: b */
    public final int f23238b;

    /* renamed from: c */
    public final int f23239c;

    /* renamed from: d */
    public final long f23240d;

    /* renamed from: e */
    public final int f23241e;

    public f04(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    public f04(Object obj, int i, int i2, long j, int i3) {
        this.f23237a = obj;
        this.f23238b = i;
        this.f23239c = i2;
        this.f23240d = j;
        this.f23241e = i3;
    }

    public f04(f04 f04Var) {
        this.f23237a = f04Var.f23237a;
        this.f23238b = f04Var.f23238b;
        this.f23239c = f04Var.f23239c;
        this.f23240d = f04Var.f23240d;
        this.f23241e = f04Var.f23241e;
    }

    /* renamed from: b */
    public final boolean m11647b() {
        return this.f23238b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f04)) {
            return false;
        }
        f04 f04Var = (f04) obj;
        return this.f23237a.equals(f04Var.f23237a) && this.f23238b == f04Var.f23238b && this.f23239c == f04Var.f23239c && this.f23240d == f04Var.f23240d && this.f23241e == f04Var.f23241e;
    }

    public final int hashCode() {
        return ((((((((this.f23237a.hashCode() + 527) * 31) + this.f23238b) * 31) + this.f23239c) * 31) + ((int) this.f23240d)) * 31) + this.f23241e;
    }

    public f04(Object obj, long j) {
        this(obj, -1, -1, -1L, -1);
    }

    /* renamed from: a */
    public final f04 m11648a(Object obj) {
        if (this.f23237a.equals(obj)) {
            return this;
        }
        return new f04(obj, this.f23238b, this.f23239c, this.f23240d, this.f23241e);
    }

    public f04(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }
}
