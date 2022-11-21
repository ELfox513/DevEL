package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class Circle extends Shape {

    /* renamed from: a */
    public float[] f11298a;

    /* renamed from: b */
    public int f11299b;

    /* renamed from: d */
    public float f11300d;

    /* renamed from: k */
    public float f11301k;

    /* renamed from: p */
    public float f11302p;

    /* renamed from: q */
    public float f11303q;

    /* renamed from: r */
    public float f11304r;

    /* renamed from: s */
    public float f11305s;

    /* renamed from: t */
    public final TextureRegion f11306t;

    /* renamed from: u */
    public final float f11307u;

    /* renamed from: v */
    public final float f11308v;

    /* renamed from: w */
    public static final Vector2 f11294w = new Vector2();

    /* renamed from: x */
    public static final Vector2 f11295x = new Vector2();

    /* renamed from: y */
    public static final Vector2 f11296y = new Vector2();

    /* renamed from: z */
    public static final Vector2 f11297z = new Vector2();

    /* renamed from: A */
    public static final Vector2 f11293A = new Vector2();

    /* loaded from: classes2.dex */
    public static class CircleFactory extends Shape.Factory<Circle> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public Circle mo21056a() {
            return new Circle();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        batch.draw(this.f11306t.getTexture(), this.f11298a, 0, this.f11299b * 20);
    }

    public void free() {
        Game.f8589i.shapeManager.f10141F.CIRCLE.free(this);
    }

    public float getInnerColor() {
        return this.f11304r;
    }

    public float getOuterColor() {
        return this.f11305s;
    }

    public float getX() {
        return this.f11300d;
    }

    public float getY() {
        return this.f11301k;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    public void setColor(float f, float f2) {
        for (int i = 0; i < this.f11299b; i++) {
            int i2 = i * 20;
            float[] fArr = this.f11298a;
            fArr[i2 + 2] = f;
            fArr[i2 + 7] = f;
            fArr[i2 + 12] = f2;
            fArr[i2 + 17] = f2;
        }
        this.f11304r = f;
        this.f11305s = f2;
    }

    public void setup(float f, float f2, float f3, float f4, int i, float f5, float f6) {
        if (i >= 3) {
            m21081a(i);
            this.f11299b = i;
            this.f11300d = f;
            this.f11301k = f2;
            this.f11302p = f3;
            this.f11303q = f4;
            this.f11304r = f5;
            this.f11305s = f6;
            m21080b();
            return;
        }
        throw new IllegalArgumentException("Min segment count is 3, " + i + " given");
    }

    public Circle() {
        this.f11298a = new float[0];
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        this.f11306t = blankWhiteTextureRegion;
        float u2 = blankWhiteTextureRegion.getU2() - blankWhiteTextureRegion.getU();
        float v2 = blankWhiteTextureRegion.getV2() - blankWhiteTextureRegion.getV();
        this.f11307u = blankWhiteTextureRegion.getU() + (u2 * 0.5f);
        this.f11308v = blankWhiteTextureRegion.getV() + (v2 * 0.5f);
    }

    /* renamed from: a */
    public final void m21081a(int i) {
        int i2 = i * 20;
        if (this.f11298a.length < i2) {
            float[] fArr = new float[MathUtils.nextPowerOfTwo(i2)];
            float[] fArr2 = this.f11298a;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            this.f11298a = fArr;
        }
    }

    /* renamed from: b */
    public final void m21080b() {
        float f = 6.2831855f / this.f11299b;
        for (int i = 0; i < this.f11299b; i++) {
            Vector2 vector2 = f11293A;
            vector2.set(1.0f, 0.0f).rotateRad(i * f);
            Vector2 vector22 = f11294w;
            vector22.set(vector2).scl(this.f11302p).add(this.f11300d, this.f11301k);
            Vector2 vector23 = f11296y;
            vector23.set(vector2).scl(this.f11303q).add(this.f11300d, this.f11301k);
            vector2.rotateRad(f);
            Vector2 vector24 = f11295x;
            vector24.set(vector2).scl(this.f11302p).add(this.f11300d, this.f11301k);
            Vector2 vector25 = f11297z;
            vector25.set(vector2).scl(this.f11303q).add(this.f11300d, this.f11301k);
            int i2 = i * 20;
            float[] fArr = this.f11298a;
            fArr[i2] = vector22.f5527x;
            fArr[i2 + 1] = vector22.f5528y;
            float f2 = this.f11304r;
            fArr[i2 + 2] = f2;
            float f3 = this.f11307u;
            fArr[i2 + 3] = f3;
            float f4 = this.f11308v;
            fArr[i2 + 4] = f4;
            fArr[i2 + 5] = vector24.f5527x;
            fArr[i2 + 6] = vector24.f5528y;
            fArr[i2 + 7] = f2;
            fArr[i2 + 8] = f3;
            fArr[i2 + 9] = f4;
            fArr[i2 + 10] = vector25.f5527x;
            fArr[i2 + 11] = vector25.f5528y;
            float f5 = this.f11305s;
            fArr[i2 + 12] = f5;
            fArr[i2 + 13] = f3;
            fArr[i2 + 14] = f4;
            fArr[i2 + 15] = vector23.f5527x;
            fArr[i2 + 16] = vector23.f5528y;
            fArr[i2 + 17] = f5;
            fArr[i2 + 18] = f3;
            fArr[i2 + 19] = f4;
        }
    }

    public void setPosition(float f, float f2) {
        float f3 = f - this.f11300d;
        float f4 = f2 - this.f11301k;
        for (int i = 0; i < this.f11299b; i++) {
            int i2 = i * 20;
            float[] fArr = this.f11298a;
            fArr[i2] = fArr[i2] + f3;
            int i3 = i2 + 1;
            fArr[i3] = fArr[i3] + f4;
            int i4 = i2 + 5;
            fArr[i4] = fArr[i4] + f3;
            int i5 = i2 + 6;
            fArr[i5] = fArr[i5] + f4;
            int i6 = i2 + 10;
            fArr[i6] = fArr[i6] + f3;
            int i7 = i2 + 11;
            fArr[i7] = fArr[i7] + f4;
            int i8 = i2 + 15;
            fArr[i8] = fArr[i8] + f3;
            int i9 = i2 + 16;
            fArr[i9] = fArr[i9] + f4;
        }
        this.f11300d = f;
        this.f11301k = f2;
    }

    public void setPositionAndColor(float f, float f2, float f3, float f4) {
        float f5 = f - this.f11300d;
        float f6 = f2 - this.f11301k;
        for (int i = 0; i < this.f11299b; i++) {
            int i2 = i * 20;
            float[] fArr = this.f11298a;
            fArr[i2] = fArr[i2] + f5;
            int i3 = i2 + 1;
            fArr[i3] = fArr[i3] + f6;
            fArr[i2 + 2] = f3;
            int i4 = i2 + 5;
            fArr[i4] = fArr[i4] + f5;
            int i5 = i2 + 6;
            fArr[i5] = fArr[i5] + f6;
            fArr[i2 + 7] = f3;
            int i6 = i2 + 10;
            fArr[i6] = fArr[i6] + f5;
            int i7 = i2 + 11;
            fArr[i7] = fArr[i7] + f6;
            fArr[i2 + 12] = f4;
            int i8 = i2 + 15;
            fArr[i8] = fArr[i8] + f5;
            int i9 = i2 + 16;
            fArr[i9] = fArr[i9] + f6;
            fArr[i2 + 17] = f4;
        }
        this.f11300d = f;
        this.f11301k = f2;
        this.f11304r = f3;
        this.f11305s = f4;
    }
}
