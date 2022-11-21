package p168r4;

import java.util.Arrays;
/* renamed from: r4.yj */
/* loaded from: classes2.dex */
public final class C6468yj {

    /* renamed from: a */
    public int f34102a;

    /* renamed from: b */
    public final C6172qj[] f34103b;

    public C6468yj(C6172qj[] c6172qjArr, byte... bArr) {
        this.f34103b = c6172qjArr;
    }

    /* renamed from: a */
    public final C6172qj m4681a(int i) {
        return this.f34103b[i];
    }

    /* renamed from: b */
    public final C6172qj[] m4680b() {
        return (C6172qj[]) this.f34103b.clone();
    }

    public final int hashCode() {
        int i = this.f34102a;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f34103b) + 527;
            this.f34102a = hashCode;
            return hashCode;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6468yj.class == obj.getClass()) {
            return Arrays.equals(this.f34103b, ((C6468yj) obj).f34103b);
        }
        return false;
    }
}
