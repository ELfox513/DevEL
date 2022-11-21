package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
/* loaded from: classes.dex */
public class TiledDrawable extends TextureRegionDrawable {

    /* renamed from: i */
    public final Color f6390i;

    /* renamed from: j */
    public float f6391j;

    public TiledDrawable() {
        this.f6390i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f6391j = 1.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable, com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        int i;
        float f5;
        float packedColor = batch.getPackedColor();
        batch.setColor(batch.getColor().mul(this.f6390i));
        TextureRegion region = getRegion();
        float regionWidth = region.getRegionWidth() * this.f6391j;
        float regionHeight = region.getRegionHeight() * this.f6391j;
        int i2 = (int) (f3 / regionWidth);
        int i3 = (int) (f4 / regionHeight);
        float f6 = f3 - (i2 * regionWidth);
        float f7 = f4 - (i3 * regionHeight);
        float f8 = f;
        float f9 = f2;
        int i4 = 0;
        while (i4 < i2) {
            float f10 = f2;
            for (int i5 = 0; i5 < i3; i5++) {
                batch.draw(region, f8, f10, regionWidth, regionHeight);
                f10 += regionHeight;
            }
            f8 += regionWidth;
            i4++;
            f9 = f10;
        }
        Texture texture = region.getTexture();
        float u = region.getU();
        float v2 = region.getV2();
        if (f6 > 0.0f) {
            float width = u + (f6 / (texture.getWidth() * this.f6391j));
            float v = region.getV();
            f5 = f2;
            int i6 = 0;
            while (i6 < i3) {
                batch.draw(texture, f8, f5, f6, regionHeight, u, v2, width, v);
                f5 += regionHeight;
                i6++;
                i2 = i2;
                i3 = i3;
            }
            i = i2;
            if (f7 > 0.0f) {
                batch.draw(texture, f8, f5, f6, f7, u, v2, width, v2 - (f7 / (texture.getHeight() * this.f6391j)));
            }
        } else {
            i = i2;
            f5 = f9;
        }
        if (f7 > 0.0f) {
            float u2 = region.getU2();
            float height = v2 - (f7 / (texture.getHeight() * this.f6391j));
            float f11 = f;
            for (int i7 = 0; i7 < i; i7++) {
                batch.draw(texture, f11, f5, regionWidth, f7, u, v2, u2, height);
                f11 += regionWidth;
            }
        }
        batch.setPackedColor(packedColor);
    }

    public Color getColor() {
        return this.f6390i;
    }

    public float getScale() {
        return this.f6391j;
    }

    public void setScale(float f) {
        this.f6391j = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable
    public TiledDrawable tint(Color color) {
        TiledDrawable tiledDrawable = new TiledDrawable(this);
        tiledDrawable.f6390i.set(color);
        tiledDrawable.setLeftWidth(getLeftWidth());
        tiledDrawable.setRightWidth(getRightWidth());
        tiledDrawable.setTopHeight(getTopHeight());
        tiledDrawable.setBottomHeight(getBottomHeight());
        return tiledDrawable;
    }

    public TiledDrawable(TextureRegion textureRegion) {
        super(textureRegion);
        this.f6390i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f6391j = 1.0f;
    }

    public TiledDrawable(TextureRegionDrawable textureRegionDrawable) {
        super(textureRegionDrawable);
        this.f6390i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f6391j = 1.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable, com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable
    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        throw new UnsupportedOperationException();
    }
}
