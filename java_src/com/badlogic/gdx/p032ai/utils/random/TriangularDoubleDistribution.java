package com.badlogic.gdx.p032ai.utils.random;

import com.badlogic.gdx.math.MathUtils;
/* renamed from: com.badlogic.gdx.ai.utils.random.TriangularDoubleDistribution */
/* loaded from: classes.dex */
public final class TriangularDoubleDistribution extends DoubleDistribution {

    /* renamed from: a */
    public final double f3499a;

    /* renamed from: b */
    public final double f3500b;

    /* renamed from: c */
    public final double f3501c;

    public TriangularDoubleDistribution(double d) {
        this(-d, d);
    }

    /* renamed from: a */
    public static double m24366a(double d) {
        return (MathUtils.random.nextDouble() - MathUtils.random.nextDouble()) * d;
    }

    public double getHigh() {
        return this.f3500b;
    }

    public double getLow() {
        return this.f3499a;
    }

    public double getMode() {
        return this.f3501c;
    }

    public TriangularDoubleDistribution(double d, double d2) {
        this(d, d2, (d + d2) * 0.5d);
    }

    /* renamed from: b */
    public static double m24365b(double d, double d2, double d3) {
        double nextDouble = MathUtils.random.nextDouble();
        double d4 = d2 - d;
        double d5 = d3 - d;
        if (nextDouble <= d5 / d4) {
            return d + Math.sqrt(nextDouble * d4 * d5);
        }
        return d2 - Math.sqrt(((1.0d - nextDouble) * d4) * (d2 - d3));
    }

    @Override // com.badlogic.gdx.p032ai.utils.random.Distribution
    public double nextDouble() {
        double d = this.f3499a;
        double d2 = this.f3500b;
        if ((-d) == d2 && this.f3501c == 0.0d) {
            return m24366a(d2);
        }
        return m24365b(d, d2, this.f3501c);
    }

    public TriangularDoubleDistribution(double d, double d2, double d3) {
        this.f3499a = d;
        this.f3500b = d2;
        this.f3501c = d3;
    }
}
