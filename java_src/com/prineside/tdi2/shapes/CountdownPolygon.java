package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class CountdownPolygon extends Shape {

    /* renamed from: t */
    public static final Vector2 f11309t = new Vector2();

    /* renamed from: u */
    public static final Vector2 f11310u = new Vector2();

    /* renamed from: a */
    public float[] f11311a;

    /* renamed from: b */
    public float[] f11312b;

    /* renamed from: d */
    public int f11313d;

    /* renamed from: k */
    public float f11314k;

    /* renamed from: p */
    public float f11315p;

    /* renamed from: q */
    public final TextureRegion f11316q;

    /* renamed from: r */
    public float f11317r;

    /* renamed from: s */
    public float f11318s;

    /* loaded from: classes2.dex */
    public static class CountdownPolygonFactory extends Shape.Factory<CountdownPolygon> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public CountdownPolygon mo21056a() {
            return new CountdownPolygon();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        batch.draw(this.f11316q.getTexture(), this.f11311a, 0, this.f11313d * 20);
    }

    public void free() {
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    public void setup(float[] fArr) {
        if (fArr.length % 2 != 1) {
            if (fArr.length >= 6) {
                float f = Float.MIN_VALUE;
                float f2 = Float.MIN_VALUE;
                float f3 = Float.MAX_VALUE;
                float f4 = Float.MAX_VALUE;
                for (int i = 0; i < 4; i++) {
                    int i2 = i * 2;
                    float f5 = fArr[i2];
                    float f6 = fArr[i2 + 1];
                    if (f5 < f3) {
                        f3 = f5;
                    }
                    if (f6 < f4) {
                        f4 = f6;
                    }
                    if (f5 > f) {
                        f = f5;
                    }
                    if (f6 > f2) {
                        f2 = f6;
                    }
                }
                this.f11314k = f3 + ((f - f3) / 2.0f);
                this.f11315p = f4 + ((f2 - f4) / 2.0f);
                int length = fArr.length / 2;
                int i3 = ((length + 1) / 2) * 20;
                if (this.f11311a.length < i3) {
                    this.f11311a = new float[i3];
                    this.f11312b = new float[length];
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("points min length is 6");
        }
        throw new IllegalArgumentException("points must be %2 == 0");
    }

    public CountdownPolygon() {
        this.f11311a = new float[0];
        this.f11312b = new float[0];
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        this.f11316q = blankWhiteTextureRegion;
        float u2 = blankWhiteTextureRegion.getU2() - blankWhiteTextureRegion.getU();
        float v2 = blankWhiteTextureRegion.getV2() - blankWhiteTextureRegion.getV();
        this.f11317r = blankWhiteTextureRegion.getU() + (u2 * 0.5f);
        this.f11318s = blankWhiteTextureRegion.getV() + (v2 * 0.5f);
    }
}
