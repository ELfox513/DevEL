package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ProjectileTrail;
import com.prineside.tdi2.Shape;
import com.prineside.tdi2.enums.ShapeType;
/* loaded from: classes2.dex */
public class TrailMultiLine extends Shape implements ProjectileTrail {

    /* renamed from: A */
    public static int f11397A;

    /* renamed from: a */
    public final MultiLine f11398a;

    /* renamed from: b */
    public int f11399b;

    /* renamed from: d */
    public float f11400d;

    /* renamed from: k */
    public float f11401k;

    /* renamed from: p */
    public final Color f11402p;

    /* renamed from: q */
    public final Color f11403q;

    /* renamed from: r */
    public float f11404r;

    /* renamed from: s */
    public float f11405s;

    /* renamed from: t */
    public float[] f11406t;

    /* renamed from: u */
    public float[] f11407u;

    /* renamed from: v */
    public float[] f11408v;

    /* renamed from: w */
    public float f11409w;

    /* renamed from: x */
    public boolean f11410x;

    /* renamed from: y */
    public boolean f11411y;

    /* renamed from: z */
    public int f11412z;

    /* loaded from: classes2.dex */
    public static class TrailMultiLineFactory extends Shape.Factory<TrailMultiLine> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public TrailMultiLine mo21056a() {
            return new TrailMultiLine();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void free() {
        Game.f8589i.shapeManager.f10141F.TRAIL_MULTI_LINE.free(this);
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public int getUsageId() {
        return this.f11412z;
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public boolean isFinished() {
        return this.f11411y;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
    }

    public void setAlpha(float f) {
        this.f11404r = f;
    }

    public void setTexture(TextureRegion textureRegion) {
        setTexture(textureRegion, true, false);
    }

    public void setup(Color color, int i, float f, float f2) {
        if (i >= 2) {
            if (this.f11399b < i) {
                this.f11406t = new float[i * 2];
                this.f11407u = new float[i * 4];
                this.f11408v = new float[i];
            }
            this.f11401k = f2 / 2.0f;
            this.f11399b = i;
            this.f11400d = f;
            this.f11402p.set(color);
            this.f11403q.set(color);
            this.f11409w = (i - 2) * f;
            this.f11404r = 1.0f;
            this.f11410x = false;
            this.f11408v[0] = 0.0f;
            int i2 = f11397A;
            f11397A = i2 + 1;
            this.f11412z = i2;
            return;
        }
        throw new IllegalArgumentException("Trail can't be shorter than 2 nodes");
    }

    @Override // com.prineside.tdi2.ProjectileTrail
    public void update(float f) {
        this.f11411y = true;
        for (int i = 0; i < this.f11399b; i++) {
            float[] fArr = this.f11408v;
            float f2 = fArr[i] + f;
            fArr[i] = f2;
            if (f2 < this.f11409w) {
                this.f11411y = false;
            }
        }
        if (this.f11411y) {
            return;
        }
        for (int i2 = 0; i2 < this.f11399b; i2++) {
            int i3 = i2 * 4;
            int i4 = i2 * 2;
            float f3 = 1.0f - (this.f11408v[i2] / this.f11409w);
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            Color color = this.f11403q;
            color.f3889a = this.f11402p.f3889a * f3 * this.f11404r;
            float[] fArr2 = this.f11407u;
            float[] fArr3 = this.f11406t;
            fArr2[i3] = fArr3[i4];
            fArr2[i3 + 1] = fArr3[i4 + 1];
            fArr2[i3 + 2] = this.f11401k * f3;
            fArr2[i3 + 3] = color.toFloatBits();
        }
        this.f11398a.setNodes(this.f11407u);
        this.f11410x = true;
    }

    public TrailMultiLine() {
        this.f11399b = 0;
        this.f11402p = new Color();
        this.f11403q = new Color();
        this.f11404r = 1.0f;
        this.f11398a = (MultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE).obtain();
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        if (this.f11410x) {
            this.f11398a.draw(batch);
        }
    }

    public void setStartPoint(float f, float f2) {
        float[] fArr = this.f11407u;
        fArr[0] = f;
        fArr[1] = f2;
        for (int i = 0; i < this.f11399b; i++) {
            float[] fArr2 = this.f11406t;
            int i2 = i * 2;
            fArr2[i2] = f;
            fArr2[i2 + 1] = f2;
            this.f11408v[i] = this.f11409w;
        }
        this.f11408v[0] = 0.0f;
    }

    public void setTexture(TextureRegion textureRegion, boolean z, boolean z2) {
        this.f11398a.setTextureRegion(textureRegion, z, z2);
    }

    public void updateStartPos(float f, float f2, float f3) {
        if (this.f11411y) {
            return;
        }
        float f4 = this.f11405s + f;
        this.f11405s = f4;
        if (f4 > this.f11400d) {
            this.f11405s = 0.0f;
            for (int i = this.f11399b - 1; i > 0; i--) {
                float[] fArr = this.f11406t;
                int i2 = i * 2;
                int i3 = (i - 1) * 2;
                fArr[i2] = fArr[i3];
                fArr[i2 + 1] = fArr[i3 + 1];
            }
            float[] fArr2 = this.f11408v;
            System.arraycopy(fArr2, 0, fArr2, 1, fArr2.length - 1);
        }
        float[] fArr3 = this.f11406t;
        fArr3[0] = f2;
        fArr3[1] = f3;
        this.f11408v[0] = 0.0f;
        this.f11403q.set(this.f11402p);
    }
}
