package com.prineside.tdi2.shapes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Shape;
/* loaded from: classes2.dex */
public class PieChart extends Shape {

    /* renamed from: a */
    public float[] f11357a;
    public float angleShiftRad;

    /* renamed from: b */
    public int f11358b;

    /* renamed from: d */
    public int f11359d;
    public float innerRadius;

    /* renamed from: k */
    public float f11360k;

    /* renamed from: p */
    public float f11361p;

    /* renamed from: q */
    public float f11362q;

    /* renamed from: r */
    public int f11363r;
    public float rotationDirection;

    /* renamed from: s */
    public boolean f11364s;

    /* renamed from: t */
    public Array<ChartEntryConfig> f11365t;

    /* renamed from: u */
    public final TextureRegion f11366u;

    /* renamed from: v */
    public float f11367v;

    /* renamed from: w */
    public float f11368w;

    /* renamed from: x */
    public boolean f11369x;

    /* renamed from: y */
    public static final Vector2 f11355y = new Vector2();

    /* renamed from: z */
    public static final Vector2 f11356z = new Vector2();

    /* renamed from: A */
    public static final Vector2 f11350A = new Vector2();

    /* renamed from: B */
    public static final Vector2 f11351B = new Vector2();

    /* renamed from: C */
    public static final Vector2 f11352C = new Vector2();

    /* renamed from: D */
    public static final Vector2 f11353D = new Vector2();

    /* renamed from: E */
    public static final Color f11354E = new Color();

    /* loaded from: classes2.dex */
    public static class PieChartFactory extends Shape.Factory<PieChart> {
        @Override // com.prineside.tdi2.Shape.Factory
        /* renamed from: b */
        public PieChart mo21056a() {
            return new PieChart();
        }

        @Override // com.prineside.tdi2.Shape.Factory
        public void setup() {
        }
    }

    public void free() {
        Game.f8589i.shapeManager.f10141F.PIE_CHART.free(this);
    }

    public float getX() {
        return this.f11360k;
    }

    public float getY() {
        return this.f11361p;
    }

    public void requestVerticesRebuild() {
        this.f11369x = false;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f11365t = null;
        this.f11363r = 0;
        this.f11369x = false;
        this.f11364s = false;
    }

    public void setup(float f, float f2, float f3, int i, Array<ChartEntryConfig> array) {
        if (i >= 3) {
            this.f11359d = i;
            this.f11360k = f;
            this.f11361p = f2;
            this.f11362q = f3;
            this.f11365t = array;
            this.f11369x = false;
            return;
        }
        throw new IllegalArgumentException("Min segment count is 3, " + i + " given");
    }

    /* loaded from: classes2.dex */
    public static class ChartEntryConfig {

        /* renamed from: a */
        public int f11370a;
        public Color color;
        public float segmentShift;
        public Object userObject;
        public float value;

        public ChartEntryConfig(Color color, float f, float f2) {
            Color color2 = new Color();
            this.color = color2;
            color2.set(color);
            this.value = f;
            this.segmentShift = f2;
        }
    }

    public PieChart() {
        this.f11357a = new float[0];
        this.innerRadius = 0.0f;
        this.angleShiftRad = 0.0f;
        this.rotationDirection = 1.0f;
        this.f11369x = false;
        ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        this.f11366u = blankWhiteTextureRegion;
        float u2 = blankWhiteTextureRegion.getU2() - blankWhiteTextureRegion.getU();
        float v2 = blankWhiteTextureRegion.getV2() - blankWhiteTextureRegion.getV();
        this.f11367v = blankWhiteTextureRegion.getU() + (u2 * 0.5f);
        this.f11368w = blankWhiteTextureRegion.getV() + (v2 * 0.5f);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x023c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21068a() {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.shapes.PieChart.m21068a():void");
    }

    @Override // com.prineside.tdi2.Shape, com.prineside.tdi2.ProjectileTrail
    public void draw(Batch batch) {
        Array<ChartEntryConfig> array = this.f11365t;
        if (array != null && array.size != 0) {
            if (!this.f11369x) {
                m21068a();
            }
            if (this.f11358b == 0) {
                return;
            }
            batch.draw(this.f11366u.getTexture(), this.f11357a, 0, this.f11358b);
        }
    }

    public void setFadeToOut(boolean z) {
        this.f11364s = z;
        this.f11369x = false;
    }

    public void setShadowSegments(int i) {
        this.f11363r = i;
        this.f11369x = false;
    }
}
