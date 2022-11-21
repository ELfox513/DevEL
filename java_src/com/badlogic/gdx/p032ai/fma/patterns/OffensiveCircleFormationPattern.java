package com.badlogic.gdx.p032ai.fma.patterns;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.fma.patterns.OffensiveCircleFormationPattern */
/* loaded from: classes.dex */
public class OffensiveCircleFormationPattern<T extends Vector<T>> extends DefensiveCircleFormationPattern<T> {
    public OffensiveCircleFormationPattern(float f) {
        super(f);
    }

    @Override // com.badlogic.gdx.p032ai.fma.patterns.DefensiveCircleFormationPattern, com.badlogic.gdx.p032ai.fma.FormationPattern
    public Location<T> calculateSlotLocation(Location<T> location, int i) {
        super.calculateSlotLocation(location, i);
        location.setOrientation(location.getOrientation() + 3.1415927f);
        return location;
    }
}
