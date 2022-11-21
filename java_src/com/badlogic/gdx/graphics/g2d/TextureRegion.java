package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public class TextureRegion {

    /* renamed from: a */
    public Texture f4354a;

    /* renamed from: b */
    public float f4355b;

    /* renamed from: c */
    public float f4356c;

    /* renamed from: d */
    public float f4357d;

    /* renamed from: e */
    public float f4358e;

    /* renamed from: f */
    public int f4359f;

    /* renamed from: g */
    public int f4360g;

    public TextureRegion() {
    }

    public int getRegionHeight() {
        return this.f4360g;
    }

    public int getRegionWidth() {
        return this.f4359f;
    }

    public int getRegionX() {
        return Math.round(this.f4355b * this.f4354a.getWidth());
    }

    public int getRegionY() {
        return Math.round(this.f4356c * this.f4354a.getHeight());
    }

    public Texture getTexture() {
        return this.f4354a;
    }

    public float getU() {
        return this.f4355b;
    }

    public float getU2() {
        return this.f4357d;
    }

    public float getV() {
        return this.f4356c;
    }

    public float getV2() {
        return this.f4358e;
    }

    public boolean isFlipX() {
        return this.f4355b > this.f4357d;
    }

    public boolean isFlipY() {
        return this.f4356c > this.f4358e;
    }

    public void setRegion(Texture texture) {
        this.f4354a = texture;
        setRegion(0, 0, texture.getWidth(), texture.getHeight());
    }

    public void setRegionX(int i) {
        setU(i / this.f4354a.getWidth());
    }

    public void setRegionY(int i) {
        setV(i / this.f4354a.getHeight());
    }

    public void setTexture(Texture texture) {
        this.f4354a = texture;
    }

    public TextureRegion[][] split(int i, int i2) {
        int regionX = getRegionX();
        int regionY = getRegionY();
        int i3 = this.f4359f;
        int i4 = this.f4360g / i2;
        int i5 = i3 / i;
        TextureRegion[][] textureRegionArr = (TextureRegion[][]) Array.newInstance(TextureRegion.class, i4, i5);
        int i6 = regionY;
        int i7 = 0;
        while (i7 < i4) {
            int i8 = regionX;
            int i9 = 0;
            while (i9 < i5) {
                textureRegionArr[i7][i9] = new TextureRegion(this.f4354a, i8, i6, i, i2);
                i9++;
                i8 += i;
            }
            i7++;
            i6 += i2;
        }
        return textureRegionArr;
    }

    public TextureRegion(Texture texture) {
        if (texture != null) {
            this.f4354a = texture;
            setRegion(0, 0, texture.getWidth(), texture.getHeight());
            return;
        }
        throw new IllegalArgumentException("texture cannot be null.");
    }

    public void flip(boolean z, boolean z2) {
        if (z) {
            float f = this.f4355b;
            this.f4355b = this.f4357d;
            this.f4357d = f;
        }
        if (z2) {
            float f2 = this.f4356c;
            this.f4356c = this.f4358e;
            this.f4358e = f2;
        }
    }

    public void scroll(float f, float f2) {
        if (f != 0.0f) {
            float width = (this.f4357d - this.f4355b) * this.f4354a.getWidth();
            float f3 = (this.f4355b + f) % 1.0f;
            this.f4355b = f3;
            this.f4357d = f3 + (width / this.f4354a.getWidth());
        }
        if (f2 != 0.0f) {
            float height = (this.f4358e - this.f4356c) * this.f4354a.getHeight();
            float f4 = (this.f4356c + f2) % 1.0f;
            this.f4356c = f4;
            this.f4358e = f4 + (height / this.f4354a.getHeight());
        }
    }

    public void setU(float f) {
        this.f4355b = f;
        this.f4359f = Math.round(Math.abs(this.f4357d - f) * this.f4354a.getWidth());
    }

    public void setU2(float f) {
        this.f4357d = f;
        this.f4359f = Math.round(Math.abs(f - this.f4355b) * this.f4354a.getWidth());
    }

    public void setV(float f) {
        this.f4356c = f;
        this.f4360g = Math.round(Math.abs(this.f4358e - f) * this.f4354a.getHeight());
    }

    public void setV2(float f) {
        this.f4358e = f;
        this.f4360g = Math.round(Math.abs(f - this.f4356c) * this.f4354a.getHeight());
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        float width = 1.0f / this.f4354a.getWidth();
        float height = 1.0f / this.f4354a.getHeight();
        setRegion(i * width, i2 * height, (i + i3) * width, (i2 + i4) * height);
        this.f4359f = Math.abs(i3);
        this.f4360g = Math.abs(i4);
    }

    public void setRegionHeight(int i) {
        if (isFlipY()) {
            setV(this.f4358e + (i / this.f4354a.getHeight()));
        } else {
            setV2(this.f4356c + (i / this.f4354a.getHeight()));
        }
    }

    public void setRegionWidth(int i) {
        if (isFlipX()) {
            setU(this.f4357d + (i / this.f4354a.getWidth()));
        } else {
            setU2(this.f4355b + (i / this.f4354a.getWidth()));
        }
    }

    public TextureRegion(Texture texture, int i, int i2) {
        this.f4354a = texture;
        setRegion(0, 0, i, i2);
    }

    public void setRegion(float f, float f2, float f3, float f4) {
        int width = this.f4354a.getWidth();
        int height = this.f4354a.getHeight();
        float f5 = width;
        this.f4359f = Math.round(Math.abs(f3 - f) * f5);
        float f6 = height;
        int round = Math.round(Math.abs(f4 - f2) * f6);
        this.f4360g = round;
        if (this.f4359f == 1 && round == 1) {
            float f7 = 0.25f / f5;
            f += f7;
            f3 -= f7;
            float f8 = 0.25f / f6;
            f2 += f8;
            f4 -= f8;
        }
        this.f4355b = f;
        this.f4356c = f2;
        this.f4357d = f3;
        this.f4358e = f4;
    }

    public TextureRegion(Texture texture, int i, int i2, int i3, int i4) {
        this.f4354a = texture;
        setRegion(i, i2, i3, i4);
    }

    public static TextureRegion[][] split(Texture texture, int i, int i2) {
        return new TextureRegion(texture).split(i, i2);
    }

    public TextureRegion(Texture texture, float f, float f2, float f3, float f4) {
        this.f4354a = texture;
        setRegion(f, f2, f3, f4);
    }

    public TextureRegion(TextureRegion textureRegion) {
        setRegion(textureRegion);
    }

    public void setRegion(TextureRegion textureRegion) {
        this.f4354a = textureRegion.f4354a;
        setRegion(textureRegion.f4355b, textureRegion.f4356c, textureRegion.f4357d, textureRegion.f4358e);
    }

    public TextureRegion(TextureRegion textureRegion, int i, int i2, int i3, int i4) {
        setRegion(textureRegion, i, i2, i3, i4);
    }

    public void setRegion(TextureRegion textureRegion, int i, int i2, int i3, int i4) {
        this.f4354a = textureRegion.f4354a;
        setRegion(textureRegion.getRegionX() + i, textureRegion.getRegionY() + i2, i3, i4);
    }
}
