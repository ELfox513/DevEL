package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Disableable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.SnapshotArray;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Button */
/* loaded from: classes.dex */
public class Button extends Table implements Disableable {

    /* renamed from: A0 */
    public ButtonGroup f5774A0;

    /* renamed from: B0 */
    public ClickListener f5775B0;

    /* renamed from: C0 */
    public boolean f5776C0;

    /* renamed from: x0 */
    public ButtonStyle f5777x0;

    /* renamed from: y0 */
    public boolean f5778y0;

    /* renamed from: z0 */
    public boolean f5779z0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Button$ButtonStyle */
    /* loaded from: classes.dex */
    public static class ButtonStyle {
        @Null
        public Drawable checked;
        @Null
        public Drawable checkedDown;
        @Null
        public Drawable checkedFocused;
        public float checkedOffsetX;
        public float checkedOffsetY;
        @Null
        public Drawable checkedOver;
        @Null
        public Drawable disabled;
        @Null
        public Drawable down;
        @Null
        public Drawable focused;
        @Null
        public Drawable over;
        public float pressedOffsetX;
        public float pressedOffsetY;
        public float unpressedOffsetX;
        public float unpressedOffsetY;
        @Null

        /* renamed from: up */
        public Drawable f5781up;

        public ButtonStyle() {
        }

        public ButtonStyle(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3) {
            this.f5781up = drawable;
            this.down = drawable2;
            this.checked = drawable3;
        }

        public ButtonStyle(ButtonStyle buttonStyle) {
            this.f5781up = buttonStyle.f5781up;
            this.down = buttonStyle.down;
            this.over = buttonStyle.over;
            this.focused = buttonStyle.focused;
            this.disabled = buttonStyle.disabled;
            this.checked = buttonStyle.checked;
            this.checkedOver = buttonStyle.checkedOver;
            this.checkedDown = buttonStyle.checkedDown;
            this.checkedFocused = buttonStyle.checkedFocused;
            this.pressedOffsetX = buttonStyle.pressedOffsetX;
            this.pressedOffsetY = buttonStyle.pressedOffsetY;
            this.unpressedOffsetX = buttonStyle.unpressedOffsetX;
            this.unpressedOffsetY = buttonStyle.unpressedOffsetY;
            this.checkedOffsetX = buttonStyle.checkedOffsetX;
            this.checkedOffsetY = buttonStyle.checkedOffsetY;
        }
    }

    public Button(Skin skin) {
        super(skin);
        this.f5776C0 = true;
        m23846A();
        setStyle((ButtonStyle) skin.get(ButtonStyle.class));
        setSize(getPrefWidth(), getPrefHeight());
    }

    @Null
    public ButtonGroup getButtonGroup() {
        return this.f5774A0;
    }

    public ClickListener getClickListener() {
        return this.f5775B0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        return getPrefHeight();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        return getPrefWidth();
    }

    public ButtonStyle getStyle() {
        return this.f5777x0;
    }

    public boolean isChecked() {
        return this.f5778y0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public boolean isDisabled() {
        return this.f5779z0;
    }

    public boolean isOver() {
        return this.f5775B0.isOver();
    }

    public boolean isPressed() {
        return this.f5775B0.isVisualPressed();
    }

    public void setChecked(boolean z) {
        m23845B(z, this.f5776C0);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public void setDisabled(boolean z) {
        this.f5779z0 = z;
    }

    public void setProgrammaticChangeEvents(boolean z) {
        this.f5776C0 = z;
    }

    public void toggle() {
        setChecked(!this.f5778y0);
    }

    /* renamed from: A */
    public final void m23846A() {
        setTouchable(Touchable.enabled);
        ClickListener clickListener = new ClickListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Button.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                if (Button.this.isDisabled()) {
                    return;
                }
                Button button = Button.this;
                button.m23845B(!button.f5778y0, true);
            }
        };
        this.f5775B0 = clickListener;
        addListener(clickListener);
    }

    /* renamed from: B */
    public void m23845B(boolean z, boolean z2) {
        if (this.f5778y0 == z) {
            return;
        }
        ButtonGroup buttonGroup = this.f5774A0;
        if (buttonGroup != null && !buttonGroup.m23843a(this, z)) {
            return;
        }
        this.f5778y0 = z;
        if (z2) {
            ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
            if (fire(changeEvent)) {
                this.f5778y0 = !z;
            }
            Pools.free(changeEvent);
        }
    }

    public void setStyle(ButtonStyle buttonStyle) {
        if (buttonStyle != null) {
            this.f5777x0 = buttonStyle;
            setBackground(m23844z());
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float f2;
        float f3;
        boolean z;
        validate();
        setBackground(m23844z());
        if (isPressed() && !isDisabled()) {
            ButtonStyle buttonStyle = this.f5777x0;
            f2 = buttonStyle.pressedOffsetX;
            f3 = buttonStyle.pressedOffsetY;
        } else if (isChecked() && !isDisabled()) {
            ButtonStyle buttonStyle2 = this.f5777x0;
            f2 = buttonStyle2.checkedOffsetX;
            f3 = buttonStyle2.checkedOffsetY;
        } else {
            ButtonStyle buttonStyle3 = this.f5777x0;
            f2 = buttonStyle3.unpressedOffsetX;
            f3 = buttonStyle3.unpressedOffsetY;
        }
        if (f2 == 0.0f && f3 == 0.0f) {
            z = false;
        } else {
            z = true;
        }
        SnapshotArray<Actor> children = getChildren();
        if (z) {
            for (int i = 0; i < children.size; i++) {
                children.get(i).moveBy(f2, f3);
            }
        }
        super.draw(batch, f);
        if (z) {
            for (int i2 = 0; i2 < children.size; i2++) {
                children.get(i2).moveBy(-f2, -f3);
            }
        }
        Stage stage = getStage();
        if (stage != null && stage.getActionsRequestRendering() && isPressed() != this.f5775B0.isPressed()) {
            Gdx.graphics.requestRendering();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float prefHeight = super.getPrefHeight();
        Drawable drawable = this.f5777x0.f5781up;
        if (drawable != null) {
            prefHeight = Math.max(prefHeight, drawable.getMinHeight());
        }
        Drawable drawable2 = this.f5777x0.down;
        if (drawable2 != null) {
            prefHeight = Math.max(prefHeight, drawable2.getMinHeight());
        }
        Drawable drawable3 = this.f5777x0.checked;
        if (drawable3 != null) {
            return Math.max(prefHeight, drawable3.getMinHeight());
        }
        return prefHeight;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Table, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        float prefWidth = super.getPrefWidth();
        Drawable drawable = this.f5777x0.f5781up;
        if (drawable != null) {
            prefWidth = Math.max(prefWidth, drawable.getMinWidth());
        }
        Drawable drawable2 = this.f5777x0.down;
        if (drawable2 != null) {
            prefWidth = Math.max(prefWidth, drawable2.getMinWidth());
        }
        Drawable drawable3 = this.f5777x0.checked;
        if (drawable3 != null) {
            return Math.max(prefWidth, drawable3.getMinWidth());
        }
        return prefWidth;
    }

    @Null
    /* renamed from: z */
    public Drawable m23844z() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        if (isDisabled() && (drawable5 = this.f5777x0.disabled) != null) {
            return drawable5;
        }
        if (isPressed()) {
            if (isChecked() && (drawable4 = this.f5777x0.checkedDown) != null) {
                return drawable4;
            }
            Drawable drawable6 = this.f5777x0.down;
            if (drawable6 != null) {
                return drawable6;
            }
        }
        if (isOver()) {
            if (isChecked()) {
                Drawable drawable7 = this.f5777x0.checkedOver;
                if (drawable7 != null) {
                    return drawable7;
                }
            } else {
                Drawable drawable8 = this.f5777x0.over;
                if (drawable8 != null) {
                    return drawable8;
                }
            }
        }
        boolean hasKeyboardFocus = hasKeyboardFocus();
        if (isChecked()) {
            if (hasKeyboardFocus && (drawable3 = this.f5777x0.checkedFocused) != null) {
                return drawable3;
            }
            Drawable drawable9 = this.f5777x0.checked;
            if (drawable9 != null) {
                return drawable9;
            }
            if (isOver() && (drawable2 = this.f5777x0.over) != null) {
                return drawable2;
            }
        }
        if (hasKeyboardFocus && (drawable = this.f5777x0.focused) != null) {
            return drawable;
        }
        return this.f5777x0.f5781up;
    }

    public Button(Skin skin, String str) {
        super(skin);
        this.f5776C0 = true;
        m23846A();
        setStyle((ButtonStyle) skin.get(str, ButtonStyle.class));
        setSize(getPrefWidth(), getPrefHeight());
    }

    public Button(Actor actor, Skin skin, String str) {
        this(actor, (ButtonStyle) skin.get(str, ButtonStyle.class));
        setSkin(skin);
    }

    public Button(Actor actor, ButtonStyle buttonStyle) {
        this.f5776C0 = true;
        m23846A();
        add((Button) actor);
        setStyle(buttonStyle);
        setSize(getPrefWidth(), getPrefHeight());
    }

    public Button(ButtonStyle buttonStyle) {
        this.f5776C0 = true;
        m23846A();
        setStyle(buttonStyle);
        setSize(getPrefWidth(), getPrefHeight());
    }

    public Button() {
        this.f5776C0 = true;
        m23846A();
    }

    public Button(@Null Drawable drawable) {
        this(new ButtonStyle(drawable, null, null));
    }

    public Button(@Null Drawable drawable, @Null Drawable drawable2) {
        this(new ButtonStyle(drawable, drawable2, null));
    }

    public Button(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3) {
        this(new ButtonStyle(drawable, drawable2, drawable3));
    }

    public Button(Actor actor, Skin skin) {
        this(actor, (ButtonStyle) skin.get(ButtonStyle.class));
    }
}
