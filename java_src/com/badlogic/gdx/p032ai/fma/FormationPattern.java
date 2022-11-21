package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.fma.FormationPattern */
/* loaded from: classes.dex */
public interface FormationPattern<T extends Vector<T>> {
    Location<T> calculateSlotLocation(Location<T> location, int i);

    void setNumberOfSlots(int i);

    boolean supportsSlots(int i);
}
