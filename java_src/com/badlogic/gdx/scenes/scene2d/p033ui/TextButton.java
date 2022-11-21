package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextButton */
/* loaded from: classes.dex */
public class TextButton extends Button {

    /* renamed from: D0 */
    public Label f6123D0;

    /* renamed from: E0 */
    public TextButtonStyle f6124E0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TextButton$TextButtonStyle */
    /* loaded from: classes.dex */
    public static class TextButtonStyle extends Button.ButtonStyle {
        @Null
        public Color checkedDownFontColor;
        @Null
        public Color checkedFocusedFontColor;
        @Null
        public Color checkedFontColor;
        @Null
        public Color checkedOverFontColor;
        @Null
        public Color disabledFontColor;
        @Null
        public Color downFontColor;
        @Null
        public Color focusedFontColor;
        public BitmapFont font;
        @Null
        public Color fontColor;
        @Null
        public Color overFontColor;

        public TextButtonStyle() {
        }

        public TextButtonStyle(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3, @Null BitmapFont bitmapFont) {
            super(drawable, drawable2, drawable3);
            this.font = bitmapFont;
        }

        public TextButtonStyle(TextButtonStyle textButtonStyle) {
            super(textButtonStyle);
            this.font = textButtonStyle.font;
            if (textButtonStyle.fontColor != null) {
                this.fontColor = new Color(textButtonStyle.fontColor);
            }
            if (textButtonStyle.downFontColor != null) {
                this.downFontColor = new Color(textButtonStyle.downFontColor);
            }
            if (textButtonStyle.overFontColor != null) {
                this.overFontColor = new Color(textButtonStyle.overFontColor);
            }
            if (textButtonStyle.focusedFontColor != null) {
                this.focusedFontColor = new Color(textButtonStyle.focusedFontColor);
            }
            if (textButtonStyle.disabledFontColor != null) {
                this.disabledFontColor = new Color(textButtonStyle.disabledFontColor);
            }
            if (textButtonStyle.checkedFontColor != null) {
                this.checkedFontColor = new Color(textButtonStyle.checkedFontColor);
            }
            if (textButtonStyle.checkedDownFontColor != null) {
                this.checkedDownFontColor = new Color(textButtonStyle.checkedDownFontColor);
            }
            if (textButtonStyle.checkedOverFontColor != null) {
                this.checkedOverFontColor = new Color(textButtonStyle.checkedOverFontColor);
            }
            if (textButtonStyle.checkedFocusedFontColor != null) {
                this.checkedFocusedFontColor = new Color(textButtonStyle.checkedFocusedFontColor);
            }
        }
    }

    public TextButton(@Null String str, Skin skin) {
        this(str, (TextButtonStyle) skin.get(TextButtonStyle.class));
        setSkin(skin);
    }

    /* renamed from: D */
    public Label m23767D(String str, Label.LabelStyle labelStyle) {
        return new Label(str, labelStyle);
    }

    public Label getLabel() {
        return this.f6123D0;
    }

    public Cell<Label> getLabelCell() {
        return getCell(this.f6123D0);
    }

    public CharSequence getText() {
        return this.f6123D0.getText();
    }

    public void setText(@Null String str) {
        this.f6123D0.setText(str);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button, com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        this.f6123D0.getStyle().fontColor = m23768C();
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public TextButtonStyle getStyle() {
        return this.f6124E0;
    }

    public void setLabel(Label label) {
        if (label != null) {
            getLabelCell().setActor(label);
            this.f6123D0 = label;
            return;
        }
        throw new IllegalArgumentException("label cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public void setStyle(Button.ButtonStyle buttonStyle) {
        if (buttonStyle != null) {
            if (buttonStyle instanceof TextButtonStyle) {
                TextButtonStyle textButtonStyle = (TextButtonStyle) buttonStyle;
                this.f6124E0 = textButtonStyle;
                super.setStyle(buttonStyle);
                Label label = this.f6123D0;
                if (label != null) {
                    Label.LabelStyle style = label.getStyle();
                    style.font = textButtonStyle.font;
                    style.fontColor = textButtonStyle.fontColor;
                    this.f6123D0.setStyle(style);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("style must be a TextButtonStyle.");
        }
        throw new NullPointerException("style cannot be null");
    }

    public TextButton(@Null String str, Skin skin, String str2) {
        this(str, (TextButtonStyle) skin.get(str2, TextButtonStyle.class));
        setSkin(skin);
    }

    @Null
    /* renamed from: C */
    public Color m23768C() {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        if (isDisabled() && (color5 = this.f6124E0.disabledFontColor) != null) {
            return color5;
        }
        if (isPressed()) {
            if (isChecked() && (color4 = this.f6124E0.checkedDownFontColor) != null) {
                return color4;
            }
            Color color6 = this.f6124E0.downFontColor;
            if (color6 != null) {
                return color6;
            }
        }
        if (isOver()) {
            if (isChecked()) {
                Color color7 = this.f6124E0.checkedOverFontColor;
                if (color7 != null) {
                    return color7;
                }
            } else {
                Color color8 = this.f6124E0.overFontColor;
                if (color8 != null) {
                    return color8;
                }
            }
        }
        boolean hasKeyboardFocus = hasKeyboardFocus();
        if (isChecked()) {
            if (hasKeyboardFocus && (color3 = this.f6124E0.checkedFocusedFontColor) != null) {
                return color3;
            }
            Color color9 = this.f6124E0.checkedFontColor;
            if (color9 != null) {
                return color9;
            }
            if (isOver() && (color2 = this.f6124E0.overFontColor) != null) {
                return color2;
            }
        }
        if (hasKeyboardFocus && (color = this.f6124E0.focusedFontColor) != null) {
            return color;
        }
        return this.f6124E0.fontColor;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
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
            str = "TextButton ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name2);
        sb.append(": ");
        sb.append((Object) this.f6123D0.getText());
        return sb.toString();
    }

    public TextButton(@Null String str, TextButtonStyle textButtonStyle) {
        setStyle(textButtonStyle);
        Label m23767D = m23767D(str, new Label.LabelStyle(textButtonStyle.font, textButtonStyle.fontColor));
        this.f6123D0 = m23767D;
        m23767D.setAlignment(1);
        add((TextButton) this.f6123D0).expand().fill();
        setSize(getPrefWidth(), getPrefHeight());
    }
}
