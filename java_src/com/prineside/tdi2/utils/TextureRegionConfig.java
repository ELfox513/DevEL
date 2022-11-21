package com.prineside.tdi2.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
/* loaded from: classes2.dex */
public class TextureRegionConfig {

    /* renamed from: b */
    public static final Color f15153b = new Color();

    /* renamed from: c */
    public static final Color f15154c = new Color();
    @NAGS

    /* renamed from: a */
    public TextureRegionDrawable f15155a;
    public Color color;
    public float height;
    public float originX;
    public float originY;
    public TextureRegion textureRegion;
    public float width;

    /* renamed from: x */
    public float f15156x;

    /* renamed from: y */
    public float f15157y;

    public TextureRegionConfig(TextureRegionConfig textureRegionConfig) {
        Color cpy = Color.WHITE.cpy();
        this.color = cpy;
        this.textureRegion = textureRegionConfig.textureRegion;
        this.f15156x = textureRegionConfig.f15156x;
        this.f15157y = textureRegionConfig.f15157y;
        this.width = textureRegionConfig.width;
        this.height = textureRegionConfig.height;
        this.originX = textureRegionConfig.originX;
        this.originY = textureRegionConfig.originY;
        cpy.set(textureRegionConfig.color);
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, float f5) {
        Color color = f15154c;
        color.set(spriteBatch.getColor());
        Color color2 = f15153b;
        color2.set(spriteBatch.getColor());
        color2.mul(this.color);
        spriteBatch.setColor(color2);
        if (f5 == 0.0f && f4 == 1.0f) {
            spriteBatch.draw(this.textureRegion, f + (this.f15156x * f3), f2 + (this.f15157y * f3), this.width * f3, this.height * f3);
        } else {
            spriteBatch.draw(this.textureRegion, f + (this.f15156x * f3), f2 + (this.f15157y * f3), this.originX * f3, this.originY * f3, this.width * f3, this.height * f3, f4, f4, f5);
        }
        spriteBatch.setColor(color);
    }

    public void drawCache(SpriteCache spriteCache, float f, float f2, float f3) {
        spriteCache.add(this.textureRegion, f + (this.f15156x * f3), f2 + (this.f15157y * f3), this.width * f3, this.height * f3);
    }

    public static void drawCache(Array<TextureRegionConfig> array, SpriteCache spriteCache, float f, float f2, float f3) {
        for (int i = 0; i < array.size; i++) {
            array.items[i].drawCache(spriteCache, f, f2, f3);
        }
    }

    public static TextureRegionConfig fromJson(JsonValue jsonValue) {
        String string = jsonValue.getString("alias");
        float f = jsonValue.getFloat("x", 0.0f);
        float f2 = jsonValue.getFloat("y", 0.0f);
        float f3 = jsonValue.getFloat("w", 1.0f);
        float f4 = jsonValue.getFloat("h", 1.0f);
        float f5 = jsonValue.getFloat("ox", 0.5f);
        float f6 = jsonValue.getFloat("oy", 0.5f);
        float f7 = jsonValue.getFloat("rs", 0.0f);
        if (f7 != 0.0f) {
            float f8 = 1.0f / f7;
            f *= f8;
            f2 *= f8;
            f3 *= f8;
            f4 *= f8;
            f5 *= f8;
            f6 *= f8;
        }
        String string2 = jsonValue.getString("c", null);
        Color color = Color.WHITE;
        if (string2 != null) {
            color = Color.valueOf(string2);
        }
        TextureRegionConfig textureRegionConfig = new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion(string));
        textureRegionConfig.color.set(color);
        textureRegionConfig.f15156x = f;
        textureRegionConfig.f15157y = f2;
        textureRegionConfig.originX = f5;
        textureRegionConfig.originY = f6;
        textureRegionConfig.width = f3;
        textureRegionConfig.height = f4;
        return textureRegionConfig;
    }

    public Image createImage(float f, float f2, float f3) {
        if (this.f15155a == null) {
            this.f15155a = new TextureRegionDrawable(this.textureRegion);
        }
        Image image = new Image(this.f15155a);
        image.setPosition(f + (this.f15156x * f3), f2 + (this.f15157y * f3));
        image.setSize(this.width * f3, this.height * f3);
        image.setColor(this.color);
        return image;
    }

    public Sprite createSprite(float f) {
        Sprite sprite = new Sprite(this.textureRegion);
        sprite.setSize(this.width * f, f * this.height);
        return sprite;
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3) {
        drawBatch(spriteBatch, f, f2, f3, 1.0f, 0.0f);
    }

    public static void drawBatch(Array<TextureRegionConfig> array, SpriteBatch spriteBatch, float f, float f2, float f3) {
        for (int i = 0; i < array.size; i++) {
            array.items[i].drawBatch(spriteBatch, f, f2, f3);
        }
    }

    public TextureRegionConfig(TextureRegion textureRegion) {
        this.color = Color.WHITE.cpy();
        this.textureRegion = textureRegion;
        this.f15156x = 0.0f;
        this.f15157y = 0.0f;
        this.width = 1.0f;
        this.height = 1.0f;
        this.originX = 0.5f;
        this.originY = 0.5f;
    }

    public static void drawBatch(Array<TextureRegionConfig> array, SpriteBatch spriteBatch, float f, float f2, float f3, float f4, float f5) {
        for (int i = 0; i < array.size; i++) {
            array.items[i].drawBatch(spriteBatch, f, f2, f3, f4, f5);
        }
    }

    public TextureRegionConfig(TextureRegion textureRegion, float f, float f2, float f3) {
        this.color = Color.WHITE.cpy();
        this.textureRegion = textureRegion;
        this.f15156x = f / f3;
        this.f15157y = f2 / f3;
        this.width = textureRegion.getRegionWidth() / f3;
        float regionHeight = textureRegion.getRegionHeight() / f3;
        this.height = regionHeight;
        this.originX = this.width * 0.5f;
        this.originY = regionHeight * 0.5f;
    }

    public TextureRegionConfig(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6) {
        this.color = Color.WHITE.cpy();
        this.textureRegion = textureRegion;
        this.f15156x = f;
        this.f15157y = f2;
        this.width = f5;
        this.height = f6;
        this.originX = f3;
        this.originY = f4;
    }

    public TextureRegionConfig(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        this.color = Color.WHITE.cpy();
        this.textureRegion = textureRegion;
        float f8 = 1.0f / f7;
        this.f15156x = f * f8;
        this.f15157y = f2 * f8;
        this.width = f5 * f8;
        this.height = f6 * f8;
        this.originX = f3 * f8;
        this.originY = f4 * f8;
    }

    public TextureRegionConfig(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, Color color) {
        this(textureRegion, f, f2, f3, f4, f5, f6);
        this.color.set(color);
    }

    public TextureRegionConfig(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, Color color) {
        this(textureRegion, f, f2, f3, f4, f5, f6, f7);
        this.color.set(color);
    }
}
