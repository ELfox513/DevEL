package p168r4;

import java.util.Arrays;
/* renamed from: r4.j44 */
/* loaded from: classes2.dex */
public final class j44 {

    /* renamed from: d */
    public static final j44 f25890d = new j44(new h24[0]);

    /* renamed from: e */
    public static final InterfaceC5674d3<j44> f25891e = i34.f24956a;

    /* renamed from: a */
    public final int f25892a;

    /* renamed from: b */
    public final h24[] f25893b;

    /* renamed from: c */
    public int f25894c;

    public j44(h24... h24VarArr) {
        this.f25893b = h24VarArr;
        this.f25892a = h24VarArr.length;
    }

    /* renamed from: a */
    public final h24 m10424a(int i) {
        return this.f25893b[i];
    }

    /* renamed from: b */
    public final int m10423b(h24 h24Var) {
        for (int i = 0; i < this.f25892a; i++) {
            if (this.f25893b[i] == h24Var) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && j44.class == obj.getClass()) {
            j44 j44Var = (j44) obj;
            if (this.f25892a == j44Var.f25892a && Arrays.equals(this.f25893b, j44Var.f25893b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f25894c;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f25893b);
            this.f25894c = hashCode;
            return hashCode;
        }
        return i;
    }
}
