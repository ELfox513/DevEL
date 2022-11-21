package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Scaling;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ImageButton */
/* loaded from: classes.dex */
public class ImageButton extends Button {

    /* renamed from: D0 */
    public final Image f5897D0;

    /* renamed from: E0 */
    public ImageButtonStyle f5898E0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ImageButton$ImageButtonStyle */
    /* loaded from: classes.dex */
    public static class ImageButtonStyle extends Button.ButtonStyle {
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

        public ImageButtonStyle() {
        }

        public ImageButtonStyle(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3, @Null Drawable drawable4, @Null Drawable drawable5, @Null Drawable drawable6) {
            super(drawable, drawable2, drawable3);
            this.imageUp = drawable4;
            this.imageDown = drawable5;
            this.imageChecked = drawable6;
        }

        public ImageButtonStyle(ImageButtonStyle imageButtonStyle) {
            super(imageButtonStyle);
            this.imageUp = imageButtonStyle.imageUp;
            this.imageDown = imageButtonStyle.imageDown;
            this.imageOver = imageButtonStyle.imageOver;
            this.imageDisabled = imageButtonStyle.imageDisabled;
            this.imageChecked = imageButtonStyle.imageChecked;
            this.imageCheckedDown = imageButtonStyle.imageCheckedDown;
            this.imageCheckedOver = imageButtonStyle.imageCheckedOver;
        }

        public ImageButtonStyle(Button.ButtonStyle buttonStyle) {
            super(buttonStyle);
        }
    }

    public ImageButton(Skin skin) {
        this((ImageButtonStyle) skin.get(ImageButtonStyle.class));
        setSkin(skin);
    }

    /* renamed from: D */
    public Image m23831D() {
        return new Image((Drawable) null, Scaling.fit);
    }

    /* renamed from: E */
    public void m23830E() {
        this.f5897D0.setDrawable(m23832C());
    }

    public Image getImage() {
        return this.f5897D0;
    }

    public Cell getImageCell() {
        return getCell(this.f5897D0);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public ImageButtonStyle getStyle() {
        return this.f5898E0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button
    public void setStyle(Button.ButtonStyle buttonStyle) {
        if (buttonStyle instanceof ImageButtonStyle) {
            this.f5898E0 = (ImageButtonStyle) buttonStyle;
            super.setStyle(buttonStyle);
            if (this.f5897D0 != null) {
                m23830E();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("style must be an ImageButtonStyle.");
    }

    public ImageButton(Skin skin, String str) {
        this((ImageButtonStyle) skin.get(str, ImageButtonStyle.class));
        setSkin(skin);
    }

    @Null
    /* renamed from: C */
    public Drawable m23832C() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        if (isDisabled() && (drawable3 = this.f5898E0.imageDisabled) != null) {
            return drawable3;
        }
        if (isPressed()) {
            if (isChecked() && (drawable2 = this.f5898E0.imageCheckedDown) != null) {
                return drawable2;
            }
            Drawable drawable4 = this.f5898E0.imageDown;
            if (drawable4 != null) {
                return drawable4;
            }
        }
        if (isOver()) {
            if (isChecked()) {
                Drawable drawable5 = this.f5898E0.imageCheckedOver;
                if (drawable5 != null) {
                    return drawable5;
                }
            } else {
                Drawable drawable6 = this.f5898E0.imageOver;
                if (drawable6 != null) {
                    return drawable6;
                }
            }
        }
        if (isChecked()) {
            Drawable drawable7 = this.f5898E0.imageChecked;
            if (drawable7 != null) {
                return drawable7;
            }
            if (isOver() && (drawable = this.f5898E0.imageOver) != null) {
                return drawable;
            }
        }
        return this.f5898E0.imageUp;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Button, com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        m23830E();
        super.draw(batch, f);
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
            str = "ImageButton ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(name2);
        sb.append(": ");
        sb.append(this.f5897D0.getDrawable());
        return sb.toString();
    }

    public ImageButton(ImageButtonStyle imageButtonStyle) {
        super(imageButtonStyle);
        Image m23831D = m23831D();
        this.f5897D0 = m23831D;
        add((ImageButton) m23831D);
        setStyle(imageButtonStyle);
        setSize(getPrefWidth(), getPrefHeight());
    }

    public ImageButton(@Null Drawable drawable) {
        this(new ImageButtonStyle(null, null, null, drawable, null, null));
    }

    public ImageButton(@Null Drawable drawable, @Null Drawable drawable2) {
        this(new ImageButtonStyle(null, null, null, drawable, drawable2, null));
    }

    public ImageButton(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3) {
        this(new ImageButtonStyle(null, null, null, drawable, drawable2, drawable3));
    }
}
