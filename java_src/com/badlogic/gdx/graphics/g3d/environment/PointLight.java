package com.badlogic.gdx.graphics.g3d.environment;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class PointLight extends BaseLight<PointLight> {
    public float intensity;
    public final Vector3 position = new Vector3();

    public boolean equals(Object obj) {
        return (obj instanceof PointLight) && equals((PointLight) obj);
    }

    public PointLight set(PointLight pointLight) {
        return set(pointLight.color, pointLight.position, pointLight.intensity);
    }

    public PointLight setIntensity(float f) {
        this.intensity = f;
        return this;
    }

    public PointLight setPosition(float f, float f2, float f3) {
        this.position.set(f, f2, f3);
        return this;
    }

    public boolean equals(PointLight pointLight) {
        return pointLight != null && (pointLight == this || (this.color.equals(pointLight.color) && this.position.equals(pointLight.position) && this.intensity == pointLight.intensity));
    }

    public PointLight set(Color color, Vector3 vector3, float f) {
        if (color != null) {
            this.color.set(color);
        }
        if (vector3 != null) {
            this.position.set(vector3);
        }
        this.intensity = f;
        return this;
    }

    public PointLight setPosition(Vector3 vector3) {
        this.position.set(vector3);
        return this;
    }

    public PointLight set(float f, float f2, float f3, Vector3 vector3, float f4) {
        this.color.set(f, f2, f3, 1.0f);
        if (vector3 != null) {
            this.position.set(vector3);
        }
        this.intensity = f4;
        return this;
    }

    public PointLight set(Color color, float f, float f2, float f3, float f4) {
        if (color != null) {
            this.color.set(color);
        }
        this.position.set(f, f2, f3);
        this.intensity = f4;
        return this;
    }

    public PointLight set(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        this.color.set(f, f2, f3, 1.0f);
        this.position.set(f4, f5, f6);
        this.intensity = f7;
        return this;
    }
}
