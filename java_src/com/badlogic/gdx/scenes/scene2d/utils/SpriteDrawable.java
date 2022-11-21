package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
/* loaded from: classes.dex */
public class SpriteDrawable extends BaseDrawable implements TransformDrawable {

    /* renamed from: h */
    public Sprite f6388h;

    public SpriteDrawable() {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        Color color = this.f6388h.getColor();
        float floatBits = color.toFloatBits();
        this.f6388h.setColor(color.mul(batch.getColor()));
        this.f6388h.setRotation(0.0f);
        this.f6388h.setScale(1.0f, 1.0f);
        this.f6388h.setBounds(f, f2, f3, f4);
        this.f6388h.draw(batch);
        this.f6388h.setPackedColor(floatBits);
    }

    public Sprite getSprite() {
        return this.f6388h;
    }

    public SpriteDrawable(Sprite sprite) {
        setSprite(sprite);
    }

    public void setSprite(Sprite sprite) {
        this.f6388h = sprite;
        setMinWidth(sprite.getWidth());
        setMinHeight(sprite.getHeight());
    }

    public SpriteDrawable tint(Color color) {
        Sprite sprite;
        Sprite sprite2 = this.f6388h;
        if (sprite2 instanceof TextureAtlas.AtlasSprite) {
            sprite = new TextureAtlas.AtlasSprite((TextureAtlas.AtlasSprite) sprite2);
        } else {
            sprite = new Sprite(sprite2);
        }
        sprite.setColor(color);
        sprite.setSize(getMinWidth(), getMinHeight());
        SpriteDrawable spriteDrawable = new SpriteDrawable(sprite);
        spriteDrawable.setLeftWidth(getLeftWidth());
        spriteDrawable.setRightWidth(getRightWidth());
        spriteDrawable.setTopHeight(getTopHeight());
        spriteDrawable.setBottomHeight(getBottomHeight());
        return spriteDrawable;
    }

    public SpriteDrawable(SpriteDrawable spriteDrawable) {
        super(spriteDrawable);
        setSprite(spriteDrawable.f6388h);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable
    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        Color color = this.f6388h.getColor();
        float floatBits = color.toFloatBits();
        this.f6388h.setColor(color.mul(batch.getColor()));
        this.f6388h.setOrigin(f3, f4);
        this.f6388h.setRotation(f9);
        this.f6388h.setScale(f7, f8);
        this.f6388h.setBounds(f, f2, f5, f6);
        this.f6388h.draw(batch);
        this.f6388h.setPackedColor(floatBits);
    }
}
