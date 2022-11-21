package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.scenes.scene2d.p033ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Scaling;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.CheckBox */
/* loaded from: classes.dex */
public class CheckBox extends TextButton {

    /* renamed from: F0 */
    public Image f5835F0;

    /* renamed from: G0 */
    public Cell f5836G0;

    /* renamed from: H0 */
    public CheckBoxStyle f5837H0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.CheckBox$CheckBoxStyle */
    /* loaded from: classes.dex */
    public static class CheckBoxStyle extends TextButton.TextButtonStyle {
        public Drawable checkboxOff;
        @Null
        public Drawable checkboxOffDisabled;
        public Drawable checkboxOn;
        @Null
        public Drawable checkboxOnDisabled;
        @Null
        public Drawable checkboxOnOver;
        @Null
        public Drawable checkboxOver;

        public CheckBoxStyle() {
        }

        public CheckBoxStyle(Drawable drawable, Drawable drawable2, BitmapFont bitmapFont, @Null Color color) {
            this.checkboxOff = drawable;
            this.checkboxOn = drawable2;
            this.font = bitmapFont;
            this.fontColor = color;
        }

        public CheckBoxStyle(CheckBoxStyle checkBoxStyle) {
            super(checkBoxStyle);
            this.checkboxOff = checkBoxStyle.checkboxOff;
            this.checkboxOn = checkBoxStyle.checkboxOn;
            this.checkboxOnOver = checkBoxStyle.checkboxOnOver;
            this.checkboxOver = checkBoxStyle.checkboxOver;
            this.checkboxOnDisabled = checkBoxStyle.checkboxOnDisabled;
            this.checkboxOffDisabled = checkBoxStyle.checkboxOffDisabled;
        }
    }

    public CheckBox(@Null String str, Skin skin) {
        this(str, (CheckBoxStyle) skin.get(CheckBoxStyle.class));
    }

    /* renamed from: E */
    public Image m23839E() {
        return new Image((Drawable) null, Scaling.none);
    }

    public Image getImage() {
        return this.f5835F0;
    }

    public Cell getImageCell() {
        return this.f5836G0;
    }

    public CheckBox(@Null String str, Skin skin, String str2) {
        this(str, (CheckBoxStyle) skin.get(str2, CheckBoxStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextButton, com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public void setStyle(Button.ButtonStyle buttonStyle) {
        if (buttonStyle instanceof CheckBoxStyle) {
            this.f5837H0 = (CheckBoxStyle) buttonStyle;
            super.setStyle(buttonStyle);
            return;
        }
        throw new IllegalArgumentException("style must be a CheckBoxStyle.");
    }

    public CheckBox(@Null String str, CheckBoxStyle checkBoxStyle) {
        super(str, checkBoxStyle);
        Label label = getLabel();
        label.setAlignment(8);
        Image m23839E = m23839E();
        this.f5835F0 = m23839E;
        m23839E.setDrawable(checkBoxStyle.checkboxOff);
        clearChildren();
        this.f5836G0 = add((CheckBox) this.f5835F0);
        add((CheckBox) label);
        setSize(getPrefWidth(), getPrefHeight());
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextButton, com.badlogic.gdx.scenes.scene2d.p033ui.Button, com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        Drawable drawable;
        boolean z;
        CheckBoxStyle checkBoxStyle;
        Drawable drawable2;
        if (isDisabled()) {
            if (!this.f5778y0 || (drawable = this.f5837H0.checkboxOnDisabled) == null) {
                drawable = this.f5837H0.checkboxOffDisabled;
            }
        } else {
            drawable = null;
        }
        if (drawable == null) {
            if (isOver() && !isDisabled()) {
                z = true;
            } else {
                z = false;
            }
            if (this.f5778y0 && (drawable2 = (checkBoxStyle = this.f5837H0).checkboxOn) != null) {
                if (!z || (drawable = checkBoxStyle.checkboxOnOver) == null) {
                    drawable = drawable2;
                }
            } else if (!z || (drawable = this.f5837H0.checkboxOver) == null) {
                drawable = this.f5837H0.checkboxOff;
            }
        }
        this.f5835F0.setDrawable(drawable);
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.TextButton, com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public CheckBoxStyle getStyle() {
        return this.f5837H0;
    }
}
