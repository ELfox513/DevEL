package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.NumberUtils;
import com.badlogic.gdx.utils.Pools;
import java.util.Arrays;
/* loaded from: classes.dex */
public class BitmapFontCache {

    /* renamed from: n */
    public static final Color f4005n = new Color(1.0f, 1.0f, 1.0f, 1.0f);

    /* renamed from: a */
    public final BitmapFont f4006a;

    /* renamed from: b */
    public boolean f4007b;

    /* renamed from: c */
    public final Array<GlyphLayout> f4008c;

    /* renamed from: d */
    public final Array<GlyphLayout> f4009d;

    /* renamed from: e */
    public int f4010e;

    /* renamed from: f */
    public float f4011f;

    /* renamed from: g */
    public float f4012g;

    /* renamed from: h */
    public final Color f4013h;

    /* renamed from: i */
    public float f4014i;

    /* renamed from: j */
    public float[][] f4015j;

    /* renamed from: k */
    public int[] f4016k;

    /* renamed from: l */
    public IntArray[] f4017l;

    /* renamed from: m */
    public int[] f4018m;

    public BitmapFontCache(BitmapFont bitmapFont) {
        this(bitmapFont, bitmapFont.usesIntegerPositions());
    }

    public GlyphLayout addText(CharSequence charSequence, float f, float f2) {
        return addText(charSequence, f, f2, 0, charSequence.length(), 0.0f, 8, false, null);
    }

    public void clear() {
        this.f4011f = 0.0f;
        this.f4012g = 0.0f;
        Pools.freeAll(this.f4009d, true);
        this.f4009d.clear();
        this.f4008c.clear();
        int length = this.f4016k.length;
        for (int i = 0; i < length; i++) {
            IntArray[] intArrayArr = this.f4017l;
            if (intArrayArr != null) {
                intArrayArr[i].clear();
            }
            this.f4016k[i] = 0;
        }
    }

    public void draw(Batch batch) {
        Array<TextureRegion> regions = this.f4006a.getRegions();
        int length = this.f4015j.length;
        for (int i = 0; i < length; i++) {
            if (this.f4016k[i] > 0) {
                batch.draw(regions.get(i).getTexture(), this.f4015j[i], 0, this.f4016k[i]);
            }
        }
    }

    public Color getColor() {
        return this.f4013h;
    }

    public BitmapFont getFont() {
        return this.f4006a;
    }

    public Array<GlyphLayout> getLayouts() {
        return this.f4008c;
    }

    public int getVertexCount(int i) {
        return this.f4016k[i];
    }

    public float[] getVertices() {
        return getVertices(0);
    }

    public float getX() {
        return this.f4011f;
    }

    public float getY() {
        return this.f4012g;
    }

    public void setColor(Color color) {
        this.f4013h.set(color);
    }

    public void setColors(float f) {
        int length = this.f4015j.length;
        for (int i = 0; i < length; i++) {
            float[] fArr = this.f4015j[i];
            int i2 = this.f4016k[i];
            for (int i3 = 2; i3 < i2; i3 += 5) {
                fArr[i3] = f;
            }
        }
    }

    public void setPosition(float f, float f2) {
        translate(f - this.f4011f, f2 - this.f4012g);
    }

    public GlyphLayout setText(CharSequence charSequence, float f, float f2) {
        clear();
        return addText(charSequence, f, f2, 0, charSequence.length(), 0.0f, 8, false);
    }

    public void setUseIntegerPositions(boolean z) {
        this.f4007b = z;
    }

    public void translate(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        if (this.f4007b) {
            f = Math.round(f);
            f2 = Math.round(f2);
        }
        this.f4011f += f;
        this.f4012g += f2;
        float[][] fArr = this.f4015j;
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float[] fArr2 = fArr[i];
            int i2 = this.f4016k[i];
            for (int i3 = 0; i3 < i2; i3 += 5) {
                fArr2[i3] = fArr2[i3] + f;
                int i4 = i3 + 1;
                fArr2[i4] = fArr2[i4] + f2;
            }
        }
    }

    public boolean usesIntegerPositions() {
        return this.f4007b;
    }

    public BitmapFontCache(BitmapFont bitmapFont, boolean z) {
        this.f4008c = new Array<>();
        this.f4009d = new Array<>();
        this.f4013h = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4006a = bitmapFont;
        this.f4007b = z;
        int i = bitmapFont.f3995b.size;
        if (i != 0) {
            this.f4015j = new float[i];
            this.f4016k = new int[i];
            if (i > 1) {
                IntArray[] intArrayArr = new IntArray[i];
                this.f4017l = intArrayArr;
                int length = intArrayArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    this.f4017l[i2] = new IntArray();
                }
            }
            this.f4018m = new int[i];
            return;
        }
        throw new IllegalArgumentException("The specified font must contain at least one texture page.");
    }

    /* renamed from: a */
    public final void m24247a(BitmapFont.Glyph glyph, float f, float f2, float f3) {
        BitmapFont.BitmapFontData bitmapFontData = this.f4006a.f3994a;
        float f4 = bitmapFontData.scaleX;
        float f5 = bitmapFontData.scaleY;
        float f6 = f + (glyph.xoffset * f4);
        float f7 = f2 + (glyph.yoffset * f5);
        float f8 = glyph.width * f4;
        float f9 = glyph.height * f5;
        float f10 = glyph.f4001u;
        float f11 = glyph.f4002u2;
        float f12 = glyph.f4003v;
        float f13 = glyph.f4004v2;
        if (this.f4007b) {
            f6 = Math.round(f6);
            f7 = Math.round(f7);
            f8 = Math.round(f8);
            f9 = Math.round(f9);
        }
        float f14 = f8 + f6;
        float f15 = f9 + f7;
        int i = glyph.page;
        int[] iArr = this.f4016k;
        int i2 = iArr[i];
        iArr[i] = i2 + 20;
        IntArray[] intArrayArr = this.f4017l;
        if (intArrayArr != null) {
            IntArray intArray = intArrayArr[i];
            int i3 = this.f4010e;
            this.f4010e = i3 + 1;
            intArray.add(i3);
        }
        float[] fArr = this.f4015j[i];
        int i4 = i2 + 1;
        fArr[i2] = f6;
        int i5 = i4 + 1;
        fArr[i4] = f7;
        int i6 = i5 + 1;
        fArr[i5] = f3;
        int i7 = i6 + 1;
        fArr[i6] = f10;
        int i8 = i7 + 1;
        fArr[i7] = f12;
        int i9 = i8 + 1;
        fArr[i8] = f6;
        int i10 = i9 + 1;
        fArr[i9] = f15;
        int i11 = i10 + 1;
        fArr[i10] = f3;
        int i12 = i11 + 1;
        fArr[i11] = f10;
        int i13 = i12 + 1;
        fArr[i12] = f13;
        int i14 = i13 + 1;
        fArr[i13] = f14;
        int i15 = i14 + 1;
        fArr[i14] = f15;
        int i16 = i15 + 1;
        fArr[i15] = f3;
        int i17 = i16 + 1;
        fArr[i16] = f11;
        int i18 = i17 + 1;
        fArr[i17] = f13;
        int i19 = i18 + 1;
        fArr[i18] = f14;
        int i20 = i19 + 1;
        fArr[i19] = f7;
        int i21 = i20 + 1;
        fArr[i20] = f3;
        fArr[i21] = f11;
        fArr[i21 + 1] = f12;
    }

    public GlyphLayout addText(CharSequence charSequence, float f, float f2, float f3, int i, boolean z) {
        return addText(charSequence, f, f2, 0, charSequence.length(), f3, i, z, null);
    }

    /* renamed from: b */
    public final void m24246b(GlyphLayout glyphLayout, float f, float f2) {
        int i = glyphLayout.runs.size;
        if (i == 0) {
            return;
        }
        int length = this.f4015j.length;
        int i2 = this.f4006a.f3995b.size;
        if (length < i2) {
            m24243e(i2);
        }
        this.f4008c.add(glyphLayout);
        m24245c(glyphLayout);
        IntArray intArray = glyphLayout.colors;
        float f3 = 0.0f;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i; i6++) {
            GlyphLayout.GlyphRun glyphRun = glyphLayout.runs.get(i6);
            Array<BitmapFont.Glyph> array = glyphRun.glyphs;
            BitmapFont.Glyph[] glyphArr = array.items;
            float[] fArr = glyphRun.xAdvances.items;
            float f4 = f + glyphRun.f4033x;
            float f5 = f2 + glyphRun.f4034y;
            int i7 = array.size;
            int i8 = 0;
            while (i8 < i7) {
                int i9 = i4 + 1;
                if (i4 == i3) {
                    int i10 = i5 + 1;
                    f3 = NumberUtils.intToFloatColor(intArray.get(i10));
                    i5 = i10 + 1;
                    if (i5 < intArray.size) {
                        i3 = intArray.get(i5);
                    } else {
                        i3 = -1;
                    }
                }
                f4 += fArr[i8];
                m24247a(glyphArr[i8], f4, f5, f3);
                i8++;
                i4 = i9;
            }
        }
        this.f4014i = Color.WHITE_FLOAT_BITS;
    }

    /* renamed from: c */
    public final void m24245c(GlyphLayout glyphLayout) {
        if (this.f4015j.length == 1) {
            m24244d(0, glyphLayout.glyphCount);
            return;
        }
        int[] iArr = this.f4018m;
        Arrays.fill(iArr, 0);
        int i = glyphLayout.runs.size;
        for (int i2 = 0; i2 < i; i2++) {
            Array<BitmapFont.Glyph> array = glyphLayout.runs.get(i2).glyphs;
            BitmapFont.Glyph[] glyphArr = array.items;
            int i3 = array.size;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = glyphArr[i4].page;
                iArr[i5] = iArr[i5] + 1;
            }
        }
        int length = iArr.length;
        for (int i6 = 0; i6 < length; i6++) {
            m24244d(i6, iArr[i6]);
        }
    }

    /* renamed from: d */
    public final void m24244d(int i, int i2) {
        IntArray[] intArrayArr = this.f4017l;
        if (intArrayArr != null) {
            IntArray intArray = intArrayArr[i];
            if (i2 > intArray.items.length) {
                intArray.ensureCapacity(i2 - intArray.size);
            }
        }
        int i3 = this.f4016k[i];
        int i4 = (i2 * 20) + i3;
        float[][] fArr = this.f4015j;
        float[] fArr2 = fArr[i];
        if (fArr2 == null) {
            fArr[i] = new float[i4];
        } else if (fArr2.length < i4) {
            float[] fArr3 = new float[i4];
            System.arraycopy(fArr2, 0, fArr3, 0, i3);
            this.f4015j[i] = fArr3;
        }
    }

    /* renamed from: e */
    public final void m24243e(int i) {
        float[][] fArr = new float[i];
        float[][] fArr2 = this.f4015j;
        int i2 = 0;
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        this.f4015j = fArr;
        int[] iArr = new int[i];
        int[] iArr2 = this.f4016k;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.f4016k = iArr;
        IntArray[] intArrayArr = new IntArray[i];
        IntArray[] intArrayArr2 = this.f4017l;
        if (intArrayArr2 != null) {
            int length = intArrayArr2.length;
            System.arraycopy(intArrayArr2, 0, intArrayArr, 0, intArrayArr2.length);
            i2 = length;
        }
        while (i2 < i) {
            intArrayArr[i2] = new IntArray();
            i2++;
        }
        this.f4017l = intArrayArr;
        this.f4018m = new int[i];
    }

    public float[] getVertices(int i) {
        return this.f4015j[i];
    }

    public void setAlphas(float f) {
        int i = ((int) (f * 254.0f)) << 24;
        int length = this.f4015j.length;
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < length; i2++) {
            float[] fArr = this.f4015j[i2];
            int i3 = this.f4016k[i2];
            for (int i4 = 2; i4 < i3; i4 += 5) {
                float f4 = fArr[i4];
                if (f4 == f2 && i4 != 2) {
                    fArr[i4] = f3;
                } else {
                    f3 = NumberUtils.intToFloatColor((NumberUtils.floatToIntColor(f4) & 16777215) | i);
                    fArr[i4] = f3;
                    f2 = f4;
                }
            }
        }
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f4013h.set(f, f2, f3, f4);
    }

    public void tint(Color color) {
        BitmapFontCache bitmapFontCache = this;
        float floatBits = color.toFloatBits();
        if (bitmapFontCache.f4014i == floatBits) {
            return;
        }
        bitmapFontCache.f4014i = floatBits;
        float[][] fArr = bitmapFontCache.f4015j;
        Color color2 = f4005n;
        int[] iArr = bitmapFontCache.f4018m;
        Arrays.fill(iArr, 0);
        int i = bitmapFontCache.f4008c.size;
        int i2 = 0;
        while (i2 < i) {
            GlyphLayout glyphLayout = bitmapFontCache.f4008c.get(i2);
            IntArray intArray = glyphLayout.colors;
            float f = 0.0f;
            int i3 = glyphLayout.runs.size;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                Array<BitmapFont.Glyph> array = glyphLayout.runs.get(i7).glyphs;
                BitmapFont.Glyph[] glyphArr = array.items;
                int i8 = array.size;
                int i9 = 0;
                while (i9 < i8) {
                    int i10 = i5 + 1;
                    if (i5 == i4) {
                        int i11 = i6 + 1;
                        Color.abgr8888ToColor(color2, intArray.get(i11));
                        f = color2.mul(color).toFloatBits();
                        i6 = i11 + 1;
                        if (i6 < intArray.size) {
                            i4 = intArray.get(i6);
                        } else {
                            i4 = -1;
                        }
                    }
                    Color color3 = color2;
                    int i12 = glyphArr[i9].page;
                    int i13 = iArr[i12];
                    int i14 = (i13 * 20) + 2;
                    iArr[i12] = i13 + 1;
                    float[] fArr2 = fArr[i12];
                    fArr2[i14] = f;
                    fArr2[i14 + 5] = f;
                    fArr2[i14 + 10] = f;
                    fArr2[i14 + 15] = f;
                    i9++;
                    i5 = i10;
                    color2 = color3;
                }
            }
            i2++;
            bitmapFontCache = this;
        }
    }

    public GlyphLayout addText(CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z) {
        return addText(charSequence, f, f2, i, i2, f3, i3, z, null);
    }

    public GlyphLayout setText(CharSequence charSequence, float f, float f2, float f3, int i, boolean z) {
        clear();
        return addText(charSequence, f, f2, 0, charSequence.length(), f3, i, z);
    }

    public GlyphLayout addText(CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z, String str) {
        GlyphLayout glyphLayout = (GlyphLayout) Pools.obtain(GlyphLayout.class);
        this.f4009d.add(glyphLayout);
        glyphLayout.setText(this.f4006a, charSequence, i, i2, this.f4013h, f3, i3, z, str);
        addText(glyphLayout, f, f2);
        return glyphLayout;
    }

    public void setColors(Color color) {
        setColors(color.toFloatBits());
    }

    public GlyphLayout setText(CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z) {
        clear();
        return addText(charSequence, f, f2, i, i2, f3, i3, z);
    }

    public void draw(Batch batch, int i, int i2) {
        if (this.f4015j.length == 1) {
            batch.draw(this.f4006a.getRegion().getTexture(), this.f4015j[0], i * 20, (i2 - i) * 20);
            return;
        }
        Array<TextureRegion> regions = this.f4006a.getRegions();
        int length = this.f4015j.length;
        for (int i3 = 0; i3 < length; i3++) {
            IntArray intArray = this.f4017l[i3];
            int i4 = intArray.size;
            int i5 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = intArray.get(i7);
                if (i8 >= i2) {
                    break;
                }
                if (i5 == -1 && i8 >= i) {
                    i5 = i7;
                }
                if (i8 >= i) {
                    i6++;
                }
            }
            if (i5 != -1 && i6 != 0) {
                batch.draw(regions.get(i3).getTexture(), this.f4015j[i3], i5 * 20, i6 * 20);
            }
        }
    }

    public void setColors(float f, float f2, float f3, float f4) {
        int i = ((int) (f2 * 255.0f)) << 8;
        int i2 = (int) (f * 255.0f);
        setColors(NumberUtils.intToFloatColor(i2 | i | (((int) (f3 * 255.0f)) << 16) | (((int) (f4 * 255.0f)) << 24)));
    }

    public void setColors(Color color, int i, int i2) {
        setColors(color.toFloatBits(), i, i2);
    }

    public GlyphLayout setText(CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z, String str) {
        clear();
        return addText(charSequence, f, f2, i, i2, f3, i3, z, str);
    }

    public void addText(GlyphLayout glyphLayout, float f, float f2) {
        m24246b(glyphLayout, f, f2 + this.f4006a.f3994a.ascent);
    }

    public void setColors(float f, int i, int i2) {
        float[][] fArr = this.f4015j;
        if (fArr.length == 1) {
            float[] fArr2 = fArr[0];
            int min = Math.min(i2 * 20, this.f4016k[0]);
            for (int i3 = (i * 20) + 2; i3 < min; i3 += 5) {
                fArr2[i3] = f;
            }
            return;
        }
        int length = fArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            float[] fArr3 = this.f4015j[i4];
            IntArray intArray = this.f4017l[i4];
            int i5 = intArray.size;
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = intArray.items[i6];
                if (i7 >= i2) {
                    break;
                }
                if (i7 >= i) {
                    int i8 = (i6 * 20) + 2;
                    fArr3[i8] = f;
                    fArr3[i8 + 5] = f;
                    fArr3[i8 + 10] = f;
                    fArr3[i8 + 15] = f;
                }
            }
        }
    }

    public void setText(GlyphLayout glyphLayout, float f, float f2) {
        clear();
        addText(glyphLayout, f, f2);
    }

    public void draw(Batch batch, float f) {
        if (f == 1.0f) {
            draw(batch);
            return;
        }
        Color color = getColor();
        float f2 = color.f3889a;
        color.f3889a = f * f2;
        setColors(color);
        draw(batch);
        color.f3889a = f2;
        setColors(color);
    }
}
