package p018b5;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
/* renamed from: b5.i */
/* loaded from: classes2.dex */
public final class C0691i implements InterfaceC0827q {

    /* renamed from: a */
    public final Double f1871a;

    public C0691i(Double d) {
        if (d == null) {
            this.f1871a = Double.valueOf(Double.NaN);
        } else {
            this.f1871a = d;
        }
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        return new C0691i(this.f1871a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        return this.f1871a;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        boolean z = false;
        if (!Double.isNaN(this.f1871a.doubleValue()) && this.f1871a.doubleValue() != 0.0d) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public final int hashCode() {
        return this.f1871a.hashCode();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return null;
    }

    public final String toString() {
        return mo25083j();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0691i)) {
            return false;
        }
        return this.f1871a.equals(((C0691i) obj).f1871a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        int scale;
        if (Double.isNaN(this.f1871a.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(this.f1871a.doubleValue())) {
            if (this.f1871a.doubleValue() > 0.0d) {
                return "Infinity";
            }
            return "-Infinity";
        }
        BigDecimal stripTrailingZeros = BigDecimal.valueOf(this.f1871a.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        if (stripTrailingZeros.scale() > 0) {
            scale = stripTrailingZeros.precision();
        } else {
            scale = stripTrailingZeros.scale();
        }
        decimalFormat.setMinimumFractionDigits(scale - 1);
        String format = decimalFormat.format(stripTrailingZeros);
        int indexOf = format.indexOf("E");
        if (indexOf > 0) {
            int parseInt = Integer.parseInt(format.substring(indexOf + 1));
            if ((parseInt < 0 && parseInt > -7) || (parseInt >= 0 && parseInt < 21)) {
                return stripTrailingZeros.toPlainString();
            }
            return format.replace("E-", "e-").replace("E", "e+");
        }
        return format;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if ("toString".equals(str)) {
            return new C0895u(mo25083j());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", mo25083j(), str));
    }
}
