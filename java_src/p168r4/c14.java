package p168r4;

import java.util.Arrays;
/* renamed from: r4.c14 */
/* loaded from: classes2.dex */
public final class c14 {

    /* renamed from: a */
    public final int f21308a;

    /* renamed from: b */
    public final byte[] f21309b;

    /* renamed from: c */
    public final int f21310c;

    /* renamed from: d */
    public final int f21311d;

    public c14(int i, byte[] bArr, int i2, int i3) {
        this.f21308a = i;
        this.f21309b = bArr;
        this.f21310c = i2;
        this.f21311d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c14.class == obj.getClass()) {
            c14 c14Var = (c14) obj;
            if (this.f21308a == c14Var.f21308a && this.f21310c == c14Var.f21310c && this.f21311d == c14Var.f21311d && Arrays.equals(this.f21309b, c14Var.f21309b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f21308a * 31) + Arrays.hashCode(this.f21309b)) * 31) + this.f21310c) * 31) + this.f21311d;
    }
}
