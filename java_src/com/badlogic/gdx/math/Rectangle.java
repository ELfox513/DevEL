package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;
/* loaded from: classes.dex */
public class Rectangle implements Serializable, Shape2D {
    public static final Rectangle tmp = new Rectangle();
    public static final Rectangle tmp2 = new Rectangle();
    public float height;
    public float width;

    /* renamed from: x */
    public float f5523x;

    /* renamed from: y */
    public float f5524y;

    public Rectangle() {
    }

    public float area() {
        return this.width * this.height;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(float f, float f2) {
        float f3 = this.f5523x;
        if (f3 <= f && f3 + this.width >= f) {
            float f4 = this.f5524y;
            if (f4 <= f2 && f4 + this.height >= f2) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Rectangle rectangle = (Rectangle) obj;
        return NumberUtils.floatToRawIntBits(this.height) == NumberUtils.floatToRawIntBits(rectangle.height) && NumberUtils.floatToRawIntBits(this.width) == NumberUtils.floatToRawIntBits(rectangle.width) && NumberUtils.floatToRawIntBits(this.f5523x) == NumberUtils.floatToRawIntBits(rectangle.f5523x) && NumberUtils.floatToRawIntBits(this.f5524y) == NumberUtils.floatToRawIntBits(rectangle.f5524y);
    }

    public float getAspectRatio() {
        float f = this.height;
        if (f == 0.0f) {
            return Float.NaN;
        }
        return this.width / f;
    }

    public float getHeight() {
        return this.height;
    }

    public Vector2 getPosition(Vector2 vector2) {
        return vector2.set(this.f5523x, this.f5524y);
    }

    public Vector2 getSize(Vector2 vector2) {
        return vector2.set(this.width, this.height);
    }

    public float getWidth() {
        return this.width;
    }

    public float getX() {
        return this.f5523x;
    }

    public float getY() {
        return this.f5524y;
    }

    public Rectangle merge(Rectangle rectangle) {
        float min = Math.min(this.f5523x, rectangle.f5523x);
        float max = Math.max(this.f5523x + this.width, rectangle.f5523x + rectangle.width);
        this.f5523x = min;
        this.width = max - min;
        float min2 = Math.min(this.f5524y, rectangle.f5524y);
        float max2 = Math.max(this.f5524y + this.height, rectangle.f5524y + rectangle.height);
        this.f5524y = min2;
        this.height = max2 - min2;
        return this;
    }

    public boolean overlaps(Rectangle rectangle) {
        float f = this.f5523x;
        float f2 = rectangle.f5523x;
        if (f < rectangle.width + f2 && f + this.width > f2) {
            float f3 = this.f5524y;
            float f4 = rectangle.f5524y;
            if (f3 < rectangle.height + f4 && f3 + this.height > f4) {
                return true;
            }
        }
        return false;
    }

    public float perimeter() {
        return (this.width + this.height) * 2.0f;
    }

    public Rectangle set(float f, float f2, float f3, float f4) {
        this.f5523x = f;
        this.f5524y = f2;
        this.width = f3;
        this.height = f4;
        return this;
    }

    public Rectangle setCenter(float f, float f2) {
        setPosition(f - (this.width / 2.0f), f2 - (this.height / 2.0f));
        return this;
    }

    public Rectangle setHeight(float f) {
        this.height = f;
        return this;
    }

    public Rectangle setPosition(Vector2 vector2) {
        this.f5523x = vector2.f5527x;
        this.f5524y = vector2.f5528y;
        return this;
    }

    public Rectangle setSize(float f, float f2) {
        this.width = f;
        this.height = f2;
        return this;
    }

    public Rectangle setWidth(float f) {
        this.width = f;
        return this;
    }

    public Rectangle setX(float f) {
        this.f5523x = f;
        return this;
    }

    public Rectangle setY(float f) {
        this.f5524y = f;
        return this;
    }

    public String toString() {
        return "[" + this.f5523x + "," + this.f5524y + "," + this.width + "," + this.height + "]";
    }

    public Rectangle(float f, float f2, float f3, float f4) {
        this.f5523x = f;
        this.f5524y = f2;
        this.width = f3;
        this.height = f4;
    }

    @Override // com.badlogic.gdx.math.Shape2D
    public boolean contains(Vector2 vector2) {
        return contains(vector2.f5527x, vector2.f5528y);
    }

    public Rectangle fromString(String str) {
        int indexOf = str.indexOf(44, 1);
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(44, i);
        int i2 = indexOf2 + 1;
        int indexOf3 = str.indexOf(44, i2);
        if (indexOf != -1 && indexOf2 != -1 && indexOf3 != -1 && str.charAt(0) == '[' && str.charAt(str.length() - 1) == ']') {
            try {
                return set(Float.parseFloat(str.substring(1, indexOf)), Float.parseFloat(str.substring(i, indexOf2)), Float.parseFloat(str.substring(i2, indexOf3)), Float.parseFloat(str.substring(indexOf3 + 1, str.length() - 1)));
            } catch (NumberFormatException unused) {
            }
        }
        throw new GdxRuntimeException("Malformed Rectangle: " + str);
    }

    public Vector2 getCenter(Vector2 vector2) {
        vector2.f5527x = this.f5523x + (this.width / 2.0f);
        vector2.f5528y = this.f5524y + (this.height / 2.0f);
        return vector2;
    }

    public int hashCode() {
        return ((((((NumberUtils.floatToRawIntBits(this.height) + 31) * 31) + NumberUtils.floatToRawIntBits(this.width)) * 31) + NumberUtils.floatToRawIntBits(this.f5523x)) * 31) + NumberUtils.floatToRawIntBits(this.f5524y);
    }

    public Rectangle setCenter(Vector2 vector2) {
        setPosition(vector2.f5527x - (this.width / 2.0f), vector2.f5528y - (this.height / 2.0f));
        return this;
    }

    public boolean contains(Circle circle) {
        float f = circle.f5379x;
        float f2 = circle.radius;
        float f3 = this.f5523x;
        if (f - f2 >= f3 && f + f2 <= f3 + this.width) {
            float f4 = circle.f5380y;
            float f5 = this.f5524y;
            if (f4 - f2 >= f5 && f4 + f2 <= f5 + this.height) {
                return true;
            }
        }
        return false;
    }

    public Rectangle fitInside(Rectangle rectangle) {
        float aspectRatio = getAspectRatio();
        if (aspectRatio < rectangle.getAspectRatio()) {
            float f = rectangle.height;
            setSize(aspectRatio * f, f);
        } else {
            float f2 = rectangle.width;
            setSize(f2, f2 / aspectRatio);
        }
        setPosition((rectangle.f5523x + (rectangle.width / 2.0f)) - (this.width / 2.0f), (rectangle.f5524y + (rectangle.height / 2.0f)) - (this.height / 2.0f));
        return this;
    }

    public Rectangle fitOutside(Rectangle rectangle) {
        float aspectRatio = getAspectRatio();
        if (aspectRatio > rectangle.getAspectRatio()) {
            float f = rectangle.height;
            setSize(aspectRatio * f, f);
        } else {
            float f2 = rectangle.width;
            setSize(f2, f2 / aspectRatio);
        }
        setPosition((rectangle.f5523x + (rectangle.width / 2.0f)) - (this.width / 2.0f), (rectangle.f5524y + (rectangle.height / 2.0f)) - (this.height / 2.0f));
        return this;
    }

    public Rectangle setPosition(float f, float f2) {
        this.f5523x = f;
        this.f5524y = f2;
        return this;
    }

    public Rectangle setSize(float f) {
        this.width = f;
        this.height = f;
        return this;
    }

    public boolean contains(Rectangle rectangle) {
        float f = rectangle.f5523x;
        float f2 = rectangle.width + f;
        float f3 = rectangle.f5524y;
        float f4 = rectangle.height + f3;
        float f5 = this.f5523x;
        if (f > f5) {
            float f6 = this.width;
            if (f < f5 + f6 && f2 > f5 && f2 < f5 + f6) {
                float f7 = this.f5524y;
                if (f3 > f7) {
                    float f8 = this.height;
                    if (f3 < f7 + f8 && f4 > f7 && f4 < f7 + f8) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public Rectangle set(Rectangle rectangle) {
        this.f5523x = rectangle.f5523x;
        this.f5524y = rectangle.f5524y;
        this.width = rectangle.width;
        this.height = rectangle.height;
        return this;
    }

    public Rectangle(Rectangle rectangle) {
        this.f5523x = rectangle.f5523x;
        this.f5524y = rectangle.f5524y;
        this.width = rectangle.width;
        this.height = rectangle.height;
    }

    public Rectangle merge(float f, float f2) {
        float min = Math.min(this.f5523x, f);
        float max = Math.max(this.f5523x + this.width, f);
        this.f5523x = min;
        this.width = max - min;
        float min2 = Math.min(this.f5524y, f2);
        float max2 = Math.max(this.f5524y + this.height, f2);
        this.f5524y = min2;
        this.height = max2 - min2;
        return this;
    }

    public Rectangle merge(Vector2 vector2) {
        return merge(vector2.f5527x, vector2.f5528y);
    }

    public Rectangle merge(Vector2[] vector2Arr) {
        float f = this.f5523x;
        float f2 = this.width + f;
        float f3 = this.f5524y;
        float f4 = this.height + f3;
        for (Vector2 vector2 : vector2Arr) {
            f = Math.min(f, vector2.f5527x);
            f2 = Math.max(f2, vector2.f5527x);
            f3 = Math.min(f3, vector2.f5528y);
            f4 = Math.max(f4, vector2.f5528y);
        }
        this.f5523x = f;
        this.width = f2 - f;
        this.f5524y = f3;
        this.height = f4 - f3;
        return this;
    }
}
