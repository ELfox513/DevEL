package com.badlogic.gdx.p032ai.utils.random;
/* renamed from: com.badlogic.gdx.ai.utils.random.TriangularLongDistribution */
/* loaded from: classes.dex */
public final class TriangularLongDistribution extends LongDistribution {

    /* renamed from: a */
    public final long f3508a;

    /* renamed from: b */
    public final long f3509b;

    /* renamed from: c */
    public final double f3510c;

    public TriangularLongDistribution(long j) {
        this(-j, j);
    }

    public long getHigh() {
        return this.f3509b;
    }

    public long getLow() {
        return this.f3508a;
    }

    public double getMode() {
        return this.f3510c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TriangularLongDistribution(long r12, long r14) {
        /*
            r11 = this;
            long r0 = r12 + r14
            double r0 = (double) r0
            r2 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            java.lang.Double.isNaN(r0)
            double r9 = r0 * r2
            r4 = r11
            r5 = r12
            r7 = r14
            r4.<init>(r5, r7, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.p032ai.utils.random.TriangularLongDistribution.<init>(long, long):void");
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public long nextLong() {
        double m24365b;
        long j = this.f3508a;
        long j2 = this.f3509b;
        if ((-j) == j2 && this.f3510c == 0.0d) {
            m24365b = TriangularDoubleDistribution.m24366a(j2);
        } else {
            m24365b = TriangularDoubleDistribution.m24365b(j, j2, this.f3510c);
        }
        return Math.round(m24365b);
    }

    public TriangularLongDistribution(long j, long j2, double d) {
        this.f3508a = j;
        this.f3509b = j2;
        this.f3510c = d;
    }
}
