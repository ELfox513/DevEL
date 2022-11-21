package com.badlogic.gdx.graphics;

import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class Color {
    public static final Color BLACK;
    public static final Color BLUE;
    public static final Color BROWN;
    public static final Color CHARTREUSE;
    public static final Color CLEAR;
    public static final Color CORAL;
    public static final Color CYAN;
    public static final Color DARK_GRAY;
    public static final Color FIREBRICK;
    public static final Color FOREST;
    public static final Color GOLD;
    public static final Color GOLDENROD;
    public static final Color GRAY;
    public static final Color GREEN;
    public static final Color LIGHT_GRAY;
    public static final Color LIME;
    public static final Color MAGENTA;
    public static final Color MAROON;
    public static final Color NAVY;
    public static final Color OLIVE;
    public static final Color ORANGE;
    public static final Color PINK;
    public static final Color PURPLE;
    public static final Color RED;
    public static final Color ROYAL;
    public static final Color SALMON;
    public static final Color SCARLET;
    public static final Color SKY;
    public static final Color SLATE;
    public static final Color TAN;
    public static final Color TEAL;
    public static final Color VIOLET;
    public static final Color WHITE;
    public static final float WHITE_FLOAT_BITS;
    public static final Color YELLOW;

    /* renamed from: a */
    public float f3889a;

    /* renamed from: b */
    public float f3890b;

    /* renamed from: g */
    public float f3891g;

    /* renamed from: r */
    public float f3892r;

    public Color() {
    }

    public static void abgr8888ToColor(Color color, int i) {
        color.f3889a = (((-16777216) & i) >>> 24) / 255.0f;
        color.f3890b = ((16711680 & i) >>> 16) / 255.0f;
        color.f3891g = ((65280 & i) >>> 8) / 255.0f;
        color.f3892r = (i & 255) / 255.0f;
    }

    public static int alpha(float f) {
        return (int) (f * 255.0f);
    }

    public static int argb8888(float f, float f2, float f3, float f4) {
        return (((int) (f * 255.0f)) << 24) | (((int) (f2 * 255.0f)) << 16) | (((int) (f3 * 255.0f)) << 8) | ((int) (f4 * 255.0f));
    }

    public static int argb8888(Color color) {
        return ((int) (color.f3890b * 255.0f)) | (((int) (color.f3889a * 255.0f)) << 24) | (((int) (color.f3892r * 255.0f)) << 16) | (((int) (color.f3891g * 255.0f)) << 8);
    }

    public static int luminanceAlpha(float f, float f2) {
        return (((int) (f * 255.0f)) << 8) | ((int) (f2 * 255.0f));
    }

    public static int rgb565(float f, float f2, float f3) {
        return (((int) (f * 31.0f)) << 11) | (((int) (f2 * 63.0f)) << 5) | ((int) (f3 * 31.0f));
    }

    public static int rgb565(Color color) {
        return ((int) (color.f3890b * 31.0f)) | (((int) (color.f3892r * 31.0f)) << 11) | (((int) (color.f3891g * 63.0f)) << 5);
    }

    public static int rgb888(float f, float f2, float f3) {
        return (((int) (f * 255.0f)) << 16) | (((int) (f2 * 255.0f)) << 8) | ((int) (f3 * 255.0f));
    }

    public static int rgb888(Color color) {
        return ((int) (color.f3890b * 255.0f)) | (((int) (color.f3892r * 255.0f)) << 16) | (((int) (color.f3891g * 255.0f)) << 8);
    }

    public static int rgba4444(float f, float f2, float f3, float f4) {
        return (((int) (f * 15.0f)) << 12) | (((int) (f2 * 15.0f)) << 8) | (((int) (f3 * 15.0f)) << 4) | ((int) (f4 * 15.0f));
    }

    public static int rgba4444(Color color) {
        return ((int) (color.f3889a * 15.0f)) | (((int) (color.f3892r * 15.0f)) << 12) | (((int) (color.f3891g * 15.0f)) << 8) | (((int) (color.f3890b * 15.0f)) << 4);
    }

    public static int rgba8888(float f, float f2, float f3, float f4) {
        return (((int) (f * 255.0f)) << 24) | (((int) (f2 * 255.0f)) << 16) | (((int) (f3 * 255.0f)) << 8) | ((int) (f4 * 255.0f));
    }

    public static int rgba8888(Color color) {
        return ((int) (color.f3889a * 255.0f)) | (((int) (color.f3892r * 255.0f)) << 24) | (((int) (color.f3891g * 255.0f)) << 16) | (((int) (color.f3890b * 255.0f)) << 8);
    }

    public static int toIntBits(int i, int i2, int i3, int i4) {
        return i | (i2 << 8) | (i3 << 16) | (i4 << 24);
    }

    public static Color valueOf(String str) {
        return valueOf(str, new Color());
    }

    public Color add(Color color) {
        this.f3892r += color.f3892r;
        this.f3891g += color.f3891g;
        this.f3890b += color.f3890b;
        this.f3889a += color.f3889a;
        return clamp();
    }

    public Color cpy() {
        return new Color(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && toIntBits() == ((Color) obj).toIntBits();
    }

    public Color fromHsv(float f, float f2, float f3) {
        float f4 = ((f / 60.0f) + 6.0f) % 6.0f;
        int i = (int) f4;
        float f5 = f4 - i;
        float f6 = (1.0f - f2) * f3;
        float f7 = (1.0f - (f2 * f5)) * f3;
        float f8 = (1.0f - (f2 * (1.0f - f5))) * f3;
        if (i == 0) {
            this.f3892r = f3;
            this.f3891g = f8;
            this.f3890b = f6;
        } else if (i == 1) {
            this.f3892r = f7;
            this.f3891g = f3;
            this.f3890b = f6;
        } else if (i == 2) {
            this.f3892r = f6;
            this.f3891g = f3;
            this.f3890b = f8;
        } else if (i == 3) {
            this.f3892r = f6;
            this.f3891g = f7;
            this.f3890b = f3;
        } else if (i != 4) {
            this.f3892r = f3;
            this.f3891g = f6;
            this.f3890b = f7;
        } else {
            this.f3892r = f8;
            this.f3891g = f6;
            this.f3890b = f3;
        }
        return clamp();
    }

    public Color lerp(Color color, float f) {
        float f2 = this.f3892r;
        this.f3892r = f2 + ((color.f3892r - f2) * f);
        float f3 = this.f3891g;
        this.f3891g = f3 + ((color.f3891g - f3) * f);
        float f4 = this.f3890b;
        this.f3890b = f4 + ((color.f3890b - f4) * f);
        float f5 = this.f3889a;
        this.f3889a = f5 + (f * (color.f3889a - f5));
        return clamp();
    }

    public Color mul(Color color) {
        this.f3892r *= color.f3892r;
        this.f3891g *= color.f3891g;
        this.f3890b *= color.f3890b;
        this.f3889a *= color.f3889a;
        return clamp();
    }

    public Color set(Color color) {
        this.f3892r = color.f3892r;
        this.f3891g = color.f3891g;
        this.f3890b = color.f3890b;
        this.f3889a = color.f3889a;
        return this;
    }

    public Color sub(Color color) {
        this.f3892r -= color.f3892r;
        this.f3891g -= color.f3891g;
        this.f3890b -= color.f3890b;
        this.f3889a -= color.f3889a;
        return clamp();
    }

    public float toFloatBits() {
        return NumberUtils.intToFloatColor((((int) (this.f3889a * 255.0f)) << 24) | (((int) (this.f3890b * 255.0f)) << 16) | (((int) (this.f3891g * 255.0f)) << 8) | ((int) (this.f3892r * 255.0f)));
    }

    public int toIntBits() {
        return (((int) (this.f3889a * 255.0f)) << 24) | (((int) (this.f3890b * 255.0f)) << 16) | (((int) (this.f3891g * 255.0f)) << 8) | ((int) (this.f3892r * 255.0f));
    }

    static {
        Color color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        WHITE = color;
        LIGHT_GRAY = new Color(-1077952513);
        GRAY = new Color(2139062271);
        DARK_GRAY = new Color(1061109759);
        BLACK = new Color(0.0f, 0.0f, 0.0f, 1.0f);
        WHITE_FLOAT_BITS = color.toFloatBits();
        CLEAR = new Color(0.0f, 0.0f, 0.0f, 0.0f);
        BLUE = new Color(0.0f, 0.0f, 1.0f, 1.0f);
        NAVY = new Color(0.0f, 0.0f, 0.5f, 1.0f);
        ROYAL = new Color(1097458175);
        SLATE = new Color(1887473919);
        SKY = new Color(-2016482305);
        CYAN = new Color(0.0f, 1.0f, 1.0f, 1.0f);
        TEAL = new Color(0.0f, 0.5f, 0.5f, 1.0f);
        GREEN = new Color(16711935);
        CHARTREUSE = new Color(2147418367);
        LIME = new Color(852308735);
        FOREST = new Color(579543807);
        OLIVE = new Color(1804477439);
        YELLOW = new Color(-65281);
        GOLD = new Color(-2686721);
        GOLDENROD = new Color(-626712321);
        ORANGE = new Color(-5963521);
        BROWN = new Color(-1958407169);
        TAN = new Color(-759919361);
        FIREBRICK = new Color(-1306385665);
        RED = new Color(-16776961);
        SCARLET = new Color(-13361921);
        CORAL = new Color(-8433409);
        SALMON = new Color(-92245249);
        PINK = new Color(-9849601);
        MAGENTA = new Color(1.0f, 0.0f, 1.0f, 1.0f);
        PURPLE = new Color(-1608453889);
        VIOLET = new Color(-293409025);
        MAROON = new Color(-1339006721);
    }

    public Color(int i) {
        rgba8888ToColor(this, i);
    }

    public static void argb8888ToColor(Color color, int i) {
        color.f3889a = (((-16777216) & i) >>> 24) / 255.0f;
        color.f3892r = ((16711680 & i) >>> 16) / 255.0f;
        color.f3891g = ((65280 & i) >>> 8) / 255.0f;
        color.f3890b = (i & 255) / 255.0f;
    }

    public static void rgb888ToColor(Color color, int i) {
        color.f3892r = ((16711680 & i) >>> 16) / 255.0f;
        color.f3891g = ((65280 & i) >>> 8) / 255.0f;
        color.f3890b = (i & 255) / 255.0f;
    }

    public static void rgba8888ToColor(Color color, int i) {
        color.f3892r = (((-16777216) & i) >>> 24) / 255.0f;
        color.f3891g = ((16711680 & i) >>> 16) / 255.0f;
        color.f3890b = ((65280 & i) >>> 8) / 255.0f;
        color.f3889a = (i & 255) / 255.0f;
    }

    public static Color valueOf(String str, Color color) {
        if (str.charAt(0) == '#') {
            str = str.substring(1);
        }
        color.f3892r = Integer.parseInt(str.substring(0, 2), 16) / 255.0f;
        color.f3891g = Integer.parseInt(str.substring(2, 4), 16) / 255.0f;
        color.f3890b = Integer.parseInt(str.substring(4, 6), 16) / 255.0f;
        color.f3889a = str.length() != 8 ? 1.0f : Integer.parseInt(str.substring(6, 8), 16) / 255.0f;
        return color;
    }

    public Color clamp() {
        float f = this.f3892r;
        if (f < 0.0f) {
            this.f3892r = 0.0f;
        } else if (f > 1.0f) {
            this.f3892r = 1.0f;
        }
        float f2 = this.f3891g;
        if (f2 < 0.0f) {
            this.f3891g = 0.0f;
        } else if (f2 > 1.0f) {
            this.f3891g = 1.0f;
        }
        float f3 = this.f3890b;
        if (f3 < 0.0f) {
            this.f3890b = 0.0f;
        } else if (f3 > 1.0f) {
            this.f3890b = 1.0f;
        }
        float f4 = this.f3889a;
        if (f4 < 0.0f) {
            this.f3889a = 0.0f;
        } else if (f4 > 1.0f) {
            this.f3889a = 1.0f;
        }
        return this;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        float f = this.f3892r;
        int i4 = 0;
        if (f != 0.0f) {
            i = NumberUtils.floatToIntBits(f);
        } else {
            i = 0;
        }
        int i5 = i * 31;
        float f2 = this.f3891g;
        if (f2 != 0.0f) {
            i2 = NumberUtils.floatToIntBits(f2);
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        float f3 = this.f3890b;
        if (f3 != 0.0f) {
            i3 = NumberUtils.floatToIntBits(f3);
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        float f4 = this.f3889a;
        if (f4 != 0.0f) {
            i4 = NumberUtils.floatToIntBits(f4);
        }
        return i7 + i4;
    }

    public Color premultiplyAlpha() {
        float f = this.f3892r;
        float f2 = this.f3889a;
        this.f3892r = f * f2;
        this.f3891g *= f2;
        this.f3890b *= f2;
        return this;
    }

    public float[] toHsv(float[] fArr) {
        float max = Math.max(Math.max(this.f3892r, this.f3891g), this.f3890b);
        float min = Math.min(Math.min(this.f3892r, this.f3891g), this.f3890b);
        float f = max - min;
        if (f == 0.0f) {
            fArr[0] = 0.0f;
        } else {
            float f2 = this.f3892r;
            if (max == f2) {
                fArr[0] = ((((this.f3891g - this.f3890b) * 60.0f) / f) + 360.0f) % 360.0f;
            } else {
                float f3 = this.f3891g;
                if (max == f3) {
                    fArr[0] = (((this.f3890b - f2) * 60.0f) / f) + 120.0f;
                } else {
                    fArr[0] = (((f2 - f3) * 60.0f) / f) + 240.0f;
                }
            }
        }
        if (max > 0.0f) {
            fArr[1] = 1.0f - (min / max);
        } else {
            fArr[1] = 0.0f;
        }
        fArr[2] = max;
        return fArr;
    }

    public String toString() {
        String hexString = Integer.toHexString((((int) (this.f3892r * 255.0f)) << 24) | (((int) (this.f3891g * 255.0f)) << 16) | (((int) (this.f3890b * 255.0f)) << 8) | ((int) (this.f3889a * 255.0f)));
        while (hexString.length() < 8) {
            hexString = "0" + hexString;
        }
        return hexString;
    }

    public static void rgb565ToColor(Color color, int i) {
        color.f3892r = ((63488 & i) >>> 11) / 31.0f;
        color.f3891g = ((i & 2016) >>> 5) / 63.0f;
        color.f3890b = ((i & 31) >>> 0) / 31.0f;
    }

    public static void rgba4444ToColor(Color color, int i) {
        color.f3892r = ((61440 & i) >>> 12) / 15.0f;
        color.f3891g = ((i & 3840) >>> 8) / 15.0f;
        color.f3890b = ((i & 240) >>> 4) / 15.0f;
        color.f3889a = (i & 15) / 15.0f;
    }

    public static float toFloatBits(int i, int i2, int i3, int i4) {
        return NumberUtils.intToFloatColor(i | (i2 << 8) | (i3 << 16) | (i4 << 24));
    }

    public Color(float f, float f2, float f3, float f4) {
        this.f3892r = f;
        this.f3891g = f2;
        this.f3890b = f3;
        this.f3889a = f4;
        clamp();
    }

    public static float toFloatBits(float f, float f2, float f3, float f4) {
        return NumberUtils.intToFloatColor(((int) (f * 255.0f)) | (((int) (f2 * 255.0f)) << 8) | (((int) (f3 * 255.0f)) << 16) | (((int) (f4 * 255.0f)) << 24));
    }

    public static void abgr8888ToColor(Color color, float f) {
        int floatToIntColor = NumberUtils.floatToIntColor(f);
        color.f3889a = (((-16777216) & floatToIntColor) >>> 24) / 255.0f;
        color.f3890b = ((16711680 & floatToIntColor) >>> 16) / 255.0f;
        color.f3891g = ((65280 & floatToIntColor) >>> 8) / 255.0f;
        color.f3892r = (floatToIntColor & 255) / 255.0f;
    }

    public Color set(float f, float f2, float f3, float f4) {
        this.f3892r = f;
        this.f3891g = f2;
        this.f3890b = f3;
        this.f3889a = f4;
        return clamp();
    }

    public Color add(float f, float f2, float f3, float f4) {
        this.f3892r += f;
        this.f3891g += f2;
        this.f3890b += f3;
        this.f3889a += f4;
        return clamp();
    }

    public Color lerp(float f, float f2, float f3, float f4, float f5) {
        float f6 = this.f3892r;
        this.f3892r = f6 + ((f - f6) * f5);
        float f7 = this.f3891g;
        this.f3891g = f7 + ((f2 - f7) * f5);
        float f8 = this.f3890b;
        this.f3890b = f8 + ((f3 - f8) * f5);
        float f9 = this.f3889a;
        this.f3889a = f9 + (f5 * (f4 - f9));
        return clamp();
    }

    public Color mul(float f) {
        this.f3892r *= f;
        this.f3891g *= f;
        this.f3890b *= f;
        this.f3889a *= f;
        return clamp();
    }

    public Color sub(float f, float f2, float f3, float f4) {
        this.f3892r -= f;
        this.f3891g -= f2;
        this.f3890b -= f3;
        this.f3889a -= f4;
        return clamp();
    }

    public Color(Color color) {
        set(color);
    }

    public Color set(int i) {
        rgba8888ToColor(this, i);
        return this;
    }

    public Color mul(float f, float f2, float f3, float f4) {
        this.f3892r *= f;
        this.f3891g *= f2;
        this.f3890b *= f3;
        this.f3889a *= f4;
        return clamp();
    }

    public Color fromHsv(float[] fArr) {
        return fromHsv(fArr[0], fArr[1], fArr[2]);
    }
}
