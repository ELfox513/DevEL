package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.SteerableAdapter */
/* loaded from: classes.dex */
public class SteerableAdapter<T extends Vector<T>> implements Steerable<T> {
    @Override // com.badlogic.gdx.p032ai.utils.Location
    public T angleToVector(T t, float f) {
        return null;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Steerable
    public float getAngularVelocity() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Steerable
    public float getBoundingRadius() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Steerable
    public T getLinearVelocity() {
        return null;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularAcceleration() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularSpeed() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearAcceleration() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearSpeed() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.utils.Location
    public float getOrientation() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.utils.Location
    public T getPosition() {
        return null;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getZeroLinearSpeedThreshold() {
        return 0.001f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Steerable
    public boolean isTagged() {
        return false;
    }

    @Override // com.badlogic.gdx.p032ai.utils.Location
    public Location<T> newLocation() {
        return null;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularAcceleration(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularSpeed(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearAcceleration(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearSpeed(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.utils.Location
    public void setOrientation(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.steer.Steerable
    public void setTagged(boolean z) {
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setZeroLinearSpeedThreshold(float f) {
    }

    @Override // com.badlogic.gdx.p032ai.utils.Location
    public float vectorToAngle(T t) {
        return 0.0f;
    }
}
