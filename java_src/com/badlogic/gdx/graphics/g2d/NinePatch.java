package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class NinePatch {
    public static final int BOTTOM_CENTER = 7;
    public static final int BOTTOM_LEFT = 6;
    public static final int BOTTOM_RIGHT = 8;
    public static final int MIDDLE_CENTER = 4;
    public static final int MIDDLE_LEFT = 3;
    public static final int MIDDLE_RIGHT = 5;
    public static final int TOP_CENTER = 1;
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 2;

    /* renamed from: x */
    public static final Color f4035x = new Color();

    /* renamed from: a */
    public Texture f4036a;

    /* renamed from: b */
    public int f4037b;

    /* renamed from: c */
    public int f4038c;

    /* renamed from: d */
    public int f4039d;

    /* renamed from: e */
    public int f4040e;

    /* renamed from: f */
    public int f4041f;

    /* renamed from: g */
    public int f4042g;

    /* renamed from: h */
    public int f4043h;

    /* renamed from: i */
    public int f4044i;

    /* renamed from: j */
    public int f4045j;

    /* renamed from: k */
    public float f4046k;

    /* renamed from: l */
    public float f4047l;

    /* renamed from: m */
    public float f4048m;

    /* renamed from: n */
    public float f4049n;

    /* renamed from: o */
    public float f4050o;

    /* renamed from: p */
    public float f4051p;

    /* renamed from: q */
    public float[] f4052q;

    /* renamed from: r */
    public int f4053r;

    /* renamed from: s */
    public final Color f4054s;

    /* renamed from: t */
    public float f4055t;

    /* renamed from: u */
    public float f4056u;

    /* renamed from: v */
    public float f4057v;

    /* renamed from: w */
    public float f4058w;

    public NinePatch(Texture texture, int i, int i2, int i3, int i4) {
        this(new TextureRegion(texture), i, i2, i3, i4);
    }

    /* renamed from: b */
    public final void m24218b(TextureRegion[] textureRegionArr) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        TextureRegion textureRegion = textureRegionArr[6];
        if (textureRegion != null) {
            this.f4037b = m24219a(textureRegion, false, false);
            this.f4046k = textureRegionArr[6].getRegionWidth();
            this.f4051p = textureRegionArr[6].getRegionHeight();
        } else {
            this.f4037b = -1;
        }
        TextureRegion textureRegion2 = textureRegionArr[7];
        if (textureRegion2 != null) {
            if (textureRegionArr[6] == null && textureRegionArr[8] == null) {
                z6 = false;
            } else {
                z6 = true;
            }
            this.f4038c = m24219a(textureRegion2, z6, false);
            this.f4048m = Math.max(this.f4048m, textureRegionArr[7].getRegionWidth());
            this.f4051p = Math.max(this.f4051p, textureRegionArr[7].getRegionHeight());
        } else {
            this.f4038c = -1;
        }
        TextureRegion textureRegion3 = textureRegionArr[8];
        if (textureRegion3 != null) {
            this.f4039d = m24219a(textureRegion3, false, false);
            this.f4047l = Math.max(this.f4047l, textureRegionArr[8].getRegionWidth());
            this.f4051p = Math.max(this.f4051p, textureRegionArr[8].getRegionHeight());
        } else {
            this.f4039d = -1;
        }
        TextureRegion textureRegion4 = textureRegionArr[3];
        if (textureRegion4 != null) {
            if (textureRegionArr[0] == null && textureRegionArr[6] == null) {
                z5 = false;
            } else {
                z5 = true;
            }
            this.f4040e = m24219a(textureRegion4, false, z5);
            this.f4046k = Math.max(this.f4046k, textureRegionArr[3].getRegionWidth());
            this.f4049n = Math.max(this.f4049n, textureRegionArr[3].getRegionHeight());
        } else {
            this.f4040e = -1;
        }
        TextureRegion textureRegion5 = textureRegionArr[4];
        if (textureRegion5 != null) {
            if (textureRegionArr[3] == null && textureRegionArr[5] == null) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (textureRegionArr[1] == null && textureRegionArr[7] == null) {
                z4 = false;
            } else {
                z4 = true;
            }
            this.f4041f = m24219a(textureRegion5, z3, z4);
            this.f4048m = Math.max(this.f4048m, textureRegionArr[4].getRegionWidth());
            this.f4049n = Math.max(this.f4049n, textureRegionArr[4].getRegionHeight());
        } else {
            this.f4041f = -1;
        }
        TextureRegion textureRegion6 = textureRegionArr[5];
        if (textureRegion6 != null) {
            if (textureRegionArr[2] == null && textureRegionArr[8] == null) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.f4042g = m24219a(textureRegion6, false, z2);
            this.f4047l = Math.max(this.f4047l, textureRegionArr[5].getRegionWidth());
            this.f4049n = Math.max(this.f4049n, textureRegionArr[5].getRegionHeight());
        } else {
            this.f4042g = -1;
        }
        TextureRegion textureRegion7 = textureRegionArr[0];
        if (textureRegion7 != null) {
            this.f4043h = m24219a(textureRegion7, false, false);
            this.f4046k = Math.max(this.f4046k, textureRegionArr[0].getRegionWidth());
            this.f4050o = Math.max(this.f4050o, textureRegionArr[0].getRegionHeight());
        } else {
            this.f4043h = -1;
        }
        TextureRegion textureRegion8 = textureRegionArr[1];
        if (textureRegion8 != null) {
            if (textureRegionArr[0] == null && textureRegionArr[2] == null) {
                z = false;
            } else {
                z = true;
            }
            this.f4044i = m24219a(textureRegion8, z, false);
            this.f4048m = Math.max(this.f4048m, textureRegionArr[1].getRegionWidth());
            this.f4050o = Math.max(this.f4050o, textureRegionArr[1].getRegionHeight());
        } else {
            this.f4044i = -1;
        }
        TextureRegion textureRegion9 = textureRegionArr[2];
        if (textureRegion9 != null) {
            this.f4045j = m24219a(textureRegion9, false, false);
            this.f4047l = Math.max(this.f4047l, textureRegionArr[2].getRegionWidth());
            this.f4050o = Math.max(this.f4050o, textureRegionArr[2].getRegionHeight());
        } else {
            this.f4045j = -1;
        }
        int i = this.f4053r;
        float[] fArr = this.f4052q;
        if (i < fArr.length) {
            float[] fArr2 = new float[i];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f4052q = fArr2;
        }
    }

    /* renamed from: d */
    public final void m24216d(int i, float f, float f2, float f3, float f4, float f5) {
        float f6 = f3 + f;
        float f7 = f4 + f2;
        float[] fArr = this.f4052q;
        fArr[i] = f;
        fArr[i + 1] = f2;
        fArr[i + 2] = f5;
        fArr[i + 5] = f;
        fArr[i + 6] = f7;
        fArr[i + 7] = f5;
        fArr[i + 10] = f6;
        fArr[i + 11] = f7;
        fArr[i + 12] = f5;
        fArr[i + 15] = f6;
        fArr[i + 16] = f2;
        fArr[i + 17] = f5;
    }

    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        m24217c(batch, f, f2, f3, f4);
        batch.draw(this.f4036a, this.f4052q, 0, this.f4053r);
    }

    public float getBottomHeight() {
        return this.f4051p;
    }

    public Color getColor() {
        return this.f4054s;
    }

    public float getLeftWidth() {
        return this.f4046k;
    }

    public float getMiddleHeight() {
        return this.f4049n;
    }

    public float getMiddleWidth() {
        return this.f4048m;
    }

    public float getPadBottom() {
        float f = this.f4058w;
        return f == -1.0f ? getBottomHeight() : f;
    }

    public float getPadLeft() {
        float f = this.f4055t;
        return f == -1.0f ? getLeftWidth() : f;
    }

    public float getPadRight() {
        float f = this.f4056u;
        return f == -1.0f ? getRightWidth() : f;
    }

    public float getPadTop() {
        float f = this.f4057v;
        return f == -1.0f ? getTopHeight() : f;
    }

    public float getRightWidth() {
        return this.f4047l;
    }

    public Texture getTexture() {
        return this.f4036a;
    }

    public float getTopHeight() {
        return this.f4050o;
    }

    public float getTotalHeight() {
        return this.f4050o + this.f4049n + this.f4051p;
    }

    public float getTotalWidth() {
        return this.f4046k + this.f4048m + this.f4047l;
    }

    public void setBottomHeight(float f) {
        this.f4051p = f;
    }

    public void setColor(Color color) {
        this.f4054s.set(color);
    }

    public void setLeftWidth(float f) {
        this.f4046k = f;
    }

    public void setMiddleHeight(float f) {
        this.f4049n = f;
    }

    public void setMiddleWidth(float f) {
        this.f4048m = f;
    }

    public void setPadBottom(float f) {
        this.f4058w = f;
    }

    public void setPadLeft(float f) {
        this.f4055t = f;
    }

    public void setPadRight(float f) {
        this.f4056u = f;
    }

    public void setPadTop(float f) {
        this.f4057v = f;
    }

    public void setRightWidth(float f) {
        this.f4047l = f;
    }

    public void setTopHeight(float f) {
        this.f4050o = f;
    }

    public NinePatch(TextureRegion textureRegion, int i, int i2, int i3, int i4) {
        this.f4052q = new float[180];
        this.f4054s = new Color(Color.WHITE);
        this.f4055t = -1.0f;
        this.f4056u = -1.0f;
        this.f4057v = -1.0f;
        this.f4058w = -1.0f;
        if (textureRegion != null) {
            int regionWidth = (textureRegion.getRegionWidth() - i) - i2;
            int regionHeight = (textureRegion.getRegionHeight() - i3) - i4;
            TextureRegion[] textureRegionArr = new TextureRegion[9];
            if (i3 > 0) {
                if (i > 0) {
                    textureRegionArr[0] = new TextureRegion(textureRegion, 0, 0, i, i3);
                }
                if (regionWidth > 0) {
                    textureRegionArr[1] = new TextureRegion(textureRegion, i, 0, regionWidth, i3);
                }
                if (i2 > 0) {
                    textureRegionArr[2] = new TextureRegion(textureRegion, i + regionWidth, 0, i2, i3);
                }
            }
            if (regionHeight > 0) {
                if (i > 0) {
                    textureRegionArr[3] = new TextureRegion(textureRegion, 0, i3, i, regionHeight);
                }
                if (regionWidth > 0) {
                    textureRegionArr[4] = new TextureRegion(textureRegion, i, i3, regionWidth, regionHeight);
                }
                if (i2 > 0) {
                    textureRegionArr[5] = new TextureRegion(textureRegion, i + regionWidth, i3, i2, regionHeight);
                }
            }
            if (i4 > 0) {
                if (i > 0) {
                    textureRegionArr[6] = new TextureRegion(textureRegion, 0, i3 + regionHeight, i, i4);
                }
                if (regionWidth > 0) {
                    textureRegionArr[7] = new TextureRegion(textureRegion, i, i3 + regionHeight, regionWidth, i4);
                }
                if (i2 > 0) {
                    textureRegionArr[8] = new TextureRegion(textureRegion, i + regionWidth, i3 + regionHeight, i2, i4);
                }
            }
            if (i == 0 && regionWidth == 0) {
                textureRegionArr[1] = textureRegionArr[2];
                textureRegionArr[4] = textureRegionArr[5];
                textureRegionArr[7] = textureRegionArr[8];
                textureRegionArr[2] = null;
                textureRegionArr[5] = null;
                textureRegionArr[8] = null;
            }
            if (i3 == 0 && regionHeight == 0) {
                textureRegionArr[3] = textureRegionArr[6];
                textureRegionArr[4] = textureRegionArr[7];
                textureRegionArr[5] = textureRegionArr[8];
                textureRegionArr[6] = null;
                textureRegionArr[7] = null;
                textureRegionArr[8] = null;
            }
            m24218b(textureRegionArr);
            return;
        }
        throw new IllegalArgumentException("region cannot be null.");
    }

    /* renamed from: a */
    public final int m24219a(TextureRegion textureRegion, boolean z, boolean z2) {
        Texture texture = this.f4036a;
        if (texture == null) {
            this.f4036a = textureRegion.getTexture();
        } else if (texture != textureRegion.getTexture()) {
            throw new IllegalArgumentException("All regions must be from the same texture.");
        }
        float f = textureRegion.f4355b;
        float f2 = textureRegion.f4358e;
        float f3 = textureRegion.f4357d;
        float f4 = textureRegion.f4356c;
        Texture.TextureFilter magFilter = this.f4036a.getMagFilter();
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
        if (magFilter == textureFilter || this.f4036a.getMinFilter() == textureFilter) {
            if (z) {
                float width = 0.5f / this.f4036a.getWidth();
                f += width;
                f3 -= width;
            }
            if (z2) {
                float height = 0.5f / this.f4036a.getHeight();
                f2 -= height;
                f4 += height;
            }
        }
        float[] fArr = this.f4052q;
        int i = this.f4053r;
        fArr[i + 3] = f;
        fArr[i + 4] = f2;
        fArr[i + 8] = f;
        fArr[i + 9] = f4;
        fArr[i + 13] = f3;
        fArr[i + 14] = f4;
        fArr[i + 18] = f3;
        fArr[i + 19] = f2;
        this.f4053r = i + 20;
        return i;
    }

    /* renamed from: c */
    public final void m24217c(Batch batch, float f, float f2, float f3, float f4) {
        float f5 = this.f4046k;
        float f6 = f + f5;
        float f7 = this.f4051p;
        float f8 = f2 + f7;
        float f9 = this.f4047l;
        float f10 = (f3 - f9) - f5;
        float f11 = this.f4050o;
        float f12 = (f4 - f11) - f7;
        float f13 = (f + f3) - f9;
        float f14 = (f2 + f4) - f11;
        float floatBits = f4035x.set(this.f4054s).mul(batch.getColor()).toFloatBits();
        int i = this.f4037b;
        if (i != -1) {
            m24216d(i, f, f2, this.f4046k, this.f4051p, floatBits);
        }
        int i2 = this.f4038c;
        if (i2 != -1) {
            m24216d(i2, f6, f2, f10, this.f4051p, floatBits);
        }
        int i3 = this.f4039d;
        if (i3 != -1) {
            m24216d(i3, f13, f2, this.f4047l, this.f4051p, floatBits);
        }
        int i4 = this.f4040e;
        if (i4 != -1) {
            m24216d(i4, f, f8, this.f4046k, f12, floatBits);
        }
        int i5 = this.f4041f;
        if (i5 != -1) {
            m24216d(i5, f6, f8, f10, f12, floatBits);
        }
        int i6 = this.f4042g;
        if (i6 != -1) {
            m24216d(i6, f13, f8, this.f4047l, f12, floatBits);
        }
        int i7 = this.f4043h;
        if (i7 != -1) {
            m24216d(i7, f, f14, this.f4046k, this.f4050o, floatBits);
        }
        int i8 = this.f4044i;
        if (i8 != -1) {
            m24216d(i8, f6, f14, f10, this.f4050o, floatBits);
        }
        int i9 = this.f4045j;
        if (i9 != -1) {
            m24216d(i9, f13, f14, this.f4047l, this.f4050o, floatBits);
        }
    }

    public void scale(float f, float f2) {
        this.f4046k *= f;
        this.f4047l *= f;
        this.f4050o *= f2;
        this.f4051p *= f2;
        this.f4048m *= f;
        this.f4049n *= f2;
        float f3 = this.f4055t;
        if (f3 != -1.0f) {
            this.f4055t = f3 * f;
        }
        float f4 = this.f4056u;
        if (f4 != -1.0f) {
            this.f4056u = f4 * f;
        }
        float f5 = this.f4057v;
        if (f5 != -1.0f) {
            this.f4057v = f5 * f2;
        }
        float f6 = this.f4058w;
        if (f6 != -1.0f) {
            this.f4058w = f6 * f2;
        }
    }

    public void setPadding(float f, float f2, float f3, float f4) {
        this.f4055t = f;
        this.f4056u = f2;
        this.f4057v = f3;
        this.f4058w = f4;
    }

    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        m24217c(batch, f, f2, f5, f6);
        float f10 = f + f3;
        float f11 = f2 + f4;
        int i = this.f4053r;
        float[] fArr = this.f4052q;
        if (f9 != 0.0f) {
            for (int i2 = 0; i2 < i; i2 += 5) {
                float f12 = (fArr[i2] - f10) * f7;
                int i3 = i2 + 1;
                float f13 = (fArr[i3] - f11) * f8;
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                fArr[i2] = ((cosDeg * f12) - (sinDeg * f13)) + f10;
                fArr[i3] = (sinDeg * f12) + (cosDeg * f13) + f11;
            }
        } else if (f7 != 1.0f || f8 != 1.0f) {
            for (int i4 = 0; i4 < i; i4 += 5) {
                fArr[i4] = ((fArr[i4] - f10) * f7) + f10;
                int i5 = i4 + 1;
                fArr[i5] = ((fArr[i5] - f11) * f8) + f11;
            }
        }
        batch.draw(this.f4036a, fArr, 0, i);
    }

    public NinePatch(Texture texture, Color color) {
        this(texture);
        setColor(color);
    }

    public NinePatch(Texture texture) {
        this(new TextureRegion(texture));
    }

    public NinePatch(TextureRegion textureRegion, Color color) {
        this(textureRegion);
        setColor(color);
    }

    public NinePatch(TextureRegion textureRegion) {
        this.f4052q = new float[180];
        this.f4054s = new Color(Color.WHITE);
        this.f4055t = -1.0f;
        this.f4056u = -1.0f;
        this.f4057v = -1.0f;
        this.f4058w = -1.0f;
        m24218b(new TextureRegion[]{null, null, null, null, textureRegion, null, null, null, null});
    }

    public NinePatch(TextureRegion... textureRegionArr) {
        TextureRegion textureRegion;
        TextureRegion textureRegion2;
        TextureRegion textureRegion3;
        TextureRegion textureRegion4;
        TextureRegion textureRegion5;
        TextureRegion textureRegion6;
        TextureRegion textureRegion7;
        TextureRegion textureRegion8;
        this.f4052q = new float[180];
        this.f4054s = new Color(Color.WHITE);
        this.f4055t = -1.0f;
        this.f4056u = -1.0f;
        this.f4057v = -1.0f;
        this.f4058w = -1.0f;
        if (textureRegionArr != null && textureRegionArr.length == 9) {
            m24218b(textureRegionArr);
            TextureRegion textureRegion9 = textureRegionArr[0];
            if ((textureRegion9 != null && textureRegion9.getRegionWidth() != this.f4046k) || (((textureRegion = textureRegionArr[3]) != null && textureRegion.getRegionWidth() != this.f4046k) || ((textureRegion2 = textureRegionArr[6]) != null && textureRegion2.getRegionWidth() != this.f4046k))) {
                throw new GdxRuntimeException("Left side patches must have the same width");
            }
            TextureRegion textureRegion10 = textureRegionArr[2];
            if ((textureRegion10 != null && textureRegion10.getRegionWidth() != this.f4047l) || (((textureRegion3 = textureRegionArr[5]) != null && textureRegion3.getRegionWidth() != this.f4047l) || ((textureRegion4 = textureRegionArr[8]) != null && textureRegion4.getRegionWidth() != this.f4047l))) {
                throw new GdxRuntimeException("Right side patches must have the same width");
            }
            TextureRegion textureRegion11 = textureRegionArr[6];
            if ((textureRegion11 != null && textureRegion11.getRegionHeight() != this.f4051p) || (((textureRegion5 = textureRegionArr[7]) != null && textureRegion5.getRegionHeight() != this.f4051p) || ((textureRegion6 = textureRegionArr[8]) != null && textureRegion6.getRegionHeight() != this.f4051p))) {
                throw new GdxRuntimeException("Bottom side patches must have the same height");
            }
            TextureRegion textureRegion12 = textureRegionArr[0];
            if ((textureRegion12 != null && textureRegion12.getRegionHeight() != this.f4050o) || (((textureRegion7 = textureRegionArr[1]) != null && textureRegion7.getRegionHeight() != this.f4050o) || ((textureRegion8 = textureRegionArr[2]) != null && textureRegion8.getRegionHeight() != this.f4050o))) {
                throw new GdxRuntimeException("Top side patches must have the same height");
            }
            return;
        }
        throw new IllegalArgumentException("NinePatch needs nine TextureRegions");
    }

    public NinePatch(NinePatch ninePatch) {
        this(ninePatch, ninePatch.f4054s);
    }

    public NinePatch(NinePatch ninePatch, Color color) {
        this.f4052q = new float[180];
        Color color2 = new Color(Color.WHITE);
        this.f4054s = color2;
        this.f4055t = -1.0f;
        this.f4056u = -1.0f;
        this.f4057v = -1.0f;
        this.f4058w = -1.0f;
        this.f4036a = ninePatch.f4036a;
        this.f4037b = ninePatch.f4037b;
        this.f4038c = ninePatch.f4038c;
        this.f4039d = ninePatch.f4039d;
        this.f4040e = ninePatch.f4040e;
        this.f4041f = ninePatch.f4041f;
        this.f4042g = ninePatch.f4042g;
        this.f4043h = ninePatch.f4043h;
        this.f4044i = ninePatch.f4044i;
        this.f4045j = ninePatch.f4045j;
        this.f4046k = ninePatch.f4046k;
        this.f4047l = ninePatch.f4047l;
        this.f4048m = ninePatch.f4048m;
        this.f4049n = ninePatch.f4049n;
        this.f4050o = ninePatch.f4050o;
        this.f4051p = ninePatch.f4051p;
        this.f4055t = ninePatch.f4055t;
        this.f4057v = ninePatch.f4057v;
        this.f4058w = ninePatch.f4058w;
        this.f4056u = ninePatch.f4056u;
        float[] fArr = new float[ninePatch.f4052q.length];
        this.f4052q = fArr;
        float[] fArr2 = ninePatch.f4052q;
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        this.f4053r = ninePatch.f4053r;
        color2.set(color);
    }
}
