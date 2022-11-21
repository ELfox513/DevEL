package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Disableable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.UIUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Clipboard;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.Timer;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField */
/* loaded from: classes.dex */
public class TextField extends Widget implements Disableable {

    /* renamed from: I */
    public String f6128I;

    /* renamed from: J */
    public int f6129J;

    /* renamed from: K */
    public int f6130K;

    /* renamed from: L */
    public boolean f6131L;

    /* renamed from: M */
    public boolean f6132M;

    /* renamed from: N */
    public final GlyphLayout f6133N;

    /* renamed from: O */
    public final FloatArray f6134O;

    /* renamed from: P */
    public TextFieldStyle f6135P;

    /* renamed from: Q */
    public String f6136Q;

    /* renamed from: R */
    public CharSequence f6137R;

    /* renamed from: S */
    public Clipboard f6138S;

    /* renamed from: T */
    public InputListener f6139T;
    @Null

    /* renamed from: U */
    public TextFieldListener f6140U;
    @Null

    /* renamed from: V */
    public TextFieldFilter f6141V;

    /* renamed from: W */
    public OnscreenKeyboard f6142W;

    /* renamed from: X */
    public boolean f6143X;

    /* renamed from: Y */
    public boolean f6144Y;

    /* renamed from: Z */
    public boolean f6145Z;

    /* renamed from: a0 */
    public int f6146a0;

    /* renamed from: b0 */
    public float f6147b0;

    /* renamed from: c0 */
    public float f6148c0;

    /* renamed from: d0 */
    public String f6149d0;

    /* renamed from: e0 */
    public long f6150e0;

    /* renamed from: f0 */
    public boolean f6151f0;

    /* renamed from: g0 */
    public StringBuilder f6152g0;

    /* renamed from: h0 */
    public char f6153h0;

    /* renamed from: i0 */
    public float f6154i0;

    /* renamed from: j0 */
    public float f6155j0;

    /* renamed from: k0 */
    public float f6156k0;

    /* renamed from: l0 */
    public float f6157l0;

    /* renamed from: m0 */
    public int f6158m0;

    /* renamed from: n0 */
    public int f6159n0;

    /* renamed from: o0 */
    public int f6160o0;

    /* renamed from: p0 */
    public boolean f6161p0;

    /* renamed from: q0 */
    public boolean f6162q0;

    /* renamed from: r0 */
    public float f6163r0;

    /* renamed from: s0 */
    public final Timer.Task f6164s0;

    /* renamed from: t0 */
    public final KeyRepeatTask f6165t0;

    /* renamed from: u0 */
    public boolean f6166u0;

    /* renamed from: v0 */
    public static final Vector2 f6125v0 = new Vector2();

    /* renamed from: w0 */
    public static final Vector2 f6126w0 = new Vector2();

    /* renamed from: x0 */
    public static final Vector2 f6127x0 = new Vector2();
    public static float keyRepeatInitialTime = 0.4f;
    public static float keyRepeatTime = 0.1f;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$DefaultOnscreenKeyboard */
    /* loaded from: classes.dex */
    public static class DefaultOnscreenKeyboard implements OnscreenKeyboard {
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.OnscreenKeyboard
        public void show(boolean z) {
            Gdx.input.setOnscreenKeyboardVisible(z);
        }
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$KeyRepeatTask */
    /* loaded from: classes.dex */
    public class KeyRepeatTask extends Timer.Task {

        /* renamed from: q */
        public int f6168q;

        public KeyRepeatTask() {
        }

        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
        public void run() {
            if (TextField.this.getStage() == null) {
                cancel();
            } else {
                TextField.this.f6139T.keyDown(null, this.f6168q);
            }
        }
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$OnscreenKeyboard */
    /* loaded from: classes.dex */
    public interface OnscreenKeyboard {
        void show(boolean z);
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$TextFieldClickListener */
    /* loaded from: classes.dex */
    public class TextFieldClickListener extends ClickListener {
        public TextFieldClickListener() {
        }

        /* renamed from: a */
        public boolean mo23743a(char c) {
            return TextField.this.f6143X && (c == '\t' || ((c == '\r' || c == '\n') && (UIUtils.isAndroid || UIUtils.isIos)));
        }

        /* renamed from: b */
        public void mo23742b(boolean z) {
            TextField textField = TextField.this;
            textField.f6129J = textField.f6128I.length();
        }

        /* renamed from: c */
        public void mo23741c(boolean z) {
            TextField.this.f6129J = 0;
        }

        /* renamed from: d */
        public void m23740d(int i) {
            if (!TextField.this.f6165t0.isScheduled() || TextField.this.f6165t0.f6168q != i) {
                KeyRepeatTask keyRepeatTask = TextField.this.f6165t0;
                keyRepeatTask.f6168q = i;
                keyRepeatTask.cancel();
                Timer.schedule(TextField.this.f6165t0, TextField.keyRepeatInitialTime, TextField.keyRepeatTime);
            }
        }

        /* renamed from: e */
        public void mo23739e(float f, float f2) {
            TextField textField = TextField.this;
            textField.f6129J = textField.mo23747w(f);
            TextField textField2 = TextField.this;
            textField2.f6162q0 = textField2.f6161p0;
            textField2.f6164s0.cancel();
            TextField textField3 = TextField.this;
            if (textField3.f6161p0) {
                Timer.Task task = textField3.f6164s0;
                float f3 = textField3.f6163r0;
                Timer.schedule(task, f3, f3);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0118  */
        @Override // com.badlogic.gdx.scenes.scene2d.InputListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean keyDown(com.badlogic.gdx.scenes.scene2d.InputEvent r11, int r12) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldClickListener.keyDown(com.badlogic.gdx.scenes.scene2d.InputEvent, int):boolean");
        }

        @Override // com.badlogic.gdx.scenes.scene2d.InputListener
        public boolean keyTyped(InputEvent inputEvent, char c) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            int i;
            String valueOf;
            TextField textField;
            TextFieldFilter textFieldFilter;
            TextField textField2 = TextField.this;
            if (textField2.f6145Z) {
                return false;
            }
            if (c != '\r') {
                switch (c) {
                    case '\b':
                    case '\t':
                    case '\n':
                        break;
                    default:
                        if (c < ' ') {
                            return false;
                        }
                        break;
                }
            }
            if (!textField2.hasKeyboardFocus()) {
                return false;
            }
            if (UIUtils.isMac && Gdx.input.isKeyPressed(63)) {
                return true;
            }
            if (mo23743a(c)) {
                TextField.this.next(UIUtils.shift());
            } else {
                if (c != '\r' && c != '\n') {
                    z = false;
                } else {
                    z = true;
                }
                if (c == 127) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (c == '\b') {
                    z3 = true;
                } else {
                    z3 = false;
                }
                TextField textField3 = TextField.this;
                if (z) {
                    z4 = textField3.f6132M;
                } else if (textField3.f6144Y && !textField3.f6135P.font.getData().hasGlyph(c)) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (!z3 && !z2) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                if (z4 || z5) {
                    TextField textField4 = TextField.this;
                    String str = textField4.f6128I;
                    int i2 = textField4.f6129J;
                    if (z5) {
                        if (textField4.f6131L) {
                            textField4.f6129J = textField4.m23758l(false);
                        } else {
                            if (z3 && i2 > 0) {
                                StringBuilder sb = new StringBuilder();
                                TextField textField5 = TextField.this;
                                sb.append(textField5.f6128I.substring(0, textField5.f6129J - 1));
                                TextField textField6 = TextField.this;
                                String str2 = textField6.f6128I;
                                int i3 = textField6.f6129J;
                                textField6.f6129J = i3 - 1;
                                sb.append(str2.substring(i3));
                                textField4.f6128I = sb.toString();
                                TextField.this.f6157l0 = 0.0f;
                            }
                            if (z2) {
                                TextField textField7 = TextField.this;
                                if (textField7.f6129J < textField7.f6128I.length()) {
                                    TextField textField8 = TextField.this;
                                    StringBuilder sb2 = new StringBuilder();
                                    TextField textField9 = TextField.this;
                                    sb2.append(textField9.f6128I.substring(0, textField9.f6129J));
                                    TextField textField10 = TextField.this;
                                    sb2.append(textField10.f6128I.substring(textField10.f6129J + 1));
                                    textField8.f6128I = sb2.toString();
                                }
                            }
                        }
                    }
                    if (z4 && !z5) {
                        if (!z && (textFieldFilter = (textField = TextField.this).f6141V) != null && !textFieldFilter.acceptChar(textField, c)) {
                            return true;
                        }
                        TextField textField11 = TextField.this;
                        int length = textField11.f6128I.length();
                        TextField textField12 = TextField.this;
                        if (textField12.f6131L) {
                            i = Math.abs(textField12.f6129J - textField12.f6130K);
                        } else {
                            i = 0;
                        }
                        if (!textField11.m23766A(length - i)) {
                            return true;
                        }
                        TextField textField13 = TextField.this;
                        if (textField13.f6131L) {
                            textField13.f6129J = textField13.m23758l(false);
                        }
                        if (z) {
                            valueOf = "\n";
                        } else {
                            valueOf = String.valueOf(c);
                        }
                        TextField textField14 = TextField.this;
                        int i4 = textField14.f6129J;
                        textField14.f6129J = i4 + 1;
                        textField14.f6128I = textField14.m23749u(i4, valueOf, textField14.f6128I);
                    }
                    TextField textField15 = TextField.this;
                    String str3 = textField15.f6149d0;
                    if (textField15.m23762h(str, textField15.f6128I)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        TextField textField16 = TextField.this;
                        if (currentTimeMillis - 750 > textField16.f6150e0) {
                            textField16.f6149d0 = str;
                        }
                        textField16.f6150e0 = currentTimeMillis;
                        textField16.m23744z();
                    } else {
                        TextField.this.f6129J = i2;
                    }
                }
            }
            TextField textField17 = TextField.this;
            TextFieldListener textFieldListener = textField17.f6140U;
            if (textFieldListener != null) {
                textFieldListener.keyTyped(textField17, c);
            }
            return true;
        }

        @Override // com.badlogic.gdx.scenes.scene2d.InputListener
        public boolean keyUp(InputEvent inputEvent, int i) {
            TextField textField = TextField.this;
            if (textField.f6145Z) {
                return false;
            }
            textField.f6165t0.cancel();
            return true;
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
        public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
            TextField textField = TextField.this;
            if (textField.f6130K == textField.f6129J) {
                textField.f6131L = false;
            }
            super.touchUp(inputEvent, f, f2, i, i2);
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
        public void clicked(InputEvent inputEvent, float f, float f2) {
            int tapCount = getTapCount() % 4;
            if (tapCount == 0) {
                TextField.this.clearSelection();
            }
            if (tapCount == 2) {
                int[] m23765B = TextField.this.m23765B(f);
                TextField.this.setSelection(m23765B[0], m23765B[1]);
            }
            if (tapCount == 3) {
                TextField.this.selectAll();
            }
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
        public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
            if (!super.touchDown(inputEvent, f, f2, i, i2)) {
                return false;
            }
            if (i == 0 && i2 != 0) {
                return false;
            }
            if (TextField.this.f6145Z) {
                return true;
            }
            mo23739e(f, f2);
            TextField textField = TextField.this;
            textField.f6130K = textField.f6129J;
            Stage stage = textField.getStage();
            if (stage != null) {
                stage.setKeyboardFocus(TextField.this);
            }
            TextField.this.f6142W.show(true);
            TextField.this.f6131L = true;
            return true;
        }

        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
        public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
            super.touchDragged(inputEvent, f, f2, i);
            mo23739e(f, f2);
        }
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$TextFieldFilter */
    /* loaded from: classes.dex */
    public interface TextFieldFilter {

        /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$TextFieldFilter$DigitsOnlyFilter */
        /* loaded from: classes.dex */
        public static class DigitsOnlyFilter implements TextFieldFilter {
            @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextField.TextFieldFilter
            public boolean acceptChar(TextField textField, char c) {
                return Character.isDigit(c);
            }
        }

        boolean acceptChar(TextField textField, char c);
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$TextFieldListener */
    /* loaded from: classes.dex */
    public interface TextFieldListener {
        void keyTyped(TextField textField, char c);
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextField$TextFieldStyle */
    /* loaded from: classes.dex */
    public static class TextFieldStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable cursor;
        @Null
        public Drawable disabledBackground;
        @Null
        public Color disabledFontColor;
        @Null
        public Drawable focusedBackground;
        @Null
        public Color focusedFontColor;
        public BitmapFont font;
        public Color fontColor;
        @Null
        public BitmapFont messageFont;
        @Null
        public Color messageFontColor;
        @Null
        public Drawable selection;

        public TextFieldStyle() {
        }

        public TextFieldStyle(BitmapFont bitmapFont, Color color, @Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3) {
            this.font = bitmapFont;
            this.fontColor = color;
            this.cursor = drawable;
            this.selection = drawable2;
            this.background = drawable3;
        }

        public TextFieldStyle(TextFieldStyle textFieldStyle) {
            this.font = textFieldStyle.font;
            if (textFieldStyle.fontColor != null) {
                this.fontColor = new Color(textFieldStyle.fontColor);
            }
            if (textFieldStyle.focusedFontColor != null) {
                this.focusedFontColor = new Color(textFieldStyle.focusedFontColor);
            }
            if (textFieldStyle.disabledFontColor != null) {
                this.disabledFontColor = new Color(textFieldStyle.disabledFontColor);
            }
            this.background = textFieldStyle.background;
            this.focusedBackground = textFieldStyle.focusedBackground;
            this.disabledBackground = textFieldStyle.disabledBackground;
            this.cursor = textFieldStyle.cursor;
            this.selection = textFieldStyle.selection;
            this.messageFont = textFieldStyle.messageFont;
            if (textFieldStyle.messageFontColor != null) {
                this.messageFontColor = new Color(textFieldStyle.messageFontColor);
            }
        }
    }

    public TextField(@Null String str, Skin skin) {
        this(str, (TextFieldStyle) skin.get(TextFieldStyle.class));
    }

    /* renamed from: A */
    public boolean m23766A(int i) {
        int i2 = this.f6160o0;
        return i2 <= 0 || i < i2;
    }

    /* renamed from: B */
    public int[] m23765B(float f) {
        return m23764C(mo23747w(f));
    }

    public void clearSelection() {
        this.f6131L = false;
    }

    public void cut() {
        m23759k(this.f6166u0);
    }

    public int getAlignment() {
        return this.f6146a0;
    }

    public int getCursorPosition() {
        return this.f6129J;
    }

    public InputListener getDefaultInputListener() {
        return this.f6139T;
    }

    public int getMaxLength() {
        return this.f6160o0;
    }

    @Null
    public String getMessageText() {
        return this.f6136Q;
    }

    public OnscreenKeyboard getOnscreenKeyboard() {
        return this.f6142W;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        return 150.0f;
    }

    public boolean getProgrammaticChangeEvents() {
        return this.f6166u0;
    }

    public String getSelection() {
        return this.f6131L ? this.f6128I.substring(Math.min(this.f6130K, this.f6129J), Math.max(this.f6130K, this.f6129J)) : "";
    }

    public int getSelectionStart() {
        return this.f6130K;
    }

    public TextFieldStyle getStyle() {
        return this.f6135P;
    }

    public String getText() {
        return this.f6128I;
    }

    @Null
    public TextFieldFilter getTextFieldFilter() {
        return this.f6141V;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public boolean isDisabled() {
        return this.f6145Z;
    }

    public boolean isPasswordMode() {
        return this.f6151f0;
    }

    /* renamed from: j */
    public InputListener mo23760j() {
        return new TextFieldClickListener();
    }

    /* renamed from: n */
    public void m23756n(Batch batch, BitmapFont bitmapFont, float f, float f2, float f3) {
        String str = this.f6136Q;
        bitmapFont.draw(batch, str, f, f2, 0, str.length(), f3, this.f6146a0, false, "...");
    }

    /* renamed from: o */
    public void mo23755o(Drawable drawable, Batch batch, BitmapFont bitmapFont, float f, float f2) {
        drawable.draw(batch, f + this.f6156k0 + this.f6147b0 + this.f6154i0, (f2 - this.f6155j0) - bitmapFont.getDescent(), this.f6148c0, this.f6155j0);
    }

    /* renamed from: p */
    public void mo23754p(Batch batch, BitmapFont bitmapFont, float f, float f2) {
        bitmapFont.draw(batch, this.f6137R, f + this.f6156k0, f2, this.f6158m0, this.f6159n0, 0.0f, 8, false);
    }

    public void selectAll() {
        setSelection(0, this.f6128I.length());
    }

    public void setAlignment(int i) {
        this.f6146a0 = i;
    }

    public void setBlinkTime(float f) {
        this.f6163r0 = f;
    }

    public void setClipboard(Clipboard clipboard) {
        this.f6138S = clipboard;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public void setDisabled(boolean z) {
        this.f6145Z = z;
    }

    public void setFocusTraversal(boolean z) {
        this.f6143X = z;
    }

    public void setMaxLength(int i) {
        this.f6160o0 = i;
    }

    public void setMessageText(@Null String str) {
        this.f6136Q = str;
    }

    public void setOnlyFontChars(boolean z) {
        this.f6144Y = z;
    }

    public void setOnscreenKeyboard(OnscreenKeyboard onscreenKeyboard) {
        this.f6142W = onscreenKeyboard;
    }

    public void setProgrammaticChangeEvents(boolean z) {
        this.f6166u0 = z;
    }

    public void setTextFieldFilter(@Null TextFieldFilter textFieldFilter) {
        this.f6141V = textFieldFilter;
    }

    public void setTextFieldListener(@Null TextFieldListener textFieldListener) {
        this.f6140U = textFieldListener;
    }

    /* renamed from: t */
    public void mo23750t() {
        InputListener mo23760j = mo23760j();
        this.f6139T = mo23760j;
        addListener(mo23760j);
    }

    /* renamed from: v */
    public boolean m23748v(char c) {
        return Character.isLetterOrDigit(c);
    }

    /* renamed from: x */
    public void mo23746x(boolean z, boolean z2) {
        int i;
        if (z) {
            i = this.f6128I.length();
        } else {
            i = 0;
        }
        int i2 = z ? 0 : -1;
        do {
            int i3 = this.f6129J;
            if (z) {
                int i4 = i3 + 1;
                this.f6129J = i4;
                if (i4 >= i) {
                    return;
                }
            } else {
                int i5 = i3 - 1;
                this.f6129J = i5;
                if (i5 <= i) {
                    return;
                }
            }
            if (!z2) {
                return;
            }
        } while (mo23761i(this.f6129J, i2));
    }

    public TextField(@Null String str, Skin skin, String str2) {
        this(str, (TextFieldStyle) skin.get(str2, TextFieldStyle.class));
    }

    /* renamed from: C */
    public int[] m23764C(int i) {
        int i2;
        String str = this.f6128I;
        int length = str.length();
        if (i >= str.length()) {
            i2 = str.length();
            length = 0;
        } else {
            int i3 = i;
            while (true) {
                if (i3 >= length) {
                    break;
                } else if (!m23748v(str.charAt(i3))) {
                    length = i3;
                    break;
                } else {
                    i3++;
                }
            }
            int i4 = i - 1;
            while (true) {
                if (i4 > -1) {
                    if (!m23748v(str.charAt(i4))) {
                        i2 = i4 + 1;
                        break;
                    }
                    i4--;
                } else {
                    i2 = 0;
                    break;
                }
            }
        }
        return new int[]{i2, length};
    }

    public void appendText(@Null String str) {
        if (str == null) {
            str = "";
        }
        clearSelection();
        this.f6129J = this.f6128I.length();
        m23745y(str, this.f6166u0);
    }

    public void copy() {
        if (this.f6131L && !this.f6151f0) {
            this.f6138S.setContents(this.f6128I.substring(Math.min(this.f6129J, this.f6130K), Math.max(this.f6129J, this.f6130K)));
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        Color color;
        float f2;
        float f3;
        BitmapFont bitmapFont;
        boolean hasKeyboardFocus = hasKeyboardFocus();
        if (hasKeyboardFocus == this.f6161p0 && (!hasKeyboardFocus || this.f6164s0.isScheduled())) {
            if (!hasKeyboardFocus) {
                this.f6162q0 = false;
            }
        } else {
            this.f6161p0 = hasKeyboardFocus;
            this.f6164s0.cancel();
            this.f6162q0 = hasKeyboardFocus;
            if (hasKeyboardFocus) {
                Timer.Task task = this.f6164s0;
                float f4 = this.f6163r0;
                Timer.schedule(task, f4, f4);
            } else {
                this.f6165t0.cancel();
            }
        }
        TextFieldStyle textFieldStyle = this.f6135P;
        BitmapFont bitmapFont2 = textFieldStyle.font;
        if ((!this.f6145Z || (color = textFieldStyle.disabledFontColor) == null) && (!hasKeyboardFocus || (color = textFieldStyle.focusedFontColor) == null)) {
            color = textFieldStyle.fontColor;
        }
        Color color2 = color;
        Drawable drawable = textFieldStyle.selection;
        Drawable drawable2 = textFieldStyle.cursor;
        Drawable m23752r = m23752r();
        Color color3 = getColor();
        float x = getX();
        float y = getY();
        float width = getWidth();
        float height = getHeight();
        batch.setColor(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a * f);
        float f5 = 0.0f;
        if (m23752r != null) {
            m23752r.draw(batch, x, y, width, height);
            f2 = m23752r.getLeftWidth();
            f3 = m23752r.getRightWidth();
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
        }
        float mo23751s = mo23751s(bitmapFont2, m23752r);
        mo23763g();
        if (hasKeyboardFocus && this.f6131L && drawable != null) {
            mo23755o(drawable, batch, bitmapFont2, x + f2, y + mo23751s);
        }
        if (bitmapFont2.isFlipped()) {
            f5 = -this.f6155j0;
        }
        if (this.f6137R.length() == 0) {
            if ((!hasKeyboardFocus || this.f6145Z) && this.f6136Q != null) {
                TextFieldStyle textFieldStyle2 = this.f6135P;
                BitmapFont bitmapFont3 = textFieldStyle2.messageFont;
                if (bitmapFont3 != null) {
                    bitmapFont = bitmapFont3;
                } else {
                    bitmapFont = bitmapFont2;
                }
                Color color4 = textFieldStyle2.messageFontColor;
                if (color4 != null) {
                    bitmapFont.setColor(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a * color3.f3889a * f);
                } else {
                    bitmapFont.setColor(0.7f, 0.7f, 0.7f, color3.f3889a * f);
                }
                m23756n(batch, bitmapFont, x + f2, y + mo23751s + f5, (width - f2) - f3);
            }
        } else {
            bitmapFont2.setColor(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a * color3.f3889a * f);
            mo23754p(batch, bitmapFont2, x + f2, y + mo23751s + f5);
        }
        if (!this.f6145Z && this.f6162q0 && drawable2 != null) {
            mo23757m(drawable2, batch, bitmapFont2, x + f2, y + mo23751s);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float f;
        Drawable drawable = this.f6135P.background;
        float f2 = 0.0f;
        if (drawable != null) {
            f2 = Math.max(0.0f, drawable.getBottomHeight() + this.f6135P.background.getTopHeight());
            f = Math.max(0.0f, this.f6135P.background.getMinHeight());
        } else {
            f = 0.0f;
        }
        Drawable drawable2 = this.f6135P.focusedBackground;
        if (drawable2 != null) {
            f2 = Math.max(f2, drawable2.getBottomHeight() + this.f6135P.focusedBackground.getTopHeight());
            f = Math.max(f, this.f6135P.focusedBackground.getMinHeight());
        }
        Drawable drawable3 = this.f6135P.disabledBackground;
        if (drawable3 != null) {
            f2 = Math.max(f2, drawable3.getBottomHeight() + this.f6135P.disabledBackground.getTopHeight());
            f = Math.max(f, this.f6135P.disabledBackground.getMinHeight());
        }
        return Math.max(f2 + this.f6155j0, f);
    }

    /* renamed from: i */
    public boolean mo23761i(int i, int i2) {
        return m23748v(this.f6128I.charAt(i + i2));
    }

    /* renamed from: k */
    public void m23759k(boolean z) {
        if (this.f6131L && !this.f6151f0) {
            copy();
            this.f6129J = m23758l(z);
            m23744z();
        }
    }

    /* renamed from: l */
    public int m23758l(boolean z) {
        String str;
        int i = this.f6130K;
        int i2 = this.f6129J;
        int min = Math.min(i, i2);
        int max = Math.max(i, i2);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (min <= 0) {
            str = "";
        } else {
            str = this.f6128I.substring(0, min);
        }
        sb.append(str);
        if (max < this.f6128I.length()) {
            String str3 = this.f6128I;
            str2 = str3.substring(max, str3.length());
        }
        sb.append(str2);
        String sb2 = sb.toString();
        if (z) {
            m23762h(this.f6128I, sb2);
        } else {
            this.f6128I = sb2;
        }
        clearSelection();
        return min;
    }

    /* renamed from: m */
    public void mo23757m(Drawable drawable, Batch batch, BitmapFont bitmapFont, float f, float f2) {
        drawable.draw(batch, (((f + this.f6156k0) + this.f6134O.get(this.f6129J)) - this.f6134O.get(this.f6158m0)) + this.f6154i0 + bitmapFont.getData().cursorX, (f2 - this.f6155j0) - bitmapFont.getDescent(), drawable.getMinWidth(), this.f6155j0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0080, code lost:
        if ((r6 ^ r15) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009a, code lost:
        if ((r5 ^ r15) != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00bb A[SYNTHETIC] */
    @com.badlogic.gdx.utils.Null
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.badlogic.gdx.scenes.scene2d.p033ui.TextField m23753q(com.badlogic.gdx.utils.Array<com.badlogic.gdx.scenes.scene2d.Actor> r11, @com.badlogic.gdx.utils.Null com.badlogic.gdx.scenes.scene2d.p033ui.TextField r12, com.badlogic.gdx.math.Vector2 r13, com.badlogic.gdx.math.Vector2 r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.TextField.m23753q(com.badlogic.gdx.utils.Array, com.badlogic.gdx.scenes.scene2d.ui.TextField, com.badlogic.gdx.math.Vector2, com.badlogic.gdx.math.Vector2, boolean):com.badlogic.gdx.scenes.scene2d.ui.TextField");
    }

    @Null
    /* renamed from: r */
    public Drawable m23752r() {
        Drawable drawable;
        if (this.f6145Z && (drawable = this.f6135P.disabledBackground) != null) {
            return drawable;
        }
        if (this.f6135P.focusedBackground != null && hasKeyboardFocus()) {
            return this.f6135P.focusedBackground;
        }
        return this.f6135P.background;
    }

    public void setCursorPosition(int i) {
        if (i >= 0) {
            clearSelection();
            this.f6129J = Math.min(i, this.f6128I.length());
            return;
        }
        throw new IllegalArgumentException("cursorPosition must be >= 0");
    }

    public void setPasswordCharacter(char c) {
        this.f6153h0 = c;
        if (this.f6151f0) {
            m23744z();
        }
    }

    public void setPasswordMode(boolean z) {
        this.f6151f0 = z;
        m23744z();
    }

    public void setSelection(int i, int i2) {
        if (i >= 0) {
            if (i2 >= 0) {
                int min = Math.min(this.f6128I.length(), i);
                int min2 = Math.min(this.f6128I.length(), i2);
                if (min2 == min) {
                    clearSelection();
                    return;
                }
                if (min2 < min) {
                    min2 = min;
                    min = min2;
                }
                this.f6131L = true;
                this.f6130K = min;
                this.f6129J = min2;
                return;
            }
            throw new IllegalArgumentException("selectionEnd must be >= 0");
        }
        throw new IllegalArgumentException("selectionStart must be >= 0");
    }

    public void setStyle(TextFieldStyle textFieldStyle) {
        if (textFieldStyle != null) {
            this.f6135P = textFieldStyle;
            this.f6155j0 = textFieldStyle.font.getCapHeight() - (textFieldStyle.font.getDescent() * 2.0f);
            if (this.f6128I != null) {
                m23744z();
            }
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public void setText(@Null String str) {
        if (str == null) {
            str = "";
        }
        if (str.equals(this.f6128I)) {
            return;
        }
        clearSelection();
        String str2 = this.f6128I;
        this.f6128I = "";
        m23745y(str, false);
        if (this.f6166u0) {
            m23762h(str2, this.f6128I);
        }
        this.f6129J = 0;
    }

    /* renamed from: w */
    public int mo23747w(float f) {
        float f2 = f - (((this.f6156k0 + this.f6154i0) - this.f6135P.font.getData().cursorX) - this.f6134O.get(this.f6158m0));
        if (m23752r() != null) {
            f2 -= this.f6135P.background.getLeftWidth();
        }
        FloatArray floatArray = this.f6134O;
        int i = floatArray.size;
        float[] fArr = floatArray.items;
        for (int i2 = 1; i2 < i; i2++) {
            float f3 = fArr[i2];
            if (f3 > f2) {
                int i3 = i2 - 1;
                if (f3 - f2 <= f2 - fArr[i3]) {
                    return i2;
                }
                return i3;
            }
        }
        return i - 1;
    }

    /* renamed from: y */
    public void m23745y(@Null String str, boolean z) {
        TextFieldFilter textFieldFilter;
        if (str == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        int length = this.f6128I.length();
        if (this.f6131L) {
            length -= Math.abs(this.f6129J - this.f6130K);
        }
        BitmapFont.BitmapFontData data = this.f6135P.font.getData();
        int length2 = str.length();
        for (int i = 0; i < length2 && m23766A(sb.length() + length); i++) {
            char charAt = str.charAt(i);
            if ((this.f6132M && (charAt == '\n' || charAt == '\r')) || (charAt != '\r' && charAt != '\n' && ((!this.f6144Y || data.hasGlyph(charAt)) && ((textFieldFilter = this.f6141V) == null || textFieldFilter.acceptChar(this, charAt))))) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        if (this.f6131L) {
            this.f6129J = m23758l(z);
        }
        if (z) {
            String str2 = this.f6128I;
            m23762h(str2, m23749u(this.f6129J, sb2, str2));
        } else {
            this.f6128I = m23749u(this.f6129J, sb2, this.f6128I);
        }
        m23744z();
        this.f6129J += sb2.length();
    }

    /* renamed from: z */
    public void m23744z() {
        BitmapFont bitmapFont = this.f6135P.font;
        BitmapFont.BitmapFontData data = bitmapFont.getData();
        String str = this.f6128I;
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            char c = ' ';
            if (i >= length) {
                break;
            }
            char charAt = str.charAt(i);
            if (data.hasGlyph(charAt)) {
                c = charAt;
            }
            sb.append(c);
            i++;
        }
        String sb2 = sb.toString();
        if (this.f6151f0 && data.hasGlyph(this.f6153h0)) {
            if (this.f6152g0 == null) {
                this.f6152g0 = new StringBuilder(sb2.length());
            }
            if (this.f6152g0.length() > length) {
                this.f6152g0.setLength(length);
            } else {
                for (int length2 = this.f6152g0.length(); length2 < length; length2++) {
                    this.f6152g0.append(this.f6153h0);
                }
            }
            this.f6137R = this.f6152g0;
        } else {
            this.f6137R = sb2;
        }
        this.f6133N.setText(bitmapFont, this.f6137R.toString().replace('\r', ' ').replace('\n', ' '));
        this.f6134O.clear();
        Array<GlyphLayout.GlyphRun> array = this.f6133N.runs;
        float f = 0.0f;
        if (array.size > 0) {
            FloatArray floatArray = array.first().xAdvances;
            this.f6154i0 = floatArray.first();
            int i2 = floatArray.size;
            for (int i3 = 1; i3 < i2; i3++) {
                this.f6134O.add(f);
                f += floatArray.get(i3);
            }
        } else {
            this.f6154i0 = 0.0f;
        }
        this.f6134O.add(f);
        int min = Math.min(this.f6158m0, this.f6134O.size - 1);
        this.f6158m0 = min;
        this.f6159n0 = MathUtils.clamp(this.f6159n0, min, this.f6134O.size - 1);
        if (this.f6130K > sb2.length()) {
            this.f6130K = length;
        }
    }

    public TextField(@Null String str, TextFieldStyle textFieldStyle) {
        this.f6133N = new GlyphLayout();
        this.f6134O = new FloatArray();
        this.f6142W = new DefaultOnscreenKeyboard();
        this.f6143X = true;
        this.f6144Y = true;
        this.f6146a0 = 8;
        this.f6149d0 = "";
        this.f6153h0 = (char) 149;
        this.f6163r0 = 0.32f;
        this.f6164s0 = new Timer.Task() { // from class: com.badlogic.gdx.scenes.scene2d.ui.TextField.1
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                if (TextField.this.getStage() == null) {
                    cancel();
                    return;
                }
                TextField textField = TextField.this;
                textField.f6162q0 = !textField.f6162q0;
                Gdx.graphics.requestRendering();
            }
        };
        this.f6165t0 = new KeyRepeatTask();
        setStyle(textFieldStyle);
        this.f6138S = Gdx.app.getClipboard();
        mo23750t();
        setText(str);
        setSize(getPrefWidth(), getPrefHeight());
    }

    /* renamed from: g */
    public void mo23763g() {
        float f;
        float width = getWidth();
        Drawable m23752r = m23752r();
        if (m23752r != null) {
            width -= m23752r.getLeftWidth() + m23752r.getRightWidth();
        }
        FloatArray floatArray = this.f6134O;
        int i = floatArray.size;
        float[] fArr = floatArray.items;
        int i2 = i - 1;
        int clamp = MathUtils.clamp(this.f6129J, 0, i2);
        this.f6129J = clamp;
        float f2 = fArr[Math.max(0, clamp - 1)];
        float f3 = this.f6157l0;
        float f4 = f2 + f3;
        float f5 = 0.0f;
        if (f4 <= 0.0f) {
            this.f6157l0 = f3 - f4;
        } else {
            float f6 = fArr[Math.min(i2, this.f6129J + 1)] - width;
            if ((-this.f6157l0) < f6) {
                this.f6157l0 = -f6;
            }
        }
        float f7 = fArr[i2];
        int i3 = i - 2;
        float f8 = 0.0f;
        while (i3 >= 0) {
            float f9 = fArr[i3];
            if (f7 - f9 > width) {
                break;
            }
            i3--;
            f8 = f9;
        }
        if ((-this.f6157l0) > f8) {
            this.f6157l0 = -f8;
        }
        this.f6158m0 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i) {
                break;
            }
            float f10 = fArr[i4];
            if (f10 >= (-this.f6157l0)) {
                this.f6158m0 = i4;
                f5 = f10;
                break;
            }
            i4++;
        }
        int i5 = this.f6158m0 + 1;
        float f11 = width - this.f6157l0;
        int min = Math.min(this.f6137R.length(), i);
        while (i5 <= min && fArr[i5] <= f11) {
            i5++;
        }
        int max = Math.max(0, i5 - 1);
        this.f6159n0 = max;
        int i6 = this.f6146a0;
        if ((i6 & 8) == 0) {
            this.f6156k0 = ((width - fArr[max]) - this.f6154i0) + f5;
            if ((i6 & 1) != 0) {
                this.f6156k0 = Math.round(f * 0.5f);
            }
        } else {
            this.f6156k0 = f5 + this.f6157l0;
        }
        if (this.f6131L) {
            int min2 = Math.min(this.f6129J, this.f6130K);
            int max2 = Math.max(this.f6129J, this.f6130K);
            float max3 = Math.max(fArr[min2] - fArr[this.f6158m0], -this.f6156k0);
            float min3 = Math.min(fArr[max2] - fArr[this.f6158m0], width - this.f6156k0);
            this.f6147b0 = max3;
            this.f6148c0 = (min3 - max3) - this.f6135P.font.getData().cursorX;
        }
    }

    /* renamed from: h */
    public boolean m23762h(String str, String str2) {
        if (str2.equals(str)) {
            return false;
        }
        this.f6128I = str2;
        ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
        boolean fire = fire(changeEvent);
        if (fire) {
            this.f6128I = str;
        }
        Pools.free(changeEvent);
        return !fire;
    }

    public void next(boolean z) {
        Stage stage = getStage();
        if (stage == null) {
            return;
        }
        Vector2 localToStageCoordinates = getParent().localToStageCoordinates(f6126w0.set(getX(), getY()));
        Vector2 vector2 = f6125v0;
        TextField textField = this;
        while (true) {
            TextField m23753q = textField.m23753q(stage.getActors(), null, vector2, localToStageCoordinates, z);
            if (m23753q == null) {
                if (z) {
                    localToStageCoordinates.set(-3.4028235E38f, -3.4028235E38f);
                } else {
                    localToStageCoordinates.set(Float.MAX_VALUE, Float.MAX_VALUE);
                }
                m23753q = textField.m23753q(stage.getActors(), null, vector2, localToStageCoordinates, z);
            }
            textField = m23753q;
            if (textField == null) {
                Gdx.input.setOnscreenKeyboardVisible(false);
                return;
            } else if (stage.setKeyboardFocus(textField)) {
                textField.selectAll();
                return;
            } else {
                localToStageCoordinates.set(vector2);
            }
        }
    }

    /* renamed from: s */
    public float mo23751s(BitmapFont bitmapFont, @Null Drawable drawable) {
        float f;
        float height = getHeight();
        float descent = (this.f6155j0 / 2.0f) + bitmapFont.getDescent();
        if (drawable != null) {
            float bottomHeight = drawable.getBottomHeight();
            f = descent + (((height - drawable.getTopHeight()) - bottomHeight) / 2.0f) + bottomHeight;
        } else {
            f = descent + (height / 2.0f);
        }
        if (bitmapFont.usesIntegerPositions()) {
            return (int) f;
        }
        return f;
    }

    /* renamed from: u */
    public String m23749u(int i, CharSequence charSequence, String str) {
        if (str.length() == 0) {
            return charSequence.toString();
        }
        return str.substring(0, i) + ((Object) charSequence) + str.substring(i, str.length());
    }
}
