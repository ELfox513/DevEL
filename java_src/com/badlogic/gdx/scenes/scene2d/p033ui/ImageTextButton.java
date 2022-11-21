package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Scaling;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ImageTextButton */
/* loaded from: classes.dex */
public class ImageTextButton extends Button {

    /* renamed from: D0 */
    public final Image f5899D0;

    /* renamed from: E0 */
    public Label f5900E0;

    /* renamed from: F0 */
    public ImageTextButtonStyle f5901F0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ImageTextButton$ImageTextButtonStyle */
    /* loaded from: classes.dex */
    public static class ImageTextButtonStyle extends TextButton.TextButtonStyle {
        @Null
        public Drawable imageChecked;
        @Null
        public Drawable imageCheckedDown;
        @Null
        public Drawable imageCheckedOver;
        @Null
        public Drawable imageDisabled;
        @Null
        public Drawable imageDown;
        @Null
        public Drawable imageOver;
        @Null
        public Drawable imageUp;

        public ImageTextButtonStyle() {
        }

        public ImageTextButtonStyle(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3, BitmapFont bitmapFont) {
            super(drawable, drawable2, drawable3, bitmapFont);
        }

        public ImageTextButtonStyle(ImageTextButtonStyle imageTextButtonStyle) {
            super(imageTextButtonStyle);
            this.imageUp = imageTextButtonStyle.imageUp;
            this.imageDown = imageTextButtonStyle.imageDown;
            this.imageOver = imageTextButtonStyle.imageOver;
            this.imageDisabled = imageTextButtonStyle.imageDisabled;
            this.imageChecked = imageTextButtonStyle.imageChecked;
            this.imageCheckedDown = imageTextButtonStyle.imageCheckedDown;
            this.imageCheckedOver = imageTextButtonStyle.imageCheckedOver;
        }

        public ImageTextButtonStyle(TextButton.TextButtonStyle textButtonStyle) {
            super(textButtonStyle);
        }
    }

    public ImageTextButton(@Null String str, Skin skin) {
        this(str, (ImageTextButtonStyle) skin.get(ImageTextButtonStyle.class));
        setSkin(skin);
    }

    /* renamed from: E */
    public Image m23827E() {
        return new Image((Drawable) null, Scaling.fit);
    }

    /* renamed from: F */
    public Label m23826F(String str, Label.LabelStyle labelStyle) {
        return new Label(str, labelStyle);
    }

    /* renamed from: G */
    public void m23825G() {
        this.f5899D0.setDrawable(m23828D());
    }

    public Image getImage() {
        return this.f5899D0;
    }

    public Cell getImageCell() {
        return getCell(this.f5899D0);
    }

    public Label getLabel() {
        return this.f5900E0;
    }

    public Cell getLabelCell() {
        return getCell(this.f5900E0);
    }

    public CharSequence getText() {
        return this.f5900E0.getText();
    }

    public void setText(CharSequence charSequence) {
        this.f5900E0.setText(charSequence);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public ImageTextButtonStyle getStyle() {
        return this.f5901F0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public void setStyle(Button.ButtonStyle buttonStyle) {
        if (buttonStyle instanceof ImageTextButtonStyle) {
            ImageTextButtonStyle imageTextButtonStyle = (ImageTextButtonStyle) buttonStyle;
            this.f5901F0 = imageTextButtonStyle;
            super.setStyle(buttonStyle);
            if (this.f5899D0 != null) {
                m23825G();
            }
            Label label = this.f5900E0;
            if (label != null) {
                Label.LabelStyle style = label.getStyle();
                style.font = imageTextButtonStyle.font;
                style.fontColor = m23829C();
                this.f5900E0.setStyle(style);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("style must be a ImageTextButtonStyle.");
    }

    public ImageTextButton(@Null String str, Skin skin, String str2) {
        this(str, (ImageTextButtonStyle) skin.get(str2, ImageTextButtonStyle.class));
        setSkin(skin);
    }

    @Null
    /* renamed from: C */
    public Color m23829C() {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        if (isDisabled() && (color5 = this.f5901F0.disabledFontColor) != null) {
            return color5;
        }
        if (isPressed()) {
            if (isChecked() && (color4 = this.f5901F0.checkedDownFontColor) != null) {
                return color4;
            }
            Color color6 = this.f5901F0.downFontColor;
            if (color6 != null) {
                return color6;
            }
        }
        if (isOver()) {
            if (isChecked()) {
                Color color7 = this.f5901F0.checkedOverFontColor;
                if (color7 != null) {
                    return color7;
                }
            } else {
                Color color8 = this.f5901F0.overFontColor;
                if (color8 != null) {
                    return color8;
                }
            }
        }
        boolean hasKeyboardFocus = hasKeyboardFocus();
        if (isChecked()) {
            if (hasKeyboardFocus && (color3 = this.f5901F0.checkedFocusedFontColor) != null) {
                return color3;
            }
            Color color9 = this.f5901F0.checkedFontColor;
            if (color9 != null) {
                return color9;
            }
            if (isOver() && (color2 = this.f5901F0.overFontColor) != null) {
                return color2;
            }
        }
        if (hasKeyboardFocus && (color = this.f5901F0.focusedFontColor) != null) {
            return color;
        }
        return this.f5901F0.fontColor;
    }

    @Null
    /* renamed from: D */
    public Drawable m23828D() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        if (isDisabled() && (drawable3 = this.f5901F0.imageDisabled) != null) {
            return drawable3;
        }
        if (isPressed()) {
            if (isChecked() && (drawable2 = this.f5901F0.imageCheckedDown) != null) {
                return drawable2;
            }
            Drawable drawable4 = this.f5901F0.imageDown;
            if (drawable4 != null) {
                return drawable4;
            }
        }
        if (isOver()) {
            if (isChecked()) {
                Drawable drawable5 = this.f5901F0.imageCheckedOver;
                if (drawable5 != null) {
                    return drawable5;
                }
            } else {
                Drawable drawable6 = this.f5901F0.imageOver;
                if (drawable6 != null) {
                    return drawable6;
                }
            }
        }
        if (isChecked()) {
            Drawable drawable7 = this.f5901F0.imageChecked;
            if (drawable7 != null) {
                return drawable7;
            }
            if (isOver() && (drawable = this.f5901F0.imageOver) != null) {
                return drawable;
            }
        }
        return this.f5901F0.imageUp;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button, com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        m23825G();
        this.f5900E0.getStyle().fontColor = m23829C();
        super.draw(batch, f);
    }

    public void setLabel(Label label) {
        getLabelCell().setActor(label);
        this.f5900E0 = label;
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
            str = "ImageTextButton ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name2);
        sb.append(": ");
        sb.append(this.f5899D0.getDrawable());
        sb.append(" ");
        sb.append((Object) this.f5900E0.getText());
        return sb.toString();
    }

    public ImageTextButton(@Null String str, ImageTextButtonStyle imageTextButtonStyle) {
        super(imageTextButtonStyle);
        this.f5901F0 = imageTextButtonStyle;
        defaults().space(3.0f);
        Image m23827E = m23827E();
        this.f5899D0 = m23827E;
        Label m23826F = m23826F(str, new Label.LabelStyle(imageTextButtonStyle.font, imageTextButtonStyle.fontColor));
        this.f5900E0 = m23826F;
        m23826F.setAlignment(1);
        add((ImageTextButton) m23827E);
        add((ImageTextButton) this.f5900E0);
        setStyle(imageTextButtonStyle);
        setSize(getPrefWidth(), getPrefHeight());
    }
}
