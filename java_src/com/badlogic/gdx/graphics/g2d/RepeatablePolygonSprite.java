package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.EarClippingTriangulator;
import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.Polygon;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class RepeatablePolygonSprite {

    /* renamed from: a */
    public TextureRegion f4253a;

    /* renamed from: f */
    public int f4258f;

    /* renamed from: g */
    public int f4259g;

    /* renamed from: h */
    public float f4260h;

    /* renamed from: i */
    public float f4261i;

    /* renamed from: b */
    public boolean f4254b = true;

    /* renamed from: c */
    public Array<float[]> f4255c = new Array<>();

    /* renamed from: d */
    public Array<float[]> f4256d = new Array<>();

    /* renamed from: e */
    public Array<short[]> f4257e = new Array<>();

    /* renamed from: x */
    public float f4264x = 0.0f;

    /* renamed from: y */
    public float f4265y = 0.0f;

    /* renamed from: j */
    public Color f4262j = Color.WHITE;

    /* renamed from: k */
    public Vector2 f4263k = new Vector2();

    /* renamed from: c */
    public final float[] m24187c(float[] fArr) {
        for (int i = 0; i < fArr.length; i += 2) {
            float f = fArr[i];
            float f2 = this.f4260h;
            float f3 = (f / f2) % 1.0f;
            int i2 = i + 1;
            float f4 = (fArr[i2] / this.f4261i) % 1.0f;
            if (f3 > 0.99f || f3 < 0.01f) {
                fArr[i] = f2 * Math.round(f / f2);
            }
            if (f4 > 0.99f || f4 < 0.01f) {
                float f5 = this.f4261i;
                fArr[i2] = f5 * Math.round(fArr[i2] / f5);
            }
        }
        return fArr;
    }

    public void setPolygon(TextureRegion textureRegion, float[] fArr) {
        setPolygon(textureRegion, fArr, -1.0f);
    }

    /* renamed from: a */
    public final void m24189a() {
        this.f4256d.clear();
        int i = 0;
        while (true) {
            Array<float[]> array = this.f4255c;
            if (i < array.size) {
                float[] fArr = array.get(i);
                if (fArr != null) {
                    float[] fArr2 = new float[(fArr.length * 5) / 2];
                    int i2 = this.f4259g;
                    int i3 = i / i2;
                    int i4 = i % i2;
                    int i5 = 0;
                    for (int i6 = 0; i6 < fArr.length; i6 += 2) {
                        int i7 = i5 + 1;
                        float f = fArr[i6];
                        Vector2 vector2 = this.f4263k;
                        fArr2[i5] = f + vector2.f5527x + this.f4264x;
                        int i8 = i7 + 1;
                        int i9 = i6 + 1;
                        fArr2[i7] = fArr[i9] + vector2.f5528y + this.f4265y;
                        int i10 = i8 + 1;
                        fArr2[i8] = this.f4262j.toFloatBits();
                        float f2 = fArr[i6];
                        float f3 = this.f4260h;
                        float f4 = (f2 % f3) / f3;
                        float f5 = fArr[i9];
                        float f6 = this.f4261i;
                        float f7 = (f5 % f6) / f6;
                        if (f2 == i3 * f3) {
                            f4 = 0.0f;
                        }
                        float f8 = (i3 + 1) * f3;
                        float f9 = 1.0f;
                        if (f2 == f8) {
                            f4 = 1.0f;
                        }
                        if (f5 == i4 * f6) {
                            f7 = 0.0f;
                        }
                        if (f5 != (i4 + 1) * f6) {
                            f9 = f7;
                        }
                        int i11 = i10 + 1;
                        fArr2[i10] = this.f4253a.getU() + ((this.f4253a.getU2() - this.f4253a.getU()) * f4);
                        i5 = i11 + 1;
                        fArr2[i11] = this.f4253a.getV() + ((this.f4253a.getV2() - this.f4253a.getV()) * f9);
                    }
                    this.f4256d.add(fArr2);
                }
                i++;
            } else {
                this.f4254b = false;
                return;
            }
        }
    }

    /* renamed from: b */
    public final float[] m24188b(float[] fArr) {
        this.f4263k.set(fArr[0], fArr[1]);
        for (int i = 0; i < fArr.length - 1; i += 2) {
            Vector2 vector2 = this.f4263k;
            float f = vector2.f5527x;
            float f2 = fArr[i];
            if (f > f2) {
                vector2.f5527x = f2;
            }
            float f3 = vector2.f5528y;
            float f4 = fArr[i + 1];
            if (f3 > f4) {
                vector2.f5528y = f4;
            }
        }
        for (int i2 = 0; i2 < fArr.length; i2 += 2) {
            float f5 = fArr[i2];
            Vector2 vector22 = this.f4263k;
            fArr[i2] = f5 - vector22.f5527x;
            int i3 = i2 + 1;
            fArr[i3] = fArr[i3] - vector22.f5528y;
        }
        return fArr;
    }

    public void draw(PolygonSpriteBatch polygonSpriteBatch) {
        if (this.f4254b) {
            m24189a();
        }
        for (int i = 0; i < this.f4256d.size; i++) {
            polygonSpriteBatch.draw(this.f4253a.getTexture(), this.f4256d.get(i), 0, this.f4256d.get(i).length, this.f4257e.get(i), 0, this.f4257e.get(i).length);
        }
    }

    public void setColor(Color color) {
        this.f4262j = color;
        this.f4254b = true;
    }

    public void setPolygon(TextureRegion textureRegion, float[] fArr, float f) {
        this.f4253a = textureRegion;
        Polygon polygon = new Polygon(m24188b(fArr));
        Polygon polygon2 = new Polygon();
        Polygon polygon3 = new Polygon();
        EarClippingTriangulator earClippingTriangulator = new EarClippingTriangulator();
        Rectangle boundingRectangle = polygon.getBoundingRectangle();
        float width = f == -1.0f ? boundingRectangle.getWidth() / textureRegion.getRegionWidth() : f;
        this.f4258f = (int) Math.ceil(width);
        float width2 = boundingRectangle.getWidth() / width;
        this.f4260h = width2;
        this.f4261i = (textureRegion.getRegionHeight() / textureRegion.getRegionWidth()) * width2;
        this.f4259g = (int) Math.ceil(boundingRectangle.getHeight() / this.f4261i);
        for (int i = 0; i < this.f4258f; i++) {
            int i2 = 0;
            while (i2 < this.f4259g) {
                float f2 = i;
                float f3 = this.f4260h;
                float f4 = i2;
                float f5 = this.f4261i;
                i2++;
                float f6 = i2;
                float f7 = i + 1;
                polygon2.setVertices(new float[]{f2 * f3, f4 * f5, f2 * f3, f6 * f5, f7 * f3, f6 * f5, f7 * f3, f4 * f5});
                Intersector.intersectPolygons(polygon, polygon2, polygon3);
                float[] vertices = polygon3.getVertices();
                if (vertices.length > 0) {
                    this.f4255c.add(m24187c(vertices));
                    this.f4257e.add(earClippingTriangulator.computeTriangles(vertices).toArray());
                } else {
                    this.f4255c.add(null);
                }
            }
        }
        m24189a();
    }

    public void setPosition(float f, float f2) {
        this.f4264x = f;
        this.f4265y = f2;
        this.f4254b = true;
    }
}
