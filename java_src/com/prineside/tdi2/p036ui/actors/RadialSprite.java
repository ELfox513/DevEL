package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.prineside.tdi2.Config;
/* renamed from: com.prineside.tdi2.ui.actors.RadialSprite */
/* loaded from: classes2.dex */
public class RadialSprite implements Drawable {

    /* renamed from: a */
    public Texture f12672a;

    /* renamed from: c */
    public float f12674c;

    /* renamed from: d */
    public float f12675d;

    /* renamed from: e */
    public float f12676e;

    /* renamed from: f */
    public float f12677f;

    /* renamed from: g */
    public float f12678g;

    /* renamed from: h */
    public float f12679h;

    /* renamed from: i */
    public float f12680i;

    /* renamed from: j */
    public float f12681j;

    /* renamed from: k */
    public float f12682k;

    /* renamed from: l */
    public float f12683l;

    /* renamed from: m */
    public float f12684m;

    /* renamed from: q */
    public float f12688q;

    /* renamed from: r */
    public float f12689r;

    /* renamed from: b */
    public final float[] f12673b = new float[60];

    /* renamed from: n */
    public boolean f12685n = true;

    /* renamed from: o */
    public int f12686o = 0;

    /* renamed from: p */
    public float f12687p = 270.0f;

    /* renamed from: s */
    public float f12690s = 1.0f;

    /* renamed from: t */
    public float f12691t = 1.0f;

    /* renamed from: u */
    public float f12692u = 0.0f;

    /* renamed from: v */
    public float f12693v = 0.0f;

    /* renamed from: w */
    public float f12694w = 0.0f;

    /* renamed from: x */
    public float f12695x = 0.0f;

    /* renamed from: y */
    public float f12696y = 0.0f;

    /* renamed from: z */
    public float f12697z = 0.0f;

    /* renamed from: a */
    public void m20680a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        if (!this.f12685n && this.f12674c == f && this.f12675d == f2 && this.f12676e == f5 && this.f12677f == f3 && this.f12678g == f4 && this.f12679h == f6) {
            float f10 = this.f12682k;
            if (f10 == f9 && this.f12680i == f8 && f10 == f9) {
                return;
            }
        }
        this.f12674c = f;
        this.f12675d = f2;
        this.f12677f = f3;
        this.f12678g = f4;
        this.f12676e = f5;
        this.f12679h = f6;
        this.f12681j = f7;
        this.f12680i = f8;
        this.f12682k = f9;
        float f11 = f3 * 0.5f;
        float f12 = f4 * 0.5f;
        float f13 = f3 + f;
        float f14 = f4 + f2;
        float f15 = f + f11;
        float f16 = f2 + f12;
        float cosDeg = MathUtils.cosDeg(this.f12687p + f5);
        float sinDeg = MathUtils.sinDeg(f5 + this.f12687p);
        float abs = cosDeg != 0.0f ? StrictMath.abs(f11 / cosDeg) : 1.0E8f;
        float abs2 = sinDeg != 0.0f ? StrictMath.abs(f12 / sinDeg) : 1.0E8f;
        float min = StrictMath.min(abs, abs2);
        float f17 = min * cosDeg;
        float f18 = min * sinDeg;
        m20678c(this.f12673b, 5, f15, f2);
        if (cosDeg >= 0.0f) {
            m20678c(this.f12673b, 15, f, f14);
            m20678c(this.f12673b, 0, f15, f14);
            m20678c(this.f12673b, 10, f, f2);
            m20678c(this.f12673b, 30, f15, f16);
            m20678c(this.f12673b, 35, f15, f14);
            if (abs < abs2) {
                m20678c(this.f12673b, 20, f13, f14);
                m20678c(this.f12673b, 25, f13, f16 + f18);
                this.f12686o = 2;
            } else if (sinDeg > 0.0f) {
                m20678c(this.f12673b, 25, f15 + f17, f14);
                m20678c(this.f12673b, 20, f15 + (f17 * 0.5f), f14);
                this.f12686o = 2;
            } else {
                m20678c(this.f12673b, 20, f13, f14);
                m20678c(this.f12673b, 25, f13, f2);
                m20678c(this.f12673b, 55, f15, f16);
                m20678c(this.f12673b, 40, f13, f2);
                m20678c(this.f12673b, 50, f15 + f17, f2);
                m20678c(this.f12673b, 45, f15 + (f17 * 0.5f), f2);
                this.f12686o = 3;
            }
        } else {
            m20678c(this.f12673b, 0, f15, f16);
            if (abs < abs2) {
                m20678c(this.f12673b, 10, f, f2);
                m20678c(this.f12673b, 15, f, f16 + f18);
                this.f12686o = 1;
            } else if (sinDeg < 0.0f) {
                m20678c(this.f12673b, 15, f15 + f17, f2);
                m20678c(this.f12673b, 10, f15 + (f17 * 0.5f), f2);
                this.f12686o = 1;
            } else {
                m20678c(this.f12673b, 15, f, f14);
                m20678c(this.f12673b, 10, f, f2);
                m20678c(this.f12673b, 25, f15, f16);
                m20678c(this.f12673b, 30, f, f14);
                m20678c(this.f12673b, 35, (0.5f * f17) + f15, f14);
                m20678c(this.f12673b, 20, f15 + f17, f14);
                this.f12686o = 2;
            }
        }
        this.f12685n = false;
    }

    /* renamed from: b */
    public final void m20679b(float f) {
        for (int i = 0; i < 12; i++) {
            this.f12673b[(i * 5) + 2] = f;
        }
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, float f5) {
        float f6;
        float f7 = f3;
        if (f7 < 0.0f) {
            this.f12690s = -1.0f;
            f7 = -f7;
        }
        float f8 = f7;
        if (f4 < 0.0f) {
            this.f12691t = -1.0f;
            f6 = -f4;
        } else {
            f6 = f4;
        }
        m20680a(f, f2, f8, f6, f5, this.f12679h, this.f12681j, this.f12680i, this.f12682k);
        m20679b(spriteBatch.getPackedColor());
        spriteBatch.draw(this.f12672a, this.f12673b, 0, this.f12686o * 20);
    }

    public float getAngle() {
        return this.f12676e;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getBottomHeight() {
        return this.f12695x;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getLeftWidth() {
        return this.f12692u;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getMinHeight() {
        return this.f12697z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getMinWidth() {
        return this.f12696y;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getRightWidth() {
        return this.f12693v;
    }

    public Texture getTexture() {
        return this.f12672a;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public float getTopHeight() {
        return this.f12694w;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setBottomHeight(float f) {
        this.f12695x = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setLeftWidth(float f) {
        this.f12692u = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setMinHeight(float f) {
        this.f12697z = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setMinWidth(float f) {
        this.f12696y = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setRightWidth(float f) {
        this.f12693v = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void setTopHeight(float f) {
        this.f12694w = f;
    }

    /* renamed from: c */
    public final void m20678c(float[] fArr, int i, float f, float f2) {
        m20677d(fArr, i, f, f2, this.f12679h + (this.f12683l * ((f - this.f12674c) / this.f12677f)), this.f12681j + (this.f12684m * (1.0f - ((f2 - this.f12675d) / this.f12678g))));
    }

    /* renamed from: d */
    public final void m20677d(float[] fArr, int i, float f, float f2, float f3, float f4) {
        float f5 = this.f12674c;
        float f6 = this.f12688q;
        fArr[i] = f5 + f6 + (((f - f5) - f6) * this.f12690s);
        float f7 = this.f12675d;
        float f8 = this.f12689r;
        fArr[i + 1] = f7 + f8 + (((f2 - f7) - f8) * this.f12691t);
        fArr[i + 3] = f3;
        fArr[i + 4] = f4;
    }

    public void setAngle(float f) {
        if (this.f12676e == f) {
            return;
        }
        this.f12676e = f;
        this.f12685n = true;
    }

    public void setOrigin(float f, float f2) {
        if (this.f12688q == f && this.f12689r == f2) {
            return;
        }
        this.f12688q = f;
        this.f12689r = f2;
        this.f12685n = true;
    }

    public void setScale(float f, float f2) {
        if (this.f12690s == f && this.f12691t == f2) {
            return;
        }
        this.f12690s = f;
        this.f12691t = f2;
        this.f12685n = true;
    }

    public RadialSprite(TextureRegion textureRegion) {
        this.f12672a = textureRegion.getTexture();
        this.f12679h = textureRegion.getU();
        this.f12681j = textureRegion.getV();
        this.f12680i = textureRegion.getU2();
        float v2 = textureRegion.getV2();
        this.f12682k = v2;
        this.f12683l = this.f12680i - this.f12679h;
        this.f12684m = v2 - this.f12681j;
        this.f12677f = textureRegion.getRegionWidth();
        this.f12678g = textureRegion.getRegionHeight();
        m20679b(Config.WHITE_COLOR_CACHED_FLOAT_BITS.toFloatBits());
    }

    public void setTextureRegion(TextureRegion textureRegion) {
        this.f12672a = textureRegion.getTexture();
        this.f12679h = textureRegion.getU();
        this.f12681j = textureRegion.getV();
        this.f12680i = textureRegion.getU2();
        this.f12682k = textureRegion.getV2();
        this.f12685n = true;
    }

    public void draw(SpriteBatch spriteBatch, float f, float f2, float f3) {
        draw(spriteBatch, f, f2, this.f12677f, this.f12678g, f3);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        draw((SpriteBatch) batch, f, f2, f3, f4, this.f12676e);
    }
}
