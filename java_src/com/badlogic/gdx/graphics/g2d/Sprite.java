package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
/* loaded from: classes.dex */
public class Sprite extends TextureRegion {

    /* renamed from: h */
    public final float[] f4266h;

    /* renamed from: i */
    public final Color f4267i;

    /* renamed from: j */
    public float f4268j;

    /* renamed from: k */
    public float f4269k;

    /* renamed from: l */
    public float f4270l;

    /* renamed from: m */
    public float f4271m;

    /* renamed from: n */
    public float f4272n;

    /* renamed from: o */
    public float f4273o;

    /* renamed from: p */
    public float f4274p;

    /* renamed from: q */
    public float f4275q;

    /* renamed from: r */
    public float f4276r;

    /* renamed from: s */
    public boolean f4277s;

    /* renamed from: t */
    public Rectangle f4278t;

    public Sprite() {
        this.f4266h = new float[20];
        this.f4267i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4275q = 1.0f;
        this.f4276r = 1.0f;
        this.f4277s = true;
        setColor(1.0f, 1.0f, 1.0f, 1.0f);
    }

    public void draw(Batch batch) {
        batch.draw(this.f4354a, getVertices(), 0, 20);
    }

    public Color getColor() {
        return this.f4267i;
    }

    public float getHeight() {
        return this.f4271m;
    }

    public float getOriginX() {
        return this.f4272n;
    }

    public float getOriginY() {
        return this.f4273o;
    }

    public float getRotation() {
        return this.f4274p;
    }

    public float getScaleX() {
        return this.f4275q;
    }

    public float getScaleY() {
        return this.f4276r;
    }

    public float getWidth() {
        return this.f4270l;
    }

    public float getX() {
        return this.f4268j;
    }

    public float getY() {
        return this.f4269k;
    }

    public void rotate(float f) {
        if (f == 0.0f) {
            return;
        }
        this.f4274p += f;
        this.f4277s = true;
    }

    public void setCenter(float f, float f2) {
        setPosition(f - (this.f4270l / 2.0f), f2 - (this.f4271m / 2.0f));
    }

    public void setCenterX(float f) {
        setX(f - (this.f4270l / 2.0f));
    }

    public void setCenterY(float f) {
        setY(f - (this.f4271m / 2.0f));
    }

    public void setColor(Color color) {
        this.f4267i.set(color);
        float floatBits = color.toFloatBits();
        float[] fArr = this.f4266h;
        fArr[2] = floatBits;
        fArr[7] = floatBits;
        fArr[12] = floatBits;
        fArr[17] = floatBits;
    }

    public void setOriginBasedPosition(float f, float f2) {
        setPosition(f - this.f4272n, f2 - this.f4273o);
    }

    public void setScale(float f) {
        this.f4275q = f;
        this.f4276r = f;
        this.f4277s = true;
    }

    public void draw(Batch batch, float f) {
        float f2 = getColor().f3889a;
        setAlpha(f * f2);
        draw(batch);
        setAlpha(f2);
    }

    public float[] getVertices() {
        if (this.f4277s) {
            this.f4277s = false;
            float[] fArr = this.f4266h;
            float f = -this.f4272n;
            float f2 = -this.f4273o;
            float f3 = this.f4270l + f;
            float f4 = this.f4271m + f2;
            float f5 = this.f4268j - f;
            float f6 = this.f4269k - f2;
            float f7 = this.f4275q;
            if (f7 != 1.0f || this.f4276r != 1.0f) {
                f *= f7;
                float f8 = this.f4276r;
                f2 *= f8;
                f3 *= f7;
                f4 *= f8;
            }
            float f9 = this.f4274p;
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(this.f4274p);
                float f10 = f * cosDeg;
                float f11 = f * sinDeg;
                float f12 = f2 * cosDeg;
                float f13 = f3 * cosDeg;
                float f14 = cosDeg * f4;
                float f15 = f4 * sinDeg;
                float f16 = (f10 - (f2 * sinDeg)) + f5;
                float f17 = f12 + f11 + f6;
                fArr[0] = f16;
                fArr[1] = f17;
                float f18 = (f10 - f15) + f5;
                float f19 = f11 + f14 + f6;
                fArr[5] = f18;
                fArr[6] = f19;
                float f20 = (f13 - f15) + f5;
                float f21 = f14 + (f3 * sinDeg) + f6;
                fArr[10] = f20;
                fArr[11] = f21;
                fArr[15] = f16 + (f20 - f18);
                fArr[16] = f21 - (f19 - f17);
            } else {
                float f22 = f + f5;
                float f23 = f2 + f6;
                float f24 = f3 + f5;
                float f25 = f4 + f6;
                fArr[0] = f22;
                fArr[1] = f23;
                fArr[5] = f22;
                fArr[6] = f25;
                fArr[10] = f24;
                fArr[11] = f25;
                fArr[15] = f24;
                fArr[16] = f23;
            }
        }
        return this.f4266h;
    }

    public void rotate90(boolean z) {
        float[] fArr = this.f4266h;
        if (z) {
            float f = fArr[4];
            fArr[4] = fArr[19];
            fArr[19] = fArr[14];
            fArr[14] = fArr[9];
            fArr[9] = f;
            float f2 = fArr[3];
            fArr[3] = fArr[18];
            fArr[18] = fArr[13];
            fArr[13] = fArr[8];
            fArr[8] = f2;
            return;
        }
        float f3 = fArr[4];
        fArr[4] = fArr[9];
        fArr[9] = fArr[14];
        fArr[14] = fArr[19];
        fArr[19] = f3;
        float f4 = fArr[3];
        fArr[3] = fArr[8];
        fArr[8] = fArr[13];
        fArr[13] = fArr[18];
        fArr[18] = f4;
    }

    public void scale(float f) {
        this.f4275q += f;
        this.f4276r += f;
        this.f4277s = true;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void scroll(float f, float f2) {
        float[] fArr = this.f4266h;
        if (f != 0.0f) {
            float f3 = (fArr[3] + f) % 1.0f;
            float width = (this.f4270l / this.f4354a.getWidth()) + f3;
            this.f4355b = f3;
            this.f4357d = width;
            fArr[3] = f3;
            fArr[8] = f3;
            fArr[13] = width;
            fArr[18] = width;
        }
        if (f2 != 0.0f) {
            float f4 = (fArr[9] + f2) % 1.0f;
            float height = (this.f4271m / this.f4354a.getHeight()) + f4;
            this.f4356c = f4;
            this.f4358e = height;
            fArr[4] = height;
            fArr[9] = f4;
            fArr[14] = f4;
            fArr[19] = height;
        }
    }

    public void set(Sprite sprite) {
        if (sprite != null) {
            System.arraycopy(sprite.f4266h, 0, this.f4266h, 0, 20);
            this.f4354a = sprite.f4354a;
            this.f4355b = sprite.f4355b;
            this.f4356c = sprite.f4356c;
            this.f4357d = sprite.f4357d;
            this.f4358e = sprite.f4358e;
            this.f4268j = sprite.f4268j;
            this.f4269k = sprite.f4269k;
            this.f4270l = sprite.f4270l;
            this.f4271m = sprite.f4271m;
            this.f4359f = sprite.f4359f;
            this.f4360g = sprite.f4360g;
            this.f4272n = sprite.f4272n;
            this.f4273o = sprite.f4273o;
            this.f4274p = sprite.f4274p;
            this.f4275q = sprite.f4275q;
            this.f4276r = sprite.f4276r;
            this.f4267i.set(sprite.f4267i);
            this.f4277s = sprite.f4277s;
            return;
        }
        throw new IllegalArgumentException("sprite cannot be null.");
    }

    public void setAlpha(float f) {
        Color color = this.f4267i;
        color.f3889a = f;
        float floatBits = color.toFloatBits();
        float[] fArr = this.f4266h;
        fArr[2] = floatBits;
        fArr[7] = floatBits;
        fArr[12] = floatBits;
        fArr[17] = floatBits;
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        this.f4268j = f;
        this.f4269k = f2;
        this.f4270l = f3;
        this.f4271m = f4;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float f5 = f3 + f;
            float f6 = f4 + f2;
            float[] fArr = this.f4266h;
            fArr[0] = f;
            fArr[1] = f2;
            fArr[5] = f;
            fArr[6] = f6;
            fArr[10] = f5;
            fArr[11] = f6;
            fArr[15] = f5;
            fArr[16] = f2;
            return;
        }
        this.f4277s = true;
    }

    public void setOrigin(float f, float f2) {
        this.f4272n = f;
        this.f4273o = f2;
        this.f4277s = true;
    }

    public void setOriginCenter() {
        this.f4272n = this.f4270l / 2.0f;
        this.f4273o = this.f4271m / 2.0f;
        this.f4277s = true;
    }

    public void setPackedColor(float f) {
        Color.abgr8888ToColor(this.f4267i, f);
        float[] fArr = this.f4266h;
        fArr[2] = f;
        fArr[7] = f;
        fArr[12] = f;
        fArr[17] = f;
    }

    public void setPosition(float f, float f2) {
        this.f4268j = f;
        this.f4269k = f2;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float f3 = this.f4270l + f;
            float f4 = this.f4271m + f2;
            float[] fArr = this.f4266h;
            fArr[0] = f;
            fArr[1] = f2;
            fArr[5] = f;
            fArr[6] = f4;
            fArr[10] = f3;
            fArr[11] = f4;
            fArr[15] = f3;
            fArr[16] = f2;
            return;
        }
        this.f4277s = true;
    }

    public void setRotation(float f) {
        this.f4274p = f;
        this.f4277s = true;
    }

    public void setSize(float f, float f2) {
        this.f4270l = f;
        this.f4271m = f2;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float f3 = this.f4268j;
            float f4 = f + f3;
            float f5 = this.f4269k;
            float f6 = f2 + f5;
            float[] fArr = this.f4266h;
            fArr[0] = f3;
            fArr[1] = f5;
            fArr[5] = f3;
            fArr[6] = f6;
            fArr[10] = f4;
            fArr[11] = f6;
            fArr[15] = f4;
            fArr[16] = f5;
            return;
        }
        this.f4277s = true;
    }

    public void setX(float f) {
        this.f4268j = f;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float f2 = this.f4270l + f;
            float[] fArr = this.f4266h;
            fArr[0] = f;
            fArr[5] = f;
            fArr[10] = f2;
            fArr[15] = f2;
            return;
        }
        this.f4277s = true;
    }

    public void setY(float f) {
        this.f4269k = f;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float f2 = this.f4271m + f;
            float[] fArr = this.f4266h;
            fArr[1] = f;
            fArr[6] = f2;
            fArr[11] = f2;
            fArr[16] = f;
            return;
        }
        this.f4277s = true;
    }

    public void translate(float f, float f2) {
        this.f4268j += f;
        this.f4269k += f2;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float[] fArr = this.f4266h;
            fArr[0] = fArr[0] + f;
            fArr[1] = fArr[1] + f2;
            fArr[5] = fArr[5] + f;
            fArr[6] = fArr[6] + f2;
            fArr[10] = fArr[10] + f;
            fArr[11] = fArr[11] + f2;
            fArr[15] = fArr[15] + f;
            fArr[16] = fArr[16] + f2;
            return;
        }
        this.f4277s = true;
    }

    public void translateX(float f) {
        this.f4268j += f;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float[] fArr = this.f4266h;
            fArr[0] = fArr[0] + f;
            fArr[5] = fArr[5] + f;
            fArr[10] = fArr[10] + f;
            fArr[15] = fArr[15] + f;
            return;
        }
        this.f4277s = true;
    }

    public void translateY(float f) {
        this.f4269k += f;
        if (this.f4277s) {
            return;
        }
        if (this.f4274p == 0.0f && this.f4275q == 1.0f && this.f4276r == 1.0f) {
            float[] fArr = this.f4266h;
            fArr[1] = fArr[1] + f;
            fArr[6] = fArr[6] + f;
            fArr[11] = fArr[11] + f;
            fArr[16] = fArr[16] + f;
            return;
        }
        this.f4277s = true;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void flip(boolean z, boolean z2) {
        super.flip(z, z2);
        float[] fArr = this.f4266h;
        if (z) {
            float f = fArr[3];
            fArr[3] = fArr[13];
            fArr[13] = f;
            float f2 = fArr[8];
            fArr[8] = fArr[18];
            fArr[18] = f2;
        }
        if (z2) {
            float f3 = fArr[4];
            fArr[4] = fArr[14];
            fArr[14] = f3;
            float f4 = fArr[9];
            fArr[9] = fArr[19];
            fArr[19] = f4;
        }
    }

    public Rectangle getBoundingRectangle() {
        float f;
        float f2;
        float[] vertices = getVertices();
        float f3 = vertices[0];
        float f4 = vertices[1];
        float f5 = vertices[5];
        if (f3 > f5) {
            f = f5;
        } else {
            f = f3;
        }
        float f6 = vertices[10];
        if (f > f6) {
            f = f6;
        }
        float f7 = vertices[15];
        if (f > f7) {
            f = f7;
        }
        if (f3 < f5) {
            f3 = f5;
        }
        if (f3 >= f6) {
            f6 = f3;
        }
        if (f6 >= f7) {
            f7 = f6;
        }
        float f8 = vertices[6];
        if (f4 > f8) {
            f2 = f8;
        } else {
            f2 = f4;
        }
        float f9 = vertices[11];
        if (f2 > f9) {
            f2 = f9;
        }
        float f10 = vertices[16];
        if (f2 > f10) {
            f2 = f10;
        }
        if (f4 < f8) {
            f4 = f8;
        }
        if (f4 >= f9) {
            f9 = f4;
        }
        if (f9 >= f10) {
            f10 = f9;
        }
        if (this.f4278t == null) {
            this.f4278t = new Rectangle();
        }
        Rectangle rectangle = this.f4278t;
        rectangle.f5523x = f;
        rectangle.f5524y = f2;
        rectangle.width = f7 - f;
        rectangle.height = f10 - f2;
        return rectangle;
    }

    public void setFlip(boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        if (isFlipX() != z) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (isFlipY() == z2) {
            z4 = false;
        }
        flip(z3, z4);
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void setRegion(float f, float f2, float f3, float f4) {
        super.setRegion(f, f2, f3, f4);
        float[] fArr = this.f4266h;
        fArr[3] = f;
        fArr[4] = f4;
        fArr[8] = f;
        fArr[9] = f2;
        fArr[13] = f3;
        fArr[14] = f2;
        fArr[18] = f3;
        fArr[19] = f4;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void setU(float f) {
        super.setU(f);
        float[] fArr = this.f4266h;
        fArr[3] = f;
        fArr[8] = f;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void setU2(float f) {
        super.setU2(f);
        float[] fArr = this.f4266h;
        fArr[13] = f;
        fArr[18] = f;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void setV(float f) {
        super.setV(f);
        float[] fArr = this.f4266h;
        fArr[9] = f;
        fArr[14] = f;
    }

    @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
    public void setV2(float f) {
        super.setV2(f);
        float[] fArr = this.f4266h;
        fArr[4] = f;
        fArr[19] = f;
    }

    public void setScale(float f, float f2) {
        this.f4275q = f;
        this.f4276r = f2;
        this.f4277s = true;
    }

    public Sprite(Texture texture) {
        this(texture, 0, 0, texture.getWidth(), texture.getHeight());
    }

    public Sprite(Texture texture, int i, int i2) {
        this(texture, 0, 0, i, i2);
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f4267i.set(f, f2, f3, f4);
        float floatBits = this.f4267i.toFloatBits();
        float[] fArr = this.f4266h;
        fArr[2] = floatBits;
        fArr[7] = floatBits;
        fArr[12] = floatBits;
        fArr[17] = floatBits;
    }

    public Sprite(Texture texture, int i, int i2, int i3, int i4) {
        this.f4266h = new float[20];
        this.f4267i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4275q = 1.0f;
        this.f4276r = 1.0f;
        this.f4277s = true;
        if (texture != null) {
            this.f4354a = texture;
            setRegion(i, i2, i3, i4);
            setColor(1.0f, 1.0f, 1.0f, 1.0f);
            setSize(Math.abs(i3), Math.abs(i4));
            setOrigin(this.f4270l / 2.0f, this.f4271m / 2.0f);
            return;
        }
        throw new IllegalArgumentException("texture cannot be null.");
    }

    public Sprite(TextureRegion textureRegion) {
        this.f4266h = new float[20];
        this.f4267i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4275q = 1.0f;
        this.f4276r = 1.0f;
        this.f4277s = true;
        setRegion(textureRegion);
        setColor(1.0f, 1.0f, 1.0f, 1.0f);
        setSize(textureRegion.getRegionWidth(), textureRegion.getRegionHeight());
        setOrigin(this.f4270l / 2.0f, this.f4271m / 2.0f);
    }

    public Sprite(TextureRegion textureRegion, int i, int i2, int i3, int i4) {
        this.f4266h = new float[20];
        this.f4267i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4275q = 1.0f;
        this.f4276r = 1.0f;
        this.f4277s = true;
        setRegion(textureRegion, i, i2, i3, i4);
        setColor(1.0f, 1.0f, 1.0f, 1.0f);
        setSize(Math.abs(i3), Math.abs(i4));
        setOrigin(this.f4270l / 2.0f, this.f4271m / 2.0f);
    }

    public Sprite(Sprite sprite) {
        this.f4266h = new float[20];
        this.f4267i = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4275q = 1.0f;
        this.f4276r = 1.0f;
        this.f4277s = true;
        set(sprite);
    }
}
