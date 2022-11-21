package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.math.Circle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Touchpad */
/* loaded from: classes.dex */
public class Touchpad extends Widget {

    /* renamed from: I */
    public TouchpadStyle f6188I;

    /* renamed from: J */
    public boolean f6189J;

    /* renamed from: K */
    public boolean f6190K;

    /* renamed from: L */
    public float f6191L;

    /* renamed from: M */
    public final Circle f6192M;

    /* renamed from: N */
    public final Circle f6193N;

    /* renamed from: O */
    public final Circle f6194O;

    /* renamed from: P */
    public final Vector2 f6195P;

    /* renamed from: Q */
    public final Vector2 f6196Q;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Touchpad$TouchpadStyle */
    /* loaded from: classes.dex */
    public static class TouchpadStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable knob;

        public TouchpadStyle() {
        }

        public TouchpadStyle(@Null Drawable drawable, @Null Drawable drawable2) {
            this.background = drawable;
            this.knob = drawable2;
        }

        public TouchpadStyle(TouchpadStyle touchpadStyle) {
            this.background = touchpadStyle.background;
            this.knob = touchpadStyle.knob;
        }
    }

    public Touchpad(float f, Skin skin) {
        this(f, (TouchpadStyle) skin.get(TouchpadStyle.class));
    }

    public float getKnobPercentX() {
        return this.f6196Q.f5527x;
    }

    public float getKnobPercentY() {
        return this.f6196Q.f5528y;
    }

    public float getKnobX() {
        return this.f6195P.f5527x;
    }

    public float getKnobY() {
        return this.f6195P.f5528y;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        Drawable drawable = this.f6188I.background;
        if (drawable != null) {
            return drawable.getMinHeight();
        }
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        Drawable drawable = this.f6188I.background;
        if (drawable != null) {
            return drawable.getMinWidth();
        }
        return 0.0f;
    }

    public boolean getResetOnTouchUp() {
        return this.f6190K;
    }

    public TouchpadStyle getStyle() {
        return this.f6188I;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public Actor hit(float f, float f2, boolean z) {
        if ((!z || getTouchable() == Touchable.enabled) && isVisible() && this.f6193N.contains(f, f2)) {
            return this;
        }
        return null;
    }

    public boolean isTouched() {
        return this.f6189J;
    }

    public void setDeadzone(float f) {
        if (f >= 0.0f) {
            this.f6191L = f;
            invalidate();
            return;
        }
        throw new IllegalArgumentException("deadzoneRadius must be > 0");
    }

    public void setResetOnTouchUp(boolean z) {
        this.f6190K = z;
    }

    public Touchpad(float f, Skin skin, String str) {
        this(f, (TouchpadStyle) skin.get(str, TouchpadStyle.class));
    }

    /* renamed from: g */
    public void m23734g(float f, float f2, boolean z) {
        Vector2 vector2 = this.f6195P;
        float f3 = vector2.f5527x;
        float f4 = vector2.f5528y;
        Vector2 vector22 = this.f6196Q;
        float f5 = vector22.f5527x;
        float f6 = vector22.f5528y;
        Circle circle = this.f6192M;
        float f7 = circle.f5379x;
        float f8 = circle.f5380y;
        vector2.set(f7, f8);
        this.f6196Q.set(0.0f, 0.0f);
        if (!z && !this.f6194O.contains(f, f2)) {
            Vector2 vector23 = this.f6196Q;
            float f9 = f - f7;
            float f10 = this.f6192M.radius;
            vector23.set(f9 / f10, (f2 - f8) / f10);
            float len = this.f6196Q.len();
            if (len > 1.0f) {
                this.f6196Q.scl(1.0f / len);
            }
            if (this.f6192M.contains(f, f2)) {
                this.f6195P.set(f, f2);
            } else {
                Vector2 scl = this.f6195P.set(this.f6196Q).nor().scl(this.f6192M.radius);
                Circle circle2 = this.f6192M;
                scl.add(circle2.f5379x, circle2.f5380y);
            }
        }
        Vector2 vector24 = this.f6196Q;
        if (f5 != vector24.f5527x || f6 != vector24.f5528y) {
            ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
            if (fire(changeEvent)) {
                this.f6196Q.set(f5, f6);
                this.f6195P.set(f3, f4);
            }
            Pools.free(changeEvent);
        }
    }

    public void setStyle(TouchpadStyle touchpadStyle) {
        if (touchpadStyle != null) {
            this.f6188I = touchpadStyle;
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null");
    }

    public Touchpad(float f, TouchpadStyle touchpadStyle) {
        this.f6190K = true;
        this.f6192M = new Circle(0.0f, 0.0f, 0.0f);
        this.f6193N = new Circle(0.0f, 0.0f, 0.0f);
        this.f6194O = new Circle(0.0f, 0.0f, 0.0f);
        Vector2 vector2 = new Vector2();
        this.f6195P = vector2;
        this.f6196Q = new Vector2();
        if (f >= 0.0f) {
            this.f6191L = f;
            vector2.set(getWidth() / 2.0f, getHeight() / 2.0f);
            setStyle(touchpadStyle);
            setSize(getPrefWidth(), getPrefHeight());
            addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Touchpad.1
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchDragged(InputEvent inputEvent, float f2, float f3, int i) {
                    Touchpad.this.m23734g(f2, f3, false);
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                    Touchpad touchpad = Touchpad.this;
                    if (touchpad.f6189J) {
                        return false;
                    }
                    touchpad.f6189J = true;
                    touchpad.m23734g(f2, f3, false);
                    return true;
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void touchUp(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                    Touchpad touchpad = Touchpad.this;
                    touchpad.f6189J = false;
                    touchpad.m23734g(f2, f3, touchpad.f6190K);
                }
            });
            return;
        }
        throw new IllegalArgumentException("deadzoneRadius must be > 0");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        float x = getX();
        float y = getY();
        float width = getWidth();
        float height = getHeight();
        Drawable drawable = this.f6188I.background;
        if (drawable != null) {
            drawable.draw(batch, x, y, width, height);
        }
        Drawable drawable2 = this.f6188I.knob;
        if (drawable2 != null) {
            drawable2.draw(batch, x + (this.f6195P.f5527x - (drawable2.getMinWidth() / 2.0f)), y + (this.f6195P.f5528y - (drawable2.getMinHeight() / 2.0f)), drawable2.getMinWidth(), drawable2.getMinHeight());
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float min = Math.min(width, height);
        this.f6193N.set(width, height, min);
        Drawable drawable = this.f6188I.knob;
        if (drawable != null) {
            min -= Math.max(drawable.getMinWidth(), this.f6188I.knob.getMinHeight()) / 2.0f;
        }
        this.f6192M.set(width, height, min);
        this.f6194O.set(width, height, this.f6191L);
        this.f6195P.set(width, height);
        this.f6196Q.set(0.0f, 0.0f);
    }
}
