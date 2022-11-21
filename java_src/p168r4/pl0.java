package p168r4;

import java.math.BigInteger;
/* renamed from: r4.pl0 */
/* loaded from: classes2.dex */
public final class pl0 {

    /* renamed from: a */
    public BigInteger f29510a = BigInteger.ONE;

    /* renamed from: b */
    public String f29511b = "0";

    /* renamed from: a */
    public final synchronized String m8283a() {
        String bigInteger;
        bigInteger = this.f29510a.toString();
        this.f29510a = this.f29510a.add(BigInteger.ONE);
        this.f29511b = bigInteger;
        return bigInteger;
    }

    /* renamed from: b */
    public final synchronized String m8282b() {
        return this.f29511b;
    }
}
