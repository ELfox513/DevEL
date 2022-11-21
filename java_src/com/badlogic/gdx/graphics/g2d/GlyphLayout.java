package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Colors;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
/* loaded from: classes.dex */
public class GlyphLayout implements Pool.Poolable {

    /* renamed from: a */
    public static final Pool<GlyphRun> f4031a = Pools.get(GlyphRun.class);

    /* renamed from: b */
    public static final IntArray f4032b = new IntArray(4);
    public int glyphCount;
    public float height;
    public float width;
    public final Array<GlyphRun> runs = new Array<>(1);
    public final IntArray colors = new IntArray(2);

    /* loaded from: classes.dex */
    public static class GlyphRun implements Pool.Poolable {
        public float width;

        /* renamed from: x */
        public float f4033x;

        /* renamed from: y */
        public float f4034y;
        public Array<BitmapFont.Glyph> glyphs = new Array<>();
        public FloatArray xAdvances = new FloatArray();

        /* renamed from: a */
        public void m24220a(GlyphRun glyphRun) {
            this.glyphs.addAll(glyphRun.glyphs);
            if (this.xAdvances.notEmpty()) {
                FloatArray floatArray = this.xAdvances;
                floatArray.size--;
            }
            this.xAdvances.addAll(glyphRun.xAdvances);
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.glyphs.clear();
            this.xAdvances.clear();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(this.glyphs.size + 32);
            Array<BitmapFont.Glyph> array = this.glyphs;
            int i = array.size;
            for (int i2 = 0; i2 < i; i2++) {
                sb.append((char) array.get(i2).f4000id);
            }
            sb.append(", ");
            sb.append(this.f4033x);
            sb.append(", ");
            sb.append(this.f4034y);
            sb.append(", ");
            sb.append(this.width);
            return sb.toString();
        }
    }

    public GlyphLayout() {
    }

    /* renamed from: c */
    public final float m24226c(BitmapFont.Glyph glyph, BitmapFont.BitmapFontData bitmapFontData) {
        return ((glyph.width + glyph.xoffset) * bitmapFontData.scaleX) - bitmapFontData.padRight;
    }

    /* renamed from: d */
    public final float m24225d(Array<BitmapFont.Glyph> array, BitmapFont.BitmapFontData bitmapFontData) {
        return ((-array.first().xoffset) * bitmapFontData.scaleX) - bitmapFontData.padLeft;
    }

    /* renamed from: e */
    public final int m24224e(CharSequence charSequence, int i, int i2) {
        if (i == i2) {
            return -1;
        }
        char charAt = charSequence.charAt(i);
        int i3 = 0;
        if (charAt != '#') {
            if (charAt != '[') {
                if (charAt != ']') {
                    for (int i4 = i + 1; i4 < i2; i4++) {
                        if (charSequence.charAt(i4) == ']') {
                            Color color = Colors.get(charSequence.subSequence(i, i4).toString());
                            if (color == null) {
                                return -1;
                            }
                            f4032b.add(color.toIntBits());
                            return i4 - i;
                        }
                    }
                    return -1;
                }
                IntArray intArray = f4032b;
                if (intArray.size > 1) {
                    intArray.pop();
                }
                return 0;
            }
            return -2;
        }
        int i5 = i + 1;
        while (true) {
            if (i5 >= i2) {
                break;
            }
            char charAt2 = charSequence.charAt(i5);
            if (charAt2 == ']') {
                if (i5 >= i + 2 && i5 <= i + 9) {
                    int i6 = i5 - i;
                    if (i6 < 8) {
                        i3 = (i3 << ((9 - i6) << 2)) | 255;
                    }
                    f4032b.add(Integer.reverseBytes(i3));
                    return i6;
                }
            } else {
                int i7 = (i3 << 4) + charAt2;
                if (charAt2 >= '0' && charAt2 <= '9') {
                    i3 = i7 - 48;
                } else if (charAt2 >= 'A' && charAt2 <= 'F') {
                    i3 = i7 - 55;
                } else if (charAt2 < 'a' || charAt2 > 'f') {
                    break;
                } else {
                    i3 = i7 - 87;
                }
                i5++;
            }
        }
        return -1;
    }

    public void setText(BitmapFont bitmapFont, CharSequence charSequence) {
        setText(bitmapFont, charSequence, 0, charSequence.length(), bitmapFont.getColor(), 0.0f, 8, false, null);
    }

    /* renamed from: a */
    public final void m24228a(float f, int i) {
        float f2;
        if ((i & 8) == 0) {
            boolean z = true;
            if ((i & 1) == 0) {
                z = false;
            }
            Array<GlyphRun> array = this.runs;
            GlyphRun[] glyphRunArr = array.items;
            int i2 = array.size;
            for (int i3 = 0; i3 < i2; i3++) {
                GlyphRun glyphRun = glyphRunArr[i3];
                float f3 = glyphRun.f4033x;
                if (z) {
                    f2 = (f - glyphRun.width) * 0.5f;
                } else {
                    f2 = f - glyphRun.width;
                }
                glyphRun.f4033x = f3 + f2;
            }
        }
    }

    /* renamed from: b */
    public final void m24227b(BitmapFont.BitmapFontData bitmapFontData) {
        Array<GlyphRun> array = this.runs;
        GlyphRun[] glyphRunArr = array.items;
        int i = array.size;
        float f = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            GlyphRun glyphRun = glyphRunArr[i2];
            float[] fArr = glyphRun.xAdvances.items;
            float f2 = glyphRun.f4033x + fArr[0];
            Array<BitmapFont.Glyph> array2 = glyphRun.glyphs;
            BitmapFont.Glyph[] glyphArr = array2.items;
            int i3 = array2.size;
            int i4 = 0;
            float f3 = 0.0f;
            while (i4 < i3) {
                f3 = Math.max(f3, m24226c(glyphArr[i4], bitmapFontData) + f2);
                i4++;
                f2 += fArr[i4];
            }
            float max = Math.max(f2, f3);
            float f4 = glyphRun.f4033x;
            float f5 = max - f4;
            glyphRun.width = f5;
            f = Math.max(f, f4 + f5);
        }
        this.width = f;
    }

    /* renamed from: f */
    public final void m24223f(BitmapFont.BitmapFontData bitmapFontData, GlyphRun glyphRun) {
        BitmapFont.Glyph peek = glyphRun.glyphs.peek();
        if (!peek.fixedWidth) {
            FloatArray floatArray = glyphRun.xAdvances;
            floatArray.items[floatArray.size - 1] = m24226c(peek, bitmapFontData);
        }
    }

    /* renamed from: g */
    public final void m24222g(BitmapFont.BitmapFontData bitmapFontData, GlyphRun glyphRun, float f, String str) {
        int i = glyphRun.glyphs.size;
        GlyphRun obtain = f4031a.obtain();
        bitmapFontData.getGlyphs(obtain, str, 0, str.length(), null);
        float f2 = 0.0f;
        if (obtain.xAdvances.size > 0) {
            m24223f(bitmapFontData, obtain);
            FloatArray floatArray = obtain.xAdvances;
            float[] fArr = floatArray.items;
            int i2 = floatArray.size;
            for (int i3 = 1; i3 < i2; i3++) {
                f2 += fArr[i3];
            }
        }
        float f3 = f - f2;
        int i4 = 0;
        float f4 = glyphRun.f4033x;
        float[] fArr2 = glyphRun.xAdvances.items;
        while (i4 < glyphRun.xAdvances.size) {
            f4 += fArr2[i4];
            if (f4 > f3) {
                break;
            }
            i4++;
        }
        if (i4 > 1) {
            glyphRun.glyphs.truncate(i4 - 1);
            glyphRun.xAdvances.truncate(i4);
            m24223f(bitmapFontData, glyphRun);
            FloatArray floatArray2 = obtain.xAdvances;
            int i5 = floatArray2.size;
            if (i5 > 0) {
                glyphRun.xAdvances.addAll(floatArray2, 1, i5 - 1);
            }
        } else {
            glyphRun.glyphs.clear();
            glyphRun.xAdvances.clear();
            glyphRun.xAdvances.addAll(obtain.xAdvances);
        }
        int i6 = i - glyphRun.glyphs.size;
        if (i6 > 0) {
            this.glyphCount -= i6;
            if (bitmapFontData.markupEnabled) {
                while (true) {
                    IntArray intArray = this.colors;
                    int i7 = intArray.size;
                    if (i7 <= 2 || intArray.get(i7 - 2) < this.glyphCount) {
                        break;
                    }
                    this.colors.size -= 2;
                }
            }
        }
        glyphRun.glyphs.addAll(obtain.glyphs);
        this.glyphCount += str.length();
        f4031a.free(obtain);
    }

    /* renamed from: h */
    public final GlyphRun m24221h(BitmapFont.BitmapFontData bitmapFontData, GlyphRun glyphRun, int i) {
        int i2;
        Array<BitmapFont.Glyph> array = glyphRun.glyphs;
        int i3 = array.size;
        FloatArray floatArray = glyphRun.xAdvances;
        int i4 = i;
        while (i4 > 0 && bitmapFontData.isWhitespace((char) array.get(i4 - 1).f4000id)) {
            i4--;
        }
        while (i < i3 && bitmapFontData.isWhitespace((char) array.get(i).f4000id)) {
            i++;
        }
        GlyphRun glyphRun2 = null;
        if (i < i3) {
            glyphRun2 = f4031a.obtain();
            Array<BitmapFont.Glyph> array2 = glyphRun2.glyphs;
            array2.addAll(array, 0, i4);
            array.removeRange(0, i - 1);
            glyphRun.glyphs = array2;
            glyphRun2.glyphs = array;
            FloatArray floatArray2 = glyphRun2.xAdvances;
            floatArray2.addAll(floatArray, 0, i4 + 1);
            floatArray.removeRange(1, i);
            floatArray.items[0] = m24225d(array, bitmapFontData);
            glyphRun.xAdvances = floatArray2;
            glyphRun2.xAdvances = floatArray;
            int i5 = glyphRun.glyphs.size;
            int i6 = glyphRun2.glyphs.size;
            int i7 = (i3 - i5) - i6;
            int i8 = this.glyphCount - i7;
            this.glyphCount = i8;
            if (bitmapFontData.markupEnabled && i7 > 0) {
                int i9 = i8 - i6;
                for (int i10 = this.colors.size - 2; i10 >= 2; i10 -= 2) {
                    int i11 = this.colors.get(i10);
                    if (i11 <= i9) {
                        break;
                    }
                    this.colors.set(i10, i11 - i7);
                }
            }
        } else {
            array.truncate(i4);
            floatArray.truncate(i4 + 1);
            int i12 = i - i4;
            if (i12 > 0) {
                this.glyphCount -= i12;
                if (bitmapFontData.markupEnabled) {
                    IntArray intArray = this.colors;
                    if (intArray.get(intArray.size - 2) > this.glyphCount) {
                        int peek = this.colors.peek();
                        while (true) {
                            IntArray intArray2 = this.colors;
                            int i13 = intArray2.get(intArray2.size - 2);
                            i2 = this.glyphCount;
                            if (i13 <= i2) {
                                break;
                            }
                            this.colors.size -= 2;
                        }
                        IntArray intArray3 = this.colors;
                        intArray3.set(intArray3.size - 2, i2);
                        IntArray intArray4 = this.colors;
                        intArray4.set(intArray4.size - 1, peek);
                    }
                }
            }
        }
        if (i4 == 0) {
            f4031a.free(glyphRun);
            this.runs.pop();
        } else {
            m24223f(bitmapFontData, glyphRun);
        }
        return glyphRun2;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        f4031a.freeAll(this.runs);
        this.runs.clear();
        this.colors.clear();
        this.glyphCount = 0;
        this.width = 0.0f;
        this.height = 0.0f;
    }

    public void setText(BitmapFont bitmapFont, CharSequence charSequence, Color color, float f, int i, boolean z) {
        setText(bitmapFont, charSequence, 0, charSequence.length(), color, f, i, z, null);
    }

    public String toString() {
        if (this.runs.size == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append(this.width);
        sb.append('x');
        sb.append(this.height);
        sb.append('\n');
        int i = this.runs.size;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(this.runs.get(i2).toString());
            sb.append('\n');
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ab, code lost:
        if (r7.f4033x != 0.0f) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setText(com.badlogic.gdx.graphics.g2d.BitmapFont r26, java.lang.CharSequence r27, int r28, int r29, com.badlogic.gdx.graphics.Color r30, float r31, int r32, boolean r33, @com.badlogic.gdx.utils.Null java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.GlyphLayout.setText(com.badlogic.gdx.graphics.g2d.BitmapFont, java.lang.CharSequence, int, int, com.badlogic.gdx.graphics.Color, float, int, boolean, java.lang.String):void");
    }

    public GlyphLayout(BitmapFont bitmapFont, CharSequence charSequence) {
        setText(bitmapFont, charSequence);
    }

    public GlyphLayout(BitmapFont bitmapFont, CharSequence charSequence, Color color, float f, int i, boolean z) {
        setText(bitmapFont, charSequence, color, f, i, z);
    }

    public GlyphLayout(BitmapFont bitmapFont, CharSequence charSequence, int i, int i2, Color color, float f, int i3, boolean z, String str) {
        setText(bitmapFont, charSequence, i, i2, color, f, i3, z, str);
    }
}
