package com.badlogic.gdx.graphics.g3d.environment;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class DirectionalLight extends BaseLight<DirectionalLight> {
    public final Vector3 direction = new Vector3();

    public boolean equals(Object obj) {
        return (obj instanceof DirectionalLight) && equals((DirectionalLight) obj);
    }

    public DirectionalLight set(DirectionalLight directionalLight) {
        return set(directionalLight.color, directionalLight.direction);
    }

    public DirectionalLight setDirection(float f, float f2, float f3) {
        this.direction.set(f, f2, f3);
        return this;
    }

    public boolean equals(DirectionalLight directionalLight) {
        return directionalLight != null && (directionalLight == this || (this.color.equals(directionalLight.color) && this.direction.equals(directionalLight.direction)));
    }

    public DirectionalLight set(Color color, Vector3 vector3) {
        if (color != null) {
            this.color.set(color);
        }
        if (vector3 != null) {
            this.direction.set(vector3).nor();
        }
        return this;
    }

    public DirectionalLight setDirection(Vector3 vector3) {
        this.direction.set(vector3);
        return this;
    }

    public DirectionalLight set(float f, float f2, float f3, Vector3 vector3) {
        this.color.set(f, f2, f3, 1.0f);
        if (vector3 != null) {
            this.direction.set(vector3).nor();
        }
        return this;
    }

    public DirectionalLight set(Color color, float f, float f2, float f3) {
        if (color != null) {
            this.color.set(color);
        }
        this.direction.set(f, f2, f3).nor();
        return this;
    }

    public DirectionalLight set(float f, float f2, float f3, float f4, float f5, float f6) {
        this.color.set(f, f2, f3, 1.0f);
        this.direction.set(f4, f5, f6).nor();
        return this;
    }
}
