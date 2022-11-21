package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class PolygonSprite {

    /* renamed from: a */
    public PolygonRegion f4217a;

    /* renamed from: b */
    public float f4218b;

    /* renamed from: c */
    public float f4219c;

    /* renamed from: d */
    public float f4220d;

    /* renamed from: e */
    public float f4221e;

    /* renamed from: h */
    public float f4224h;

    /* renamed from: i */
    public float f4225i;

    /* renamed from: j */
    public float f4226j;

    /* renamed from: k */
    public float[] f4227k;

    /* renamed from: l */
    public boolean f4228l;

    /* renamed from: f */
    public float f4222f = 1.0f;

    /* renamed from: g */
    public float f4223g = 1.0f;

    /* renamed from: m */
    public Rectangle f4229m = new Rectangle();

    /* renamed from: n */
    public final Color f4230n = new Color(1.0f, 1.0f, 1.0f, 1.0f);

    public PolygonSprite(PolygonRegion polygonRegion) {
        setRegion(polygonRegion);
        TextureRegion textureRegion = polygonRegion.f4214d;
        setSize(textureRegion.f4359f, textureRegion.f4360g);
        setOrigin(this.f4220d / 2.0f, this.f4221e / 2.0f);
    }

    public void draw(PolygonSpriteBatch polygonSpriteBatch) {
        PolygonRegion polygonRegion = this.f4217a;
        Texture texture = polygonRegion.f4214d.f4354a;
        float[] vertices = getVertices();
        int length = this.f4227k.length;
        short[] sArr = polygonRegion.f4213c;
        polygonSpriteBatch.draw(texture, vertices, 0, length, sArr, 0, sArr.length);
    }

    public Color getColor() {
        return this.f4230n;
    }

    public float getHeight() {
        return this.f4221e;
    }

    public float getOriginX() {
        return this.f4225i;
    }

    public float getOriginY() {
        return this.f4226j;
    }

    public PolygonRegion getRegion() {
        return this.f4217a;
    }

    public float getRotation() {
        return this.f4224h;
    }

    public float getScaleX() {
        return this.f4222f;
    }

    public float getScaleY() {
        return this.f4223g;
    }

    public float getWidth() {
        return this.f4220d;
    }

    public float getX() {
        return this.f4218b;
    }

    public float getY() {
        return this.f4219c;
    }

    public void setColor(Color color) {
        this.f4230n.set(color);
        float floatBits = color.toFloatBits();
        float[] fArr = this.f4227k;
        for (int i = 2; i < fArr.length; i += 5) {
            fArr[i] = floatBits;
        }
    }

    public void setPosition(float f, float f2) {
        translate(f - this.f4218b, f2 - this.f4219c);
    }

    public void setScale(float f) {
        this.f4222f = f;
        this.f4223g = f;
        this.f4228l = true;
    }

    public void setX(float f) {
        translateX(f - this.f4218b);
    }

    public void setY(float f) {
        translateY(f - this.f4219c);
    }

    public Color getPackedColor() {
        Color.abgr8888ToColor(this.f4230n, this.f4227k[2]);
        return this.f4230n;
    }

    public float[] getVertices() {
        if (!this.f4228l) {
            return this.f4227k;
        }
        int i = 0;
        this.f4228l = false;
        float f = this.f4225i;
        float f2 = this.f4226j;
        float f3 = this.f4222f;
        float f4 = this.f4223g;
        PolygonRegion polygonRegion = this.f4217a;
        float[] fArr = this.f4227k;
        float[] fArr2 = polygonRegion.f4212b;
        float f5 = this.f4218b + f;
        float f6 = this.f4219c + f2;
        float regionWidth = this.f4220d / polygonRegion.f4214d.getRegionWidth();
        float regionHeight = this.f4221e / polygonRegion.f4214d.getRegionHeight();
        float cosDeg = MathUtils.cosDeg(this.f4224h);
        float sinDeg = MathUtils.sinDeg(this.f4224h);
        int length = fArr2.length;
        int i2 = 0;
        while (i < length) {
            float f7 = ((fArr2[i] * regionWidth) - f) * f3;
            float f8 = ((fArr2[i + 1] * regionHeight) - f2) * f4;
            fArr[i2] = ((cosDeg * f7) - (sinDeg * f8)) + f5;
            fArr[i2 + 1] = (f7 * sinDeg) + (f8 * cosDeg) + f6;
            i += 2;
            i2 += 5;
        }
        return fArr;
    }

    public void rotate(float f) {
        this.f4224h += f;
        this.f4228l = true;
    }

    public void scale(float f) {
        this.f4222f += f;
        this.f4223g += f;
        this.f4228l = true;
    }

    public void set(PolygonSprite polygonSprite) {
        if (polygonSprite != null) {
            setRegion(polygonSprite.f4217a);
            this.f4218b = polygonSprite.f4218b;
            this.f4219c = polygonSprite.f4219c;
            this.f4220d = polygonSprite.f4220d;
            this.f4221e = polygonSprite.f4221e;
            this.f4225i = polygonSprite.f4225i;
            this.f4226j = polygonSprite.f4226j;
            this.f4224h = polygonSprite.f4224h;
            this.f4222f = polygonSprite.f4222f;
            this.f4223g = polygonSprite.f4223g;
            this.f4230n.set(polygonSprite.f4230n);
            return;
        }
        throw new IllegalArgumentException("sprite cannot be null.");
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        this.f4218b = f;
        this.f4219c = f2;
        this.f4220d = f3;
        this.f4221e = f4;
        this.f4228l = true;
    }

    public void setOrigin(float f, float f2) {
        this.f4225i = f;
        this.f4226j = f2;
        this.f4228l = true;
    }

    public void setRegion(PolygonRegion polygonRegion) {
        this.f4217a = polygonRegion;
        float[] fArr = polygonRegion.f4212b;
        float[] fArr2 = polygonRegion.f4211a;
        int length = (fArr.length / 2) * 5;
        float[] fArr3 = this.f4227k;
        if (fArr3 == null || fArr3.length != length) {
            this.f4227k = new float[length];
        }
        float floatBits = this.f4230n.toFloatBits();
        float[] fArr4 = this.f4227k;
        int i = 0;
        for (int i2 = 2; i2 < length; i2 += 5) {
            fArr4[i2] = floatBits;
            fArr4[i2 + 1] = fArr2[i];
            fArr4[i2 + 2] = fArr2[i + 1];
            i += 2;
        }
        this.f4228l = true;
    }

    public void setRotation(float f) {
        this.f4224h = f;
        this.f4228l = true;
    }

    public void setSize(float f, float f2) {
        this.f4220d = f;
        this.f4221e = f2;
        this.f4228l = true;
    }

    public void translate(float f, float f2) {
        this.f4218b += f;
        this.f4219c += f2;
        if (this.f4228l) {
            return;
        }
        float[] fArr = this.f4227k;
        for (int i = 0; i < fArr.length; i += 5) {
            fArr[i] = fArr[i] + f;
            int i2 = i + 1;
            fArr[i2] = fArr[i2] + f2;
        }
    }

    public void translateX(float f) {
        this.f4218b += f;
        if (this.f4228l) {
            return;
        }
        float[] fArr = this.f4227k;
        for (int i = 0; i < fArr.length; i += 5) {
            fArr[i] = fArr[i] + f;
        }
    }

    public void translateY(float f) {
        this.f4219c += f;
        if (this.f4228l) {
            return;
        }
        float[] fArr = this.f4227k;
        for (int i = 1; i < fArr.length; i += 5) {
            fArr[i] = fArr[i] + f;
        }
    }

    public void draw(PolygonSpriteBatch polygonSpriteBatch, float f) {
        Color color = getColor();
        float f2 = color.f3889a;
        color.f3889a = f * f2;
        setColor(color);
        draw(polygonSpriteBatch);
        color.f3889a = f2;
        setColor(color);
    }

    public Rectangle getBoundingRectangle() {
        float[] vertices = getVertices();
        float f = vertices[0];
        float f2 = vertices[1];
        float f3 = f2;
        float f4 = f;
        for (int i = 5; i < vertices.length; i += 5) {
            float f5 = vertices[i];
            float f6 = vertices[i + 1];
            if (f > f5) {
                f = f5;
            }
            if (f4 < f5) {
                f4 = f5;
            }
            if (f2 > f6) {
                f2 = f6;
            }
            if (f3 < f6) {
                f3 = f6;
            }
        }
        Rectangle rectangle = this.f4229m;
        rectangle.f5523x = f;
        rectangle.f5524y = f2;
        rectangle.width = f4 - f;
        rectangle.height = f3 - f2;
        return rectangle;
    }

    public void setScale(float f, float f2) {
        this.f4222f = f;
        this.f4223g = f2;
        this.f4228l = true;
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f4230n.set(f, f2, f3, f4);
        float floatBits = this.f4230n.toFloatBits();
        float[] fArr = this.f4227k;
        for (int i = 2; i < fArr.length; i += 5) {
            fArr[i] = floatBits;
        }
    }

    public PolygonSprite(PolygonSprite polygonSprite) {
        set(polygonSprite);
    }
}
