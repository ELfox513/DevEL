package com.badlogic.gdx.p032ai.fma.patterns;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.fma.FormationPattern;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.fma.patterns.DefensiveCircleFormationPattern */
/* loaded from: classes.dex */
public class DefensiveCircleFormationPattern<T extends Vector<T>> implements FormationPattern<T> {

    /* renamed from: a */
    public int f3295a;

    /* renamed from: b */
    public float f3296b;

    @Override // com.badlogic.gdx.p032ai.fma.FormationPattern
    public void setNumberOfSlots(int i) {
        this.f3295a = i;
    }

    @Override // com.badlogic.gdx.p032ai.fma.FormationPattern
    public boolean supportsSlots(int i) {
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.fma.FormationPattern
    public Location<T> calculateSlotLocation(Location<T> location, int i) {
        int i2 = this.f3295a;
        if (i2 > 1) {
            float f = (i * 6.2831855f) / i2;
            float f2 = this.f3296b;
            double d = i2;
            Double.isNaN(d);
            location.angleToVector(location.getPosition(), f).scl(f2 / ((float) Math.sin(3.141592653589793d / d)));
            location.setOrientation(f);
        } else {
            location.getPosition().setZero();
            location.setOrientation(i * 6.2831855f);
        }
        return location;
    }

    public DefensiveCircleFormationPattern(float f) {
        this.f3296b = f;
    }
}
