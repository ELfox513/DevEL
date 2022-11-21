package p168r4;

import java.util.Arrays;
/* renamed from: r4.hv3 */
/* loaded from: classes2.dex */
public class hv3 {

    /* renamed from: a */
    public final h24 f24880a;

    /* renamed from: b */
    public final int f24881b;

    /* renamed from: c */
    public final int[] f24882c;

    /* renamed from: d */
    public final C5713e5[] f24883d;

    /* renamed from: e */
    public int f24884e;

    /* renamed from: a */
    public final h24 m10783a() {
        return this.f24880a;
    }

    /* renamed from: b */
    public final int m10782b() {
        return this.f24882c.length;
    }

    /* renamed from: c */
    public final C5713e5 m10781c(int i) {
        return this.f24883d[i];
    }

    /* renamed from: d */
    public final int m10780d(int i) {
        return this.f24882c[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            hv3 hv3Var = (hv3) obj;
            if (this.f24880a == hv3Var.f24880a && Arrays.equals(this.f24882c, hv3Var.f24882c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f24884e;
        if (i == 0) {
            int identityHashCode = (System.identityHashCode(this.f24880a) * 31) + Arrays.hashCode(this.f24882c);
            this.f24884e = identityHashCode;
            return identityHashCode;
        }
        return i;
    }

    public hv3(h24 h24Var, int[] iArr, int i) {
        boolean z;
        int length = iArr.length;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        h24Var.getClass();
        this.f24880a = h24Var;
        this.f24881b = length;
        this.f24883d = new C5713e5[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f24883d[i2] = h24Var.m11000a(iArr[i2]);
        }
        Arrays.sort(this.f24883d, gv3.f24355a);
        this.f24882c = new int[this.f24881b];
        for (int i3 = 0; i3 < this.f24881b; i3++) {
            this.f24882c[i3] = h24Var.m10999b(this.f24883d[i3]);
        }
    }
}
