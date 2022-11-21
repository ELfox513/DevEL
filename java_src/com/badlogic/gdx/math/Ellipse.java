package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Ellipse implements Serializable, Shape2D {
    public float height;
    public float width;

    /* renamed from: x */
    public float f5402x;

    /* renamed from: y */
    public float f5403y;

    public Ellipse() {
    }

    public float area() {
        return ((this.width * this.height) * 3.1415927f) / 4.0f;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(float f, float f2) {
        float f3 = f - this.f5402x;
        float f4 = f2 - this.f5403y;
        float f5 = this.width;
        float f6 = this.height;
        return ((f3 * f3) / (((f5 * 0.5f) * f5) * 0.5f)) + ((f4 * f4) / (((f6 * 0.5f) * f6) * 0.5f)) <= 1.0f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Ellipse ellipse = (Ellipse) obj;
        return this.f5402x == ellipse.f5402x && this.f5403y == ellipse.f5403y && this.width == ellipse.width && this.height == ellipse.height;
    }

    public void set(float f, float f2, float f3, float f4) {
        this.f5402x = f;
        this.f5403y = f2;
        this.width = f3;
        this.height = f4;
    }

    public Ellipse setPosition(Vector2 vector2) {
        this.f5402x = vector2.f5527x;
        this.f5403y = vector2.f5528y;
        return this;
    }

    public Ellipse(Ellipse ellipse) {
        this.f5402x = ellipse.f5402x;
        this.f5403y = ellipse.f5403y;
        this.width = ellipse.width;
        this.height = ellipse.height;
    }

    public float circumference() {
        float f;
        float f2 = this.width / 2.0f;
        float f3 = this.height / 2.0f;
        if (f2 * 3.0f <= f3 && f3 * 3.0f <= f2) {
            return (float) (Math.sqrt(((f2 * f2) + (f3 * f3)) / 2.0f) * 6.2831854820251465d);
        }
        double d = (f2 + f3) * 3.0f;
        double sqrt = Math.sqrt((f + f3) * (f2 + (f3 * 3.0f)));
        Double.isNaN(d);
        return (float) ((d - sqrt) * 3.1415927410125732d);
    }

    public int hashCode() {
        return ((((((NumberUtils.floatToRawIntBits(this.height) + 53) * 53) + NumberUtils.floatToRawIntBits(this.width)) * 53) + NumberUtils.floatToRawIntBits(this.f5402x)) * 53) + NumberUtils.floatToRawIntBits(this.f5403y);
    }

    public Ellipse setSize(float f, float f2) {
        this.width = f;
        this.height = f2;
        return this;
    }

    public Ellipse setPosition(float f, float f2) {
        this.f5402x = f;
        this.f5403y = f2;
        return this;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(Vector2 vector2) {
        return contains(vector2.f5527x, vector2.f5528y);
    }

    public void set(Ellipse ellipse) {
        this.f5402x = ellipse.f5402x;
        this.f5403y = ellipse.f5403y;
        this.width = ellipse.width;
        this.height = ellipse.height;
    }

    public Ellipse(float f, float f2, float f3, float f4) {
        this.f5402x = f;
        this.f5403y = f2;
        this.width = f3;
        this.height = f4;
    }

    public void set(Circle circle) {
        this.f5402x = circle.f5379x;
        this.f5403y = circle.f5380y;
        float f = circle.radius;
        this.width = f * 2.0f;
        this.height = f * 2.0f;
    }

    public Ellipse(Vector2 vector2, float f, float f2) {
        this.f5402x = vector2.f5527x;
        this.f5403y = vector2.f5528y;
        this.width = f;
        this.height = f2;
    }

    public void set(Vector2 vector2, Vector2 vector22) {
        this.f5402x = vector2.f5527x;
        this.f5403y = vector2.f5528y;
        this.width = vector22.f5527x;
        this.height = vector22.f5528y;
    }

    public Ellipse(Vector2 vector2, Vector2 vector22) {
        this.f5402x = vector2.f5527x;
        this.f5403y = vector2.f5528y;
        this.width = vector22.f5527x;
        this.height = vector22.f5528y;
    }

    public Ellipse(Circle circle) {
        this.f5402x = circle.f5379x;
        this.f5403y = circle.f5380y;
        float f = circle.radius;
        this.width = f * 2.0f;
        this.height = f * 2.0f;
    }
}
