package p168r4;

import java.util.Arrays;
/* renamed from: r4.mj */
/* loaded from: classes2.dex */
public final class C6023mj {

    /* renamed from: d */
    public static final C6023mj f27742d = new C6023mj(new C5986lj[0]);

    /* renamed from: a */
    public final int f27743a;

    /* renamed from: b */
    public final C5986lj[] f27744b;

    /* renamed from: c */
    public int f27745c;

    public C6023mj(C5986lj... c5986ljArr) {
        this.f27744b = c5986ljArr;
        this.f27743a = c5986ljArr.length;
    }

    /* renamed from: a */
    public final C5986lj m9378a(int i) {
        return this.f27744b[i];
    }

    /* renamed from: b */
    public final int m9377b(C5986lj c5986lj) {
        for (int i = 0; i < this.f27743a; i++) {
            if (this.f27744b[i] == c5986lj) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6023mj.class == obj.getClass()) {
            C6023mj c6023mj = (C6023mj) obj;
            if (this.f27743a == c6023mj.f27743a && Arrays.equals(this.f27744b, c6023mj.f27744b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f27745c;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f27744b);
            this.f27745c = hashCode;
            return hashCode;
        }
        return i;
    }
}
