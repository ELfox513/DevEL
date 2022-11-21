package p168r4;

import java.util.Arrays;
/* renamed from: r4.av3 */
/* loaded from: classes2.dex */
public final class av3 {

    /* renamed from: f */
    public static final InterfaceC5674d3<av3> f20635f = au3.f20622a;

    /* renamed from: a */
    public final int f20636a;

    /* renamed from: b */
    public final int f20637b;

    /* renamed from: c */
    public final int f20638c;

    /* renamed from: d */
    public final byte[] f20639d;

    /* renamed from: e */
    public int f20640e;

    public av3(int i, int i2, int i3, byte[] bArr) {
        this.f20636a = i;
        this.f20637b = i2;
        this.f20638c = i3;
        this.f20639d = bArr;
    }

    /* renamed from: a */
    public static int m12925a(int i) {
        if (i != 1) {
            if (i != 9) {
                return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
            }
            return 6;
        }
        return 1;
    }

    /* renamed from: b */
    public static int m12924b(int i) {
        if (i != 1) {
            if (i != 16) {
                if (i != 18) {
                    return (i == 6 || i == 7) ? 3 : -1;
                }
                return 7;
            }
            return 6;
        }
        return 3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && av3.class == obj.getClass()) {
            av3 av3Var = (av3) obj;
            if (this.f20636a == av3Var.f20636a && this.f20637b == av3Var.f20637b && this.f20638c == av3Var.f20638c && Arrays.equals(this.f20639d, av3Var.f20639d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f20640e;
        if (i == 0) {
            int hashCode = ((((((this.f20636a + 527) * 31) + this.f20637b) * 31) + this.f20638c) * 31) + Arrays.hashCode(this.f20639d);
            this.f20640e = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.f20636a;
        int i2 = this.f20637b;
        int i3 = this.f20638c;
        boolean z = this.f20639d != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }
}
