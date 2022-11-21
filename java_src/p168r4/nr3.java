package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.nr3 */
/* loaded from: classes2.dex */
public final class nr3 {

    /* renamed from: j */
    public static final nr3 f28457j = new nr3(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    public static final nr3 f28458k = new nr3(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    public static final nr3 f28459l = new nr3(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    public static final nr3 f28460m = new nr3(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a */
    public final double f28461a;

    /* renamed from: b */
    public final double f28462b;

    /* renamed from: c */
    public final double f28463c;

    /* renamed from: d */
    public final double f28464d;

    /* renamed from: e */
    public final double f28465e;

    /* renamed from: f */
    public final double f28466f;

    /* renamed from: g */
    public final double f28467g;

    /* renamed from: h */
    public final double f28468h;

    /* renamed from: i */
    public final double f28469i;

    public nr3(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f28461a = d5;
        this.f28462b = d6;
        this.f28463c = d7;
        this.f28464d = d;
        this.f28465e = d2;
        this.f28466f = d3;
        this.f28467g = d4;
        this.f28468h = d8;
        this.f28469i = d9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || nr3.class != obj.getClass()) {
            return false;
        }
        nr3 nr3Var = (nr3) obj;
        return Double.compare(nr3Var.f28464d, this.f28464d) == 0 && Double.compare(nr3Var.f28465e, this.f28465e) == 0 && Double.compare(nr3Var.f28466f, this.f28466f) == 0 && Double.compare(nr3Var.f28467g, this.f28467g) == 0 && Double.compare(nr3Var.f28468h, this.f28468h) == 0 && Double.compare(nr3Var.f28469i, this.f28469i) == 0 && Double.compare(nr3Var.f28461a, this.f28461a) == 0 && Double.compare(nr3Var.f28462b, this.f28462b) == 0 && Double.compare(nr3Var.f28463c, this.f28463c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f28461a);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f28462b);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f28463c);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f28464d);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f28465e);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f28466f);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f28467g);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f28468h);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f28469i);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3))) * 31) + ((int) ((doubleToLongBits4 >>> 32) ^ doubleToLongBits4))) * 31) + ((int) ((doubleToLongBits5 >>> 32) ^ doubleToLongBits5))) * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31) + ((int) ((doubleToLongBits7 >>> 32) ^ doubleToLongBits7))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(f28457j)) {
            return "Rotate 0°";
        }
        if (equals(f28458k)) {
            return "Rotate 90°";
        }
        if (equals(f28459l)) {
            return "Rotate 180°";
        }
        if (equals(f28460m)) {
            return "Rotate 270°";
        }
        double d = this.f28461a;
        double d2 = this.f28462b;
        double d3 = this.f28463c;
        double d4 = this.f28464d;
        double d5 = this.f28465e;
        double d6 = this.f28466f;
        double d7 = this.f28467g;
        double d8 = this.f28468h;
        double d9 = this.f28469i;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d);
        sb.append(", v=");
        sb.append(d2);
        sb.append(", w=");
        sb.append(d3);
        sb.append(", a=");
        sb.append(d4);
        sb.append(", b=");
        sb.append(d5);
        sb.append(", c=");
        sb.append(d6);
        sb.append(", d=");
        sb.append(d7);
        sb.append(", tx=");
        sb.append(d8);
        sb.append(", ty=");
        sb.append(d9);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: a */
    public static nr3 m9001a(ByteBuffer byteBuffer) {
        double m12180e = da4.m12180e(byteBuffer);
        double m12180e2 = da4.m12180e(byteBuffer);
        double m12179f = da4.m12179f(byteBuffer);
        return new nr3(m12180e, m12180e2, da4.m12180e(byteBuffer), da4.m12180e(byteBuffer), m12179f, da4.m12179f(byteBuffer), da4.m12179f(byteBuffer), da4.m12180e(byteBuffer), da4.m12180e(byteBuffer));
    }
}
