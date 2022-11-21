package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.FloatArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ProjectileTrail;
import com.prineside.tdi2.Shape;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class BulletSmokeMultiLine extends Shape implements ProjectileTrail {

    /* renamed from: y */
    public static int f11255y;

    /* renamed from: a */
    public final MultiLine f11256a;

    /* renamed from: b */
    public int f11257b;

    /* renamed from: d */
    public float[] f11258d;

    /* renamed from: k */
    public float[] f11259k;
    public float maxAlpha;
    public float maxSegmentWidth;
    public float nodesDisperseTime;

    /* renamed from: p */
    public float[] f11260p;

    /* renamed from: q */
    public float[] f11261q;

    /* renamed from: r */
    public float[] f11262r;

    /* renamed from: s */
    public boolean f11263s;

    /* renamed from: t */
    public boolean f11264t;

    /* renamed from: u */
    public final Color f11265u;

    /* renamed from: v */
    public int f11266v;

    /* renamed from: w */
    public final FloatArray f11267w;

    /* renamed from: x */
    public final Vector2 f11268x;

    /* loaded from: classes2.dex */
    public static class BulletSmokeMultiLineFactory extends Shape.Factory<BulletSmokeMultiLine> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public BulletSmokeMultiLine mo21056a() {
            return new BulletSmokeMultiLine();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void free() {
        Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.free(this);
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public int getUsageId() {
        return this.f11266v;
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public boolean isFinished() {
        return this.f11264t;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11263s = false;
        this.nodesDisperseTime = 3.0f;
        this.maxSegmentWidth = 96.0f;
        this.maxAlpha = 0.14f;
    }

    public void setColor(Color color) {
        this.f11265u.set(color);
    }

    public void setTexture(TextureRegion textureRegion, boolean z, boolean z2) {
        this.f11256a.setTextureRegion(textureRegion, z, z2);
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void update(float f) {
        this.f11264t = true;
        int i = 0;
        for (int i2 = 0; i2 < this.f11257b; i2++) {
            float[] fArr = this.f11260p;
            float f2 = fArr[i2] + f;
            fArr[i2] = f2;
            if (f2 - this.f11259k[i2] < this.nodesDisperseTime) {
                this.f11264t = false;
            }
        }
        if (this.f11264t) {
            return;
        }
        while (true) {
            float f3 = 0.0f;
            if (i < this.f11257b) {
                float f4 = (this.f11260p[i] - this.f11259k[i]) / this.nodesDisperseTime;
                if (f4 > 0.0f) {
                    if (f4 >= 1.0f) {
                        this.f11265u.f3889a = 0.0f;
                        f3 = 1.0f;
                    } else {
                        this.f11265u.f3889a = (1.0f - f4) * this.maxAlpha;
                        f3 = Interpolation.pow2.apply(f4);
                        float[] fArr2 = this.f11258d;
                        int i3 = i * 4;
                        fArr2[i3] = fArr2[i3] + (this.f11261q[i] * f);
                        int i4 = i3 + 1;
                        fArr2[i4] = fArr2[i4] + (this.f11262r[i] * f);
                    }
                } else {
                    this.f11265u.f3889a = 0.0f;
                }
                int i5 = i * 4;
                this.f11258d[i5 + 2] = (Interpolation.pow2Out.apply(f3) + 0.1f) * this.maxSegmentWidth;
                this.f11258d[i5 + 3] = this.f11265u.toFloatBits();
                i++;
            } else {
                Color color = this.f11265u;
                color.f3889a = 0.0f;
                this.f11258d[3] = color.toFloatBits();
                float[] fArr3 = this.f11258d;
                fArr3[((this.f11257b - 1) * 4) + 3] = fArr3[3];
                this.f11256a.setNodes(fArr3);
                this.f11263s = true;
                return;
            }
        }
    }

    public BulletSmokeMultiLine() {
        this.f11257b = 0;
        this.f11265u = new Color(-1);
        this.f11267w = new FloatArray();
        this.f11268x = new Vector2();
        this.f11256a = (MultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE).obtain();
        reset();
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (!this.f11263s) {
            return;
        }
        this.f11256a.draw(batch);
    }

    public void setup(float f, float f2, float f3, float f4) {
        float distanceBetweenPoints = PMath.getDistanceBetweenPoints(f, f2, f3, f4);
        int i = (int) (distanceBetweenPoints / 96.0f);
        if (i < 3) {
            i = 3;
        }
        if (this.f11257b < i) {
            this.f11258d = new float[i * 4];
            this.f11259k = new float[i];
            this.f11260p = new float[i];
            this.f11261q = new float[i];
            this.f11262r = new float[i];
        }
        this.f11257b = i;
        this.f11267w.clear();
        this.f11267w.add(0.0f);
        float f5 = 0.0f;
        for (int i2 = 1; i2 < i; i2++) {
            float f6 = (FastRandom.getFloat() * 64.0f) + 64.0f;
            if (i2 == 1 || i2 == i - 1) {
                f6 *= 0.1f;
            }
            f5 += f6;
            this.f11267w.add(f6);
        }
        float f7 = distanceBetweenPoints / f5;
        this.f11268x.set(f3 - f, f4 - f2);
        this.f11268x.nor();
        float f8 = 0.0f;
        for (int i3 = 0; i3 < this.f11257b; i3++) {
            float[] fArr = this.f11258d;
            int i4 = i3 * 4;
            Vector2 vector2 = this.f11268x;
            f8 += this.f11267w.get(i3) * f7;
            fArr[i4] = (vector2.f5527x * f8) + f;
            fArr[i4 + 1] = (vector2.f5528y * f8) + f2;
        }
        float f9 = 0.0f;
        for (int i5 = 0; i5 < this.f11257b; i5++) {
            this.f11260p[i5] = 0.0f;
            this.f11259k[i5] = f9;
            f9 += 0.017f;
        }
        for (int i6 = 0; i6 < this.f11257b; i6++) {
            this.f11261q[i6] = (FastRandom.getFloat() - 0.5f) * 20.0f;
            this.f11262r[i6] = (FastRandom.getFloat() - 0.5f) * 20.0f;
        }
        int i7 = f11255y;
        f11255y = i7 + 1;
        this.f11266v = i7;
    }
}
