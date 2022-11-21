package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.StringBuilder;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Label */
/* loaded from: classes.dex */
public class Label extends Widget {

    /* renamed from: Y */
    public static final Color f5902Y = new Color();

    /* renamed from: Z */
    public static final GlyphLayout f5903Z = new GlyphLayout();

    /* renamed from: I */
    public LabelStyle f5904I;

    /* renamed from: J */
    public final GlyphLayout f5905J;

    /* renamed from: K */
    public float f5906K;

    /* renamed from: L */
    public float f5907L;

    /* renamed from: M */
    public final StringBuilder f5908M;

    /* renamed from: N */
    public int f5909N;

    /* renamed from: O */
    public BitmapFontCache f5910O;

    /* renamed from: P */
    public int f5911P;

    /* renamed from: Q */
    public int f5912Q;

    /* renamed from: R */
    public boolean f5913R;

    /* renamed from: S */
    public float f5914S;

    /* renamed from: T */
    public boolean f5915T;

    /* renamed from: U */
    public float f5916U;

    /* renamed from: V */
    public float f5917V;

    /* renamed from: W */
    public boolean f5918W;
    @Null

    /* renamed from: X */
    public String f5919X;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Label$LabelStyle */
    /* loaded from: classes.dex */
    public static class LabelStyle {
        @Null
        public Drawable background;
        public BitmapFont font;
        @Null
        public Color fontColor;

        public LabelStyle() {
        }

        public LabelStyle(BitmapFont bitmapFont, @Null Color color) {
            this.font = bitmapFont;
            this.fontColor = color;
        }

        public LabelStyle(LabelStyle labelStyle) {
            this.font = labelStyle.font;
            if (labelStyle.fontColor != null) {
                this.fontColor = new Color(labelStyle.fontColor);
            }
            this.background = labelStyle.background;
        }
    }

    public Label(@Null CharSequence charSequence, Skin skin) {
        this(charSequence, (LabelStyle) skin.get(LabelStyle.class));
    }

    /* renamed from: g */
    public void m23824g(GlyphLayout glyphLayout) {
        this.f5915T = false;
        if (this.f5913R && this.f5919X == null) {
            float width = getWidth();
            Drawable drawable = this.f5904I.background;
            if (drawable != null) {
                width = (Math.max(width, drawable.getMinWidth()) - this.f5904I.background.getLeftWidth()) - this.f5904I.background.getRightWidth();
            }
            glyphLayout.setText(this.f5910O.getFont(), this.f5908M, Color.WHITE, width, 8, true);
        } else {
            glyphLayout.setText(this.f5910O.getFont(), this.f5908M);
        }
        this.f5906K = glyphLayout.width;
        this.f5907L = glyphLayout.height;
    }

    public float getFontScaleX() {
        return this.f5916U;
    }

    public float getFontScaleY() {
        return this.f5917V;
    }

    public GlyphLayout getGlyphLayout() {
        return this.f5905J;
    }

    public int getLabelAlign() {
        return this.f5911P;
    }

    public int getLineAlign() {
        return this.f5912Q;
    }

    public LabelStyle getStyle() {
        return this.f5904I;
    }

    public StringBuilder getText() {
        return this.f5908M;
    }

    public boolean getWrap() {
        return this.f5913R;
    }

    public void setAlignment(int i) {
        setAlignment(i, i);
    }

    public void setEllipsis(@Null String str) {
        this.f5919X = str;
    }

    public void setFontScale(float f) {
        setFontScale(f, f);
    }

    public void setFontScaleX(float f) {
        setFontScale(f, this.f5917V);
    }

    public void setFontScaleY(float f) {
        setFontScale(this.f5916U, f);
    }

    public boolean setText(int i) {
        if (this.f5909N == i) {
            return false;
        }
        this.f5908M.clear();
        this.f5908M.append(i);
        this.f5909N = i;
        invalidateHierarchy();
        return true;
    }

    public Label(@Null CharSequence charSequence, Skin skin, String str) {
        this(charSequence, (LabelStyle) skin.get(str, LabelStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f5915T) {
            m23823h();
        }
        float f = 1.0f;
        if (this.f5918W) {
            f = this.f5917V / this.f5904I.font.getScaleY();
        }
        float descent = this.f5907L - ((this.f5904I.font.getDescent() * f) * 2.0f);
        Drawable drawable = this.f5904I.background;
        if (drawable != null) {
            return Math.max(descent + drawable.getTopHeight() + drawable.getBottomHeight(), drawable.getMinHeight());
        }
        return descent;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f5913R) {
            return 0.0f;
        }
        if (this.f5915T) {
            m23823h();
        }
        float f = this.f5906K;
        Drawable drawable = this.f5904I.background;
        if (drawable != null) {
            return Math.max(f + drawable.getLeftWidth() + drawable.getRightWidth(), drawable.getMinWidth());
        }
        return f;
    }

    /* renamed from: h */
    public final void m23823h() {
        BitmapFont font = this.f5910O.getFont();
        float scaleX = font.getScaleX();
        float scaleY = font.getScaleY();
        if (this.f5918W) {
            font.getData().setScale(this.f5916U, this.f5917V);
        }
        m23824g(f5903Z);
        if (this.f5918W) {
            font.getData().setScale(scaleX, scaleY);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        GlyphLayout glyphLayout;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        BitmapFont font = this.f5910O.getFont();
        float scaleX = font.getScaleX();
        float scaleY = font.getScaleY();
        if (this.f5918W) {
            font.getData().setScale(this.f5916U, this.f5917V);
        }
        if (this.f5913R && this.f5919X == null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            float prefHeight = getPrefHeight();
            if (prefHeight != this.f5914S) {
                this.f5914S = prefHeight;
                invalidateHierarchy();
            }
        }
        float width = getWidth();
        float height = getHeight();
        Drawable drawable = this.f5904I.background;
        if (drawable != null) {
            float leftWidth = drawable.getLeftWidth();
            float bottomHeight = drawable.getBottomHeight();
            f = width - (drawable.getLeftWidth() + drawable.getRightWidth());
            f2 = height - (drawable.getBottomHeight() + drawable.getTopHeight());
            f3 = leftWidth;
            f4 = bottomHeight;
        } else {
            f = width;
            f2 = height;
            f3 = 0.0f;
            f4 = 0.0f;
        }
        GlyphLayout glyphLayout2 = this.f5905J;
        if (!z && this.f5908M.indexOf("\n") == -1) {
            f6 = font.getData().capHeight;
            glyphLayout = glyphLayout2;
            f5 = f;
        } else {
            StringBuilder stringBuilder = this.f5908M;
            glyphLayout = glyphLayout2;
            glyphLayout2.setText(font, stringBuilder, 0, stringBuilder.length, Color.WHITE, f, this.f5912Q, z, this.f5919X);
            float f11 = glyphLayout.width;
            float f12 = glyphLayout.height;
            int i = this.f5911P;
            if ((i & 8) == 0) {
                if ((i & 16) != 0) {
                    f7 = f - f11;
                } else {
                    f7 = (f - f11) / 2.0f;
                }
                f3 += f7;
            }
            f5 = f11;
            f6 = f12;
        }
        float f13 = f3;
        int i2 = this.f5911P;
        if ((i2 & 2) != 0) {
            if (this.f5910O.getFont().isFlipped()) {
                f10 = 0.0f;
            } else {
                f10 = f2 - f6;
            }
            f8 = f4 + f10 + this.f5904I.font.getDescent();
        } else if ((i2 & 4) != 0) {
            if (this.f5910O.getFont().isFlipped()) {
                f9 = f2 - f6;
            } else {
                f9 = 0.0f;
            }
            f8 = (f4 + f9) - this.f5904I.font.getDescent();
        } else {
            f8 = f4 + ((f2 - f6) / 2.0f);
        }
        if (!this.f5910O.getFont().isFlipped()) {
            f8 += f6;
        }
        StringBuilder stringBuilder2 = this.f5908M;
        glyphLayout.setText(font, stringBuilder2, 0, stringBuilder2.length, Color.WHITE, f5, this.f5912Q, z, this.f5919X);
        this.f5910O.setText(glyphLayout, f13, f8);
        if (this.f5918W) {
            font.getData().setScale(scaleX, scaleY);
        }
    }

    public void setAlignment(int i, int i2) {
        this.f5911P = i;
        if ((i2 & 8) != 0) {
            this.f5912Q = 8;
        } else if ((i2 & 16) != 0) {
            this.f5912Q = 16;
        } else {
            this.f5912Q = 1;
        }
        invalidate();
    }

    public void setEllipsis(boolean z) {
        if (z) {
            this.f5919X = "...";
        } else {
            this.f5919X = null;
        }
    }

    public void setFontScale(float f, float f2) {
        this.f5918W = true;
        this.f5916U = f;
        this.f5917V = f2;
        invalidateHierarchy();
    }

    public void setStyle(LabelStyle labelStyle) {
        if (labelStyle != null) {
            BitmapFont bitmapFont = labelStyle.font;
            if (bitmapFont != null) {
                this.f5904I = labelStyle;
                this.f5910O = bitmapFont.newFontCache();
                invalidateHierarchy();
                return;
            }
            throw new IllegalArgumentException("Missing LabelStyle font.");
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public void setWrap(boolean z) {
        this.f5913R = z;
        invalidateHierarchy();
    }

    public boolean textEquals(CharSequence charSequence) {
        StringBuilder stringBuilder = this.f5908M;
        int i = stringBuilder.length;
        char[] cArr = stringBuilder.chars;
        if (i != charSequence.length()) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (cArr[i2] != charSequence.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public Label(@Null CharSequence charSequence, Skin skin, String str, Color color) {
        this(charSequence, new LabelStyle(skin.getFont(str), color));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        Color color = f5902Y.set(getColor());
        float f2 = color.f3889a * f;
        color.f3889a = f2;
        if (this.f5904I.background != null) {
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, f2);
            this.f5904I.background.draw(batch, getX(), getY(), getWidth(), getHeight());
        }
        Color color2 = this.f5904I.fontColor;
        if (color2 != null) {
            color.mul(color2);
        }
        this.f5910O.tint(color);
        this.f5910O.setPosition(getX(), getY());
        this.f5910O.draw(batch);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        super.invalidate();
        this.f5915T = true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public String toString() {
        String str;
        String name = getName();
        if (name != null) {
            return name;
        }
        String name2 = getClass().getName();
        int lastIndexOf = name2.lastIndexOf(46);
        if (lastIndexOf != -1) {
            name2 = name2.substring(lastIndexOf + 1);
        }
        StringBuilder sb = new StringBuilder();
        if (name2.indexOf(36) != -1) {
            str = "Label ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name2);
        sb.append(": ");
        sb.append((Object) this.f5908M);
        return sb.toString();
    }

    public Label(@Null CharSequence charSequence, Skin skin, String str, String str2) {
        this(charSequence, new LabelStyle(skin.getFont(str), skin.getColor(str2)));
    }

    public Label(@Null CharSequence charSequence, LabelStyle labelStyle) {
        this.f5905J = new GlyphLayout();
        StringBuilder stringBuilder = new StringBuilder();
        this.f5908M = stringBuilder;
        this.f5909N = Integer.MIN_VALUE;
        this.f5911P = 8;
        this.f5912Q = 8;
        this.f5915T = true;
        this.f5916U = 1.0f;
        this.f5917V = 1.0f;
        this.f5918W = false;
        if (charSequence != null) {
            stringBuilder.append(charSequence);
        }
        setStyle(labelStyle);
        if (charSequence == null || charSequence.length() <= 0) {
            return;
        }
        setSize(getPrefWidth(), getPrefHeight());
    }

    public void setText(@Null CharSequence charSequence) {
        if (charSequence == null) {
            StringBuilder stringBuilder = this.f5908M;
            if (stringBuilder.length == 0) {
                return;
            }
            stringBuilder.clear();
        } else if (charSequence instanceof StringBuilder) {
            if (this.f5908M.equals(charSequence)) {
                return;
            }
            this.f5908M.clear();
            this.f5908M.append((StringBuilder) charSequence);
        } else if (textEquals(charSequence)) {
            return;
        } else {
            this.f5908M.clear();
            this.f5908M.append(charSequence);
        }
        this.f5909N = Integer.MIN_VALUE;
        invalidateHierarchy();
    }
}
