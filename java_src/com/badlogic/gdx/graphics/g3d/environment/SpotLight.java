package com.badlogic.gdx.graphics.g3d.environment;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public class SpotLight extends BaseLight<SpotLight> {
    public float cutoffAngle;
    public float exponent;
    public float intensity;
    public final Vector3 position = new Vector3();
    public final Vector3 direction = new Vector3();

    public boolean equals(Object obj) {
        return (obj instanceof SpotLight) && equals((SpotLight) obj);
    }

    public SpotLight set(SpotLight spotLight) {
        return set(spotLight.color, spotLight.position, spotLight.direction, spotLight.intensity, spotLight.cutoffAngle, spotLight.exponent);
    }

    public SpotLight setCutoffAngle(float f) {
        this.cutoffAngle = f;
        return this;
    }

    public SpotLight setDirection(float f, float f2, float f3) {
        this.direction.set(f, f2, f3);
        return this;
    }

    public SpotLight setExponent(float f) {
        this.exponent = f;
        return this;
    }

    public SpotLight setIntensity(float f) {
        this.intensity = f;
        return this;
    }

    public SpotLight setPosition(float f, float f2, float f3) {
        this.position.set(f, f2, f3);
        return this;
    }

    public SpotLight setTarget(Vector3 vector3) {
        this.direction.set(vector3).sub(this.position).nor();
        return this;
    }

    public boolean equals(SpotLight spotLight) {
        return spotLight != null && (spotLight == this || (this.color.equals(spotLight.color) && this.position.equals(spotLight.position) && this.direction.equals(spotLight.direction) && MathUtils.isEqual(this.intensity, spotLight.intensity) && MathUtils.isEqual(this.cutoffAngle, spotLight.cutoffAngle) && MathUtils.isEqual(this.exponent, spotLight.exponent)));
    }

    public SpotLight set(Color color, Vector3 vector3, Vector3 vector32, float f, float f2, float f3) {
        if (color != null) {
            this.color.set(color);
        }
        if (vector3 != null) {
            this.position.set(vector3);
        }
        if (vector32 != null) {
            this.direction.set(vector32).nor();
        }
        this.intensity = f;
        this.cutoffAngle = f2;
        this.exponent = f3;
        return this;
    }

    public SpotLight setDirection(Vector3 vector3) {
        this.direction.set(vector3);
        return this;
    }

    public SpotLight setPosition(Vector3 vector3) {
        this.position.set(vector3);
        return this;
    }

    public SpotLight set(float f, float f2, float f3, Vector3 vector3, Vector3 vector32, float f4, float f5, float f6) {
        this.color.set(f, f2, f3, 1.0f);
        if (vector3 != null) {
            this.position.set(vector3);
        }
        if (vector32 != null) {
            this.direction.set(vector32).nor();
        }
        this.intensity = f4;
        this.cutoffAngle = f5;
        this.exponent = f6;
        return this;
    }

    public SpotLight set(Color color, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        if (color != null) {
            this.color.set(color);
        }
        this.position.set(f, f2, f3);
        this.direction.set(f4, f5, f6).nor();
        this.intensity = f7;
        this.cutoffAngle = f8;
        this.exponent = f9;
        return this;
    }

    public SpotLight set(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        this.color.set(f, f2, f3, 1.0f);
        this.position.set(f4, f5, f6);
        this.direction.set(f7, f8, f9).nor();
        this.intensity = f10;
        this.cutoffAngle = f11;
        this.exponent = f12;
        return this;
    }
}
