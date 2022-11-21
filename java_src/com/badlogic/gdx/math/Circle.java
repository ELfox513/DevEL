package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Circle implements Serializable, Shape2D {
    public float radius;

    /* renamed from: x */
    public float f5379x;

    /* renamed from: y */
    public float f5380y;

    public Circle() {
    }

    public float area() {
        float f = this.radius;
        return f * f * 3.1415927f;
    }

    public float circumference() {
        return this.radius * 6.2831855f;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(float f, float f2) {
        float f3 = this.f5379x - f;
        float f4 = this.f5380y - f2;
        float f5 = (f3 * f3) + (f4 * f4);
        float f6 = this.radius;
        return f5 <= f6 * f6;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Circle circle = (Circle) obj;
        return this.f5379x == circle.f5379x && this.f5380y == circle.f5380y && this.radius == circle.radius;
    }

    public void set(float f, float f2, float f3) {
        this.f5379x = f;
        this.f5380y = f2;
        this.radius = f3;
    }

    public void setPosition(Vector2 vector2) {
        this.f5379x = vector2.f5527x;
        this.f5380y = vector2.f5528y;
    }

    public void setRadius(float f) {
        this.radius = f;
    }

    public void setX(float f) {
        this.f5379x = f;
    }

    public void setY(float f) {
        this.f5380y = f;
    }

    public String toString() {
        return this.f5379x + "," + this.f5380y + "," + this.radius;
    }

    public Circle(float f, float f2, float f3) {
        this.f5379x = f;
        this.f5380y = f2;
        this.radius = f3;
    }

    public int hashCode() {
        return ((((NumberUtils.floatToRawIntBits(this.radius) + 41) * 41) + NumberUtils.floatToRawIntBits(this.f5379x)) * 41) + NumberUtils.floatToRawIntBits(this.f5380y);
    }

    public boolean overlaps(Circle circle) {
        float f = this.f5379x - circle.f5379x;
        float f2 = this.f5380y - circle.f5380y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.radius + circle.radius;
        if (f3 < f4 * f4) {
            return true;
        }
        return false;
    }

    public void setPosition(float f, float f2) {
        this.f5379x = f;
        this.f5380y = f2;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(Vector2 vector2) {
        float f = this.f5379x - vector2.f5527x;
        float f2 = this.f5380y - vector2.f5528y;
        float f3 = this.radius;
        return (f * f) + (f2 * f2) <= f3 * f3;
    }

    public void set(Vector2 vector2, float f) {
        this.f5379x = vector2.f5527x;
        this.f5380y = vector2.f5528y;
        this.radius = f;
    }

    public Circle(Vector2 vector2, float f) {
        this.f5379x = vector2.f5527x;
        this.f5380y = vector2.f5528y;
        this.radius = f;
    }

    public boolean contains(Circle circle) {
        float f = this.radius;
        float f2 = circle.radius;
        float f3 = f - f2;
        if (f3 < 0.0f) {
            return false;
        }
        float f4 = this.f5379x - circle.f5379x;
        float f5 = this.f5380y - circle.f5380y;
        float f6 = (f4 * f4) + (f5 * f5);
        float f7 = f + f2;
        return f3 * f3 >= f6 && f6 < f7 * f7;
    }

    public void set(Circle circle) {
        this.f5379x = circle.f5379x;
        this.f5380y = circle.f5380y;
        this.radius = circle.radius;
    }

    public Circle(Circle circle) {
        this.f5379x = circle.f5379x;
        this.f5380y = circle.f5380y;
        this.radius = circle.radius;
    }

    public void set(Vector2 vector2, Vector2 vector22) {
        float f = vector2.f5527x;
        this.f5379x = f;
        float f2 = vector2.f5528y;
        this.f5380y = f2;
        this.radius = Vector2.len(f - vector22.f5527x, f2 - vector22.f5528y);
    }

    public Circle(Vector2 vector2, Vector2 vector22) {
        float f = vector2.f5527x;
        this.f5379x = f;
        float f2 = vector2.f5528y;
        this.f5380y = f2;
        this.radius = Vector2.len(f - vector22.f5527x, f2 - vector22.f5528y);
    }
}
