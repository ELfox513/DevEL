package com.badlogic.gdx.p032ai.fma;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.fma.FormationMember */
/* loaded from: classes.dex */
public interface FormationMember<T extends Vector<T>> {
    Location<T> getTargetLocation();
}
