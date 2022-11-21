package com.badlogic.gdx.pay;
/* loaded from: classes.dex */
public final class FreeTrialPeriod {

    /* renamed from: a */
    public final int f5566a;

    /* renamed from: b */
    public final PeriodUnit f5567b;

    /* loaded from: classes.dex */
    public enum PeriodUnit {
        DAY,
        MONTH,
        WEEK,
        YEAR;

        public static PeriodUnit parse(char c) {
            if (c != 'D') {
                if (c != 'M') {
                    if (c != 'W') {
                        if (c == 'Y') {
                            return YEAR;
                        }
                        throw new IllegalArgumentException("Character not mapped to PeriodUnit: " + c);
                    }
                    return WEEK;
                }
                return MONTH;
            }
            return DAY;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FreeTrialPeriod.class != obj.getClass()) {
            return false;
        }
        FreeTrialPeriod freeTrialPeriod = (FreeTrialPeriod) obj;
        return this.f5566a == freeTrialPeriod.f5566a && this.f5567b == freeTrialPeriod.f5567b;
    }

    public int getNumberOfUnits() {
        return this.f5566a;
    }

    public PeriodUnit getUnit() {
        return this.f5567b;
    }

    public int hashCode() {
        return (this.f5566a * 31) + this.f5567b.hashCode();
    }

    public FreeTrialPeriod(int i, PeriodUnit periodUnit) {
        this.f5566a = i;
        this.f5567b = periodUnit;
    }
}
