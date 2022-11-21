package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextField;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextArea */
/* loaded from: classes.dex */
public class TextArea extends TextField {

    /* renamed from: A0 */
    public int f6115A0;

    /* renamed from: B0 */
    public int f6116B0;

    /* renamed from: C0 */
    public int f6117C0;

    /* renamed from: D0 */
    public float f6118D0;

    /* renamed from: E0 */
    public float f6119E0;

    /* renamed from: y0 */
    public IntArray f6120y0;

    /* renamed from: z0 */
    public String f6121z0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextArea$TextAreaListener */
    /* loaded from: classes.dex */
    public class TextAreaListener extends TextField.TextFieldClickListener {
        public TextAreaListener() {
            super();
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener
        /* renamed from: a */
        public boolean mo23743a(char c) {
            return TextArea.this.f6143X && c == '\t';
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener
        /* renamed from: b */
        public void mo23742b(boolean z) {
            if (!z) {
                TextArea textArea = TextArea.this;
                if (textArea.f6115A0 < textArea.getLines()) {
                    TextArea textArea2 = TextArea.this;
                    int i = textArea2.f6115A0;
                    int i2 = (i * 2) + 1;
                    IntArray intArray = textArea2.f6120y0;
                    if (i2 < intArray.size) {
                        textArea2.f6129J = intArray.get((i * 2) + 1);
                        return;
                    }
                    return;
                }
            }
            TextArea textArea3 = TextArea.this;
            textArea3.f6129J = textArea3.f6128I.length();
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener
        /* renamed from: c */
        public void mo23741c(boolean z) {
            if (z) {
                TextArea.this.f6129J = 0;
                return;
            }
            TextArea textArea = TextArea.this;
            int i = textArea.f6115A0;
            int i2 = i * 2;
            IntArray intArray = textArea.f6120y0;
            if (i2 < intArray.size) {
                textArea.f6129J = intArray.get(i * 2);
            }
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener
        /* renamed from: e */
        public void mo23739e(float f, float f2) {
            TextArea textArea = TextArea.this;
            textArea.f6118D0 = -1.0f;
            TextField.TextFieldStyle textFieldStyle = textArea.f6135P;
            Drawable drawable = textFieldStyle.background;
            BitmapFont bitmapFont = textFieldStyle.font;
            float height = textArea.getHeight();
            if (drawable != null) {
                height -= drawable.getTopHeight();
                f -= drawable.getLeftWidth();
            }
            float max = Math.max(0.0f, f);
            if (drawable != null) {
                f2 -= drawable.getTopHeight();
            }
            TextArea textArea2 = TextArea.this;
            TextArea textArea3 = TextArea.this;
            textArea2.f6115A0 = ((int) Math.floor((height - f2) / bitmapFont.getLineHeight())) + textArea3.f6116B0;
            textArea3.f6115A0 = Math.max(0, Math.min(textArea3.f6115A0, textArea3.getLines() - 1));
            super.mo23739e(max, f2);
            TextArea.this.m23770F();
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean keyDown(com.badlogic.gdx.scenes.scene2d.InputEvent r4, int r5) {
            /*
                r3 = this;
                boolean r4 = super.keyDown(r4, r5)
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r0 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                boolean r0 = r0.hasKeyboardFocus()
                if (r0 == 0) goto L7a
                com.badlogic.gdx.Input r4 = com.badlogic.gdx.Gdx.input
                r0 = 59
                boolean r4 = r4.isKeyPressed(r0)
                r0 = 0
                r1 = 1
                if (r4 != 0) goto L25
                com.badlogic.gdx.Input r4 = com.badlogic.gdx.Gdx.input
                r2 = 60
                boolean r4 = r4.isKeyPressed(r2)
                if (r4 == 0) goto L23
                goto L25
            L23:
                r4 = 0
                goto L26
            L25:
                r4 = 1
            L26:
                r2 = 20
                if (r5 != r2) goto L48
                if (r4 == 0) goto L39
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                boolean r0 = r4.f6131L
                if (r0 != 0) goto L3e
                int r0 = r4.f6129J
                r4.f6130K = r0
                r4.f6131L = r1
                goto L3e
            L39:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                r4.clearSelection()
            L3e:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                int r0 = r4.f6115A0
                int r0 = r0 + r1
                r4.moveCursorLine(r0)
            L46:
                r0 = 1
                goto L6f
            L48:
                r2 = 19
                if (r5 != r2) goto L69
                if (r4 == 0) goto L5b
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                boolean r0 = r4.f6131L
                if (r0 != 0) goto L60
                int r0 = r4.f6129J
                r4.f6130K = r0
                r4.f6131L = r1
                goto L60
            L5b:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                r4.clearSelection()
            L60:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                int r0 = r4.f6115A0
                int r0 = r0 - r1
                r4.moveCursorLine(r0)
                goto L46
            L69:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                r2 = -1082130432(0xffffffffbf800000, float:-1.0)
                r4.f6118D0 = r2
            L6f:
                if (r0 == 0) goto L74
                r3.m23740d(r5)
            L74:
                com.badlogic.gdx.scenes.scene2d.ui.TextArea r4 = com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.this
                r4.m23771E()
                return r1
            L7a:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.TextAreaListener.keyDown(com.badlogic.gdx.scenes.scene2d.InputEvent, int):boolean");
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
        public boolean keyTyped(InputEvent inputEvent, char c) {
            boolean keyTyped = super.keyTyped(inputEvent, c);
            TextArea.this.m23771E();
            return keyTyped;
        }
    }

    public TextArea(String str, Skin skin) {
        super(str, skin);
    }

    /* renamed from: D */
    public final int m23772D(int i) {
        int i2 = 0;
        while (true) {
            IntArray intArray = this.f6120y0;
            if (i2 >= intArray.size || i <= intArray.items[i2]) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public int getCursorLine() {
        return this.f6115A0;
    }

    public int getFirstLineShowing() {
        return this.f6116B0;
    }

    public int getLines() {
        return (this.f6120y0.size / 2) + (newLineAtEnd() ? 1 : 0);
    }

    public int getLinesShowing() {
        return this.f6117C0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: j */
    public InputListener mo23760j() {
        return new TextAreaListener();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: m */
    public void mo23757m(Drawable drawable, Batch batch, BitmapFont bitmapFont, float f, float f2) {
        drawable.draw(batch, f + getCursorX(), f2 + getCursorY(), drawable.getMinWidth(), bitmapFont.getLineHeight());
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: p */
    public void mo23754p(Batch batch, BitmapFont bitmapFont, float f, float f2) {
        float f3 = (-(this.f6135P.font.getLineHeight() - this.f6155j0)) / 2.0f;
        for (int i = this.f6116B0 * 2; i < (this.f6116B0 + this.f6117C0) * 2; i += 2) {
            IntArray intArray = this.f6120y0;
            if (i < intArray.size) {
                int[] iArr = intArray.items;
                bitmapFont.draw(batch, this.f6137R, f, f2 + f3, iArr[i], iArr[i + 1], 0.0f, 8, false);
                f3 -= bitmapFont.getLineHeight();
            } else {
                return;
            }
        }
    }

    public void setPrefRows(float f) {
        this.f6119E0 = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void sizeChanged() {
        float topHeight;
        this.f6121z0 = null;
        TextField.TextFieldStyle textFieldStyle = this.f6135P;
        BitmapFont bitmapFont = textFieldStyle.font;
        Drawable drawable = textFieldStyle.background;
        float height = getHeight();
        if (drawable == null) {
            topHeight = 0.0f;
        } else {
            topHeight = drawable.getTopHeight() + drawable.getBottomHeight();
        }
        this.f6117C0 = (int) Math.floor((height - topHeight) / bitmapFont.getLineHeight());
    }

    public TextArea(String str, Skin skin, String str2) {
        super(str, skin, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        if (r0.charAt(r0.length() - 1) == '\r') goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r3[r2] == r0) goto L9;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23770F() {
        /*
            r5 = this;
            int r0 = r5.f6129J
            int r0 = r5.m23772D(r0)
            int r1 = r0 / 2
            int r2 = r0 % 2
            if (r2 == 0) goto L20
            int r2 = r0 + 1
            com.badlogic.gdx.utils.IntArray r3 = r5.f6120y0
            int r4 = r3.size
            if (r2 >= r4) goto L20
            int r4 = r5.f6129J
            int[] r3 = r3.items
            r0 = r3[r0]
            if (r4 != r0) goto L20
            r2 = r3[r2]
            if (r2 == r0) goto L52
        L20:
            com.badlogic.gdx.utils.IntArray r0 = r5.f6120y0
            int r0 = r0.size
            int r0 = r0 / 2
            if (r1 < r0) goto L50
            java.lang.String r0 = r5.f6128I
            int r0 = r0.length()
            if (r0 == 0) goto L50
            java.lang.String r0 = r5.f6128I
            int r2 = r0.length()
            int r2 = r2 + (-1)
            char r0 = r0.charAt(r2)
            r2 = 10
            if (r0 == r2) goto L50
            java.lang.String r0 = r5.f6128I
            int r2 = r0.length()
            int r2 = r2 + (-1)
            char r0 = r0.charAt(r2)
            r2 = 13
            if (r0 != r2) goto L52
        L50:
            r5.f6115A0 = r1
        L52:
            r5.m23769G()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.TextArea.m23770F():void");
    }

    /* renamed from: G */
    public void m23769G() {
        int i;
        int i2 = this.f6115A0;
        int i3 = this.f6116B0;
        if (i2 != i3) {
            if (i2 >= i3) {
                i = 1;
            } else {
                i = -1;
            }
            while (true) {
                int i4 = this.f6116B0;
                int i5 = this.f6115A0;
                if (i4 > i5 || (this.f6117C0 + i4) - 1 < i5) {
                    this.f6116B0 = i4 + i;
                } else {
                    return;
                }
            }
        }
    }

    public float getCursorX() {
        BitmapFont.BitmapFontData data = this.f6135P.font.getData();
        float f = 0.0f;
        if (this.f6129J < this.f6134O.size) {
            int i = this.f6115A0;
            int i2 = i * 2;
            IntArray intArray = this.f6120y0;
            if (i2 < intArray.size) {
                int i3 = intArray.items[i * 2];
                BitmapFont.Glyph glyph = data.getGlyph(this.f6137R.charAt(i3));
                if (glyph != null && !glyph.fixedWidth) {
                    f = ((-glyph.xoffset) * data.scaleX) - data.padLeft;
                }
                f += this.f6134O.get(this.f6129J) - this.f6134O.get(i3);
            }
        }
        return f + data.cursorX;
    }

    public float getCursorY() {
        return (-((this.f6115A0 - this.f6116B0) + 1)) * this.f6135P.font.getLineHeight();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField, com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f6119E0 <= 0.0f) {
            return super.getPrefHeight();
        }
        float ceil = MathUtils.ceil(this.f6135P.font.getLineHeight() * this.f6119E0);
        Drawable drawable = this.f6135P.background;
        if (drawable != null) {
            return Math.max(ceil + drawable.getBottomHeight() + this.f6135P.background.getTopHeight(), this.f6135P.background.getMinHeight());
        }
        return ceil;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: i */
    public boolean mo23761i(int i, int i2) {
        int[] iArr;
        int i3;
        int m23772D = m23772D(i + i2);
        if (super.mo23761i(i, i2)) {
            if (m23772D >= 0) {
                IntArray intArray = this.f6120y0;
                if (m23772D >= intArray.size - 2 || (i3 = (iArr = intArray.items)[m23772D + 1]) != i || i3 == iArr[m23772D + 2]) {
                }
            }
            return true;
        }
        return false;
    }

    public void moveCursorLine(int i) {
        int i2;
        if (i < 0) {
            this.f6115A0 = 0;
            this.f6129J = 0;
            this.f6118D0 = -1.0f;
        } else if (i >= getLines()) {
            int lines = getLines() - 1;
            this.f6129J = this.f6128I.length();
            if (i > getLines() || lines == this.f6115A0) {
                this.f6118D0 = -1.0f;
            }
            this.f6115A0 = lines;
        } else {
            int i3 = this.f6115A0;
            if (i != i3) {
                float f = 0.0f;
                if (this.f6118D0 < 0.0f) {
                    if (this.f6120y0.size > i3 * 2) {
                        f = this.f6134O.get(this.f6129J) - this.f6134O.get(this.f6120y0.get(this.f6115A0 * 2));
                    }
                    this.f6118D0 = f;
                }
                this.f6115A0 = i;
                int i4 = i * 2;
                IntArray intArray = this.f6120y0;
                if (i4 >= intArray.size) {
                    i2 = this.f6128I.length();
                } else {
                    i2 = intArray.get(i * 2);
                }
                this.f6129J = i2;
                while (this.f6129J < this.f6128I.length() && this.f6129J <= this.f6120y0.get((this.f6115A0 * 2) + 1) - 1 && this.f6134O.get(this.f6129J) - this.f6134O.get(this.f6120y0.get(this.f6115A0 * 2)) < this.f6118D0) {
                    this.f6129J++;
                }
                m23771E();
            }
        }
    }

    public boolean newLineAtEnd() {
        if (this.f6128I.length() != 0) {
            String str = this.f6128I;
            if (str.charAt(str.length() - 1) == '\n') {
                return true;
            }
            String str2 = this.f6128I;
            if (str2.charAt(str2.length() - 1) == '\r') {
                return true;
            }
        }
        return false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: o */
    public void mo23755o(Drawable drawable, Batch batch, BitmapFont bitmapFont, float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.f6116B0 * 2;
        int min = Math.min(this.f6129J, this.f6130K);
        int max = Math.max(this.f6129J, this.f6130K);
        BitmapFont.BitmapFontData data = bitmapFont.getData();
        float lineHeight = this.f6135P.font.getLineHeight();
        float f6 = 0.0f;
        while (true) {
            int i2 = i + 1;
            IntArray intArray = this.f6120y0;
            if (i2 < intArray.size && i < (this.f6116B0 + this.f6117C0) * 2) {
                int i3 = intArray.get(i);
                int i4 = this.f6120y0.get(i2);
                if ((min >= i3 || min >= i4 || max >= i3 || max >= i4) && (min <= i3 || min <= i4 || max <= i3 || max <= i4)) {
                    int max2 = Math.max(i3, min);
                    int min2 = Math.min(i4, max);
                    BitmapFont.Glyph glyph = data.getGlyph(this.f6137R.charAt(i3));
                    if (glyph != null) {
                        if (max2 == i3) {
                            if (glyph.fixedWidth) {
                                f5 = 0.0f;
                            } else {
                                f5 = ((-glyph.xoffset) * data.scaleX) - data.padLeft;
                            }
                            f4 = f5;
                            f3 = 0.0f;
                            drawable.draw(batch, f + (this.f6134O.get(max2) - this.f6134O.get(i3)) + f3, (f2 - lineHeight) - f6, (this.f6134O.get(min2) - this.f6134O.get(max2)) + f4, bitmapFont.getLineHeight());
                        } else if (!glyph.fixedWidth) {
                            f3 = ((-glyph.xoffset) * data.scaleX) - data.padLeft;
                            f4 = 0.0f;
                            drawable.draw(batch, f + (this.f6134O.get(max2) - this.f6134O.get(i3)) + f3, (f2 - lineHeight) - f6, (this.f6134O.get(min2) - this.f6134O.get(max2)) + f4, bitmapFont.getLineHeight());
                        }
                    }
                    f3 = 0.0f;
                    f4 = 0.0f;
                    drawable.draw(batch, f + (this.f6134O.get(max2) - this.f6134O.get(i3)) + f3, (f2 - lineHeight) - f6, (this.f6134O.get(min2) - this.f6134O.get(max2)) + f4, bitmapFont.getLineHeight());
                }
                f6 += bitmapFont.getLineHeight();
                i += 2;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    public void setStyle(TextField.TextFieldStyle textFieldStyle) {
        if (textFieldStyle != null) {
            this.f6135P = textFieldStyle;
            this.f6155j0 = textFieldStyle.font.getCapHeight() - textFieldStyle.font.getDescent();
            if (this.f6128I != null) {
                m23744z();
            }
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: w */
    public int mo23747w(float f) {
        IntArray intArray = this.f6120y0;
        int i = intArray.size;
        if (i <= 0) {
            return 0;
        }
        int i2 = this.f6115A0;
        if (i2 * 2 >= i) {
            return this.f6128I.length();
        }
        float[] fArr = this.f6134O.items;
        int[] iArr = intArray.items;
        int i3 = iArr[i2 * 2];
        float f2 = f + fArr[i3];
        int i4 = iArr[(i2 * 2) + 1];
        while (i3 < i4 && fArr[i3] <= f2) {
            i3++;
        }
        if (i3 > 0 && fArr[i3] - f2 <= f2 - fArr[i3 - 1]) {
            return i3;
        }
        return Math.max(0, i3 - 1);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: x */
    public void mo23746x(boolean z, boolean z2) {
        int i;
        if (z) {
            i = 1;
        } else {
            i = -1;
        }
        int i2 = this.f6115A0;
        int i3 = (i2 * 2) + i;
        if (i3 >= 0) {
            int i4 = i3 + 1;
            IntArray intArray = this.f6120y0;
            if (i4 < intArray.size) {
                int[] iArr = intArray.items;
                int i5 = iArr[i3];
                int i6 = this.f6129J;
                if (i5 == i6 && iArr[i4] == i6) {
                    this.f6115A0 = i2 + i;
                    if (z2) {
                        super.mo23746x(z, z2);
                    }
                    m23771E();
                    m23770F();
                }
            }
        }
        super.mo23746x(z, z2);
        m23770F();
    }

    public TextArea(String str, TextField.TextFieldStyle textFieldStyle) {
        super(str, textFieldStyle);
    }

    /* renamed from: E */
    public void m23771E() {
        m23770F();
        m23769G();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: g */
    public void mo23763g() {
        float f;
        super.mo23763g();
        if (!this.f6128I.equals(this.f6121z0)) {
            this.f6121z0 = this.f6128I;
            BitmapFont bitmapFont = this.f6135P.font;
            float width = getWidth();
            Drawable drawable = this.f6135P.background;
            if (drawable != null) {
                f = drawable.getLeftWidth() + this.f6135P.background.getRightWidth();
            } else {
                f = 0.0f;
            }
            float f2 = width - f;
            this.f6120y0.clear();
            Pool pool = Pools.get(GlyphLayout.class);
            GlyphLayout glyphLayout = (GlyphLayout) pool.obtain();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.f6128I.length(); i3++) {
                char charAt = this.f6128I.charAt(i3);
                if (charAt != '\r' && charAt != '\n') {
                    if (!mo23761i(i3, 0)) {
                        i2 = i3;
                    }
                    glyphLayout.setText(bitmapFont, this.f6128I.subSequence(i, i3 + 1));
                    if (glyphLayout.width > f2) {
                        if (i >= i2) {
                            i2 = i3 - 1;
                        }
                        this.f6120y0.add(i);
                        i2++;
                        this.f6120y0.add(i2);
                        i = i2;
                    }
                } else {
                    this.f6120y0.add(i);
                    this.f6120y0.add(i3);
                    i = i3 + 1;
                }
            }
            pool.free(glyphLayout);
            if (i < this.f6128I.length()) {
                this.f6120y0.add(i);
                this.f6120y0.add(this.f6128I.length());
            }
            m23771E();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: s */
    public float mo23751s(BitmapFont bitmapFont, @Null Drawable drawable) {
        float height = getHeight();
        if (drawable != null) {
            height -= drawable.getTopHeight();
        }
        if (bitmapFont.usesIntegerPositions()) {
            return (int) height;
        }
        return height;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    public void setSelection(int i, int i2) {
        super.setSelection(i, i2);
        m23770F();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField
    /* renamed from: t */
    public void mo23750t() {
        super.mo23750t();
        this.f6132M = true;
        this.f6120y0 = new IntArray();
        this.f6115A0 = 0;
        this.f6116B0 = 0;
        this.f6118D0 = -1.0f;
        this.f6117C0 = 0;
    }
}
