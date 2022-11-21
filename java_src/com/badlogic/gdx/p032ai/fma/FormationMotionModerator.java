package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.fma.FormationMotionModerator */
/* loaded from: classes.dex */
public abstract class FormationMotionModerator<T extends Vector<T>> {

    /* renamed from: a */
    public Location<T> f3286a;

    public abstract void updateAnchorPoint(Location<T> location);

    public Location<T> calculateDriftOffset(Location<T> location, Array<SlotAssignment<T>> array, FormationPattern<T> formationPattern) {
        location.getPosition().setZero();
        if (this.f3286a == null) {
            this.f3286a = location.newLocation();
        }
        T position = location.getPosition();
        T position2 = this.f3286a.getPosition();
        float f = array.size;
        float f2 = 0.0f;
        for (int i = 0; i < f; i++) {
            formationPattern.calculateSlotLocation(this.f3286a, array.get(i).slotNumber);
            position.add(position2);
            f2 += this.f3286a.getOrientation();
        }
        position.scl(1.0f / f);
        location.setOrientation(f2 / f);
        return location;
    }
}
