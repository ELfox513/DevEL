package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.Steerable */
/* loaded from: classes.dex */
public interface Steerable<T extends Vector<T>> extends Location<T>, Limiter {
    float getAngularVelocity();

    float getBoundingRadius();

    T getLinearVelocity();

    boolean isTagged();

    void setTagged(boolean z);
}
