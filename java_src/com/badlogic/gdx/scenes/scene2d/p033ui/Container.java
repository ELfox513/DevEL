package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Value;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Container */
/* loaded from: classes.dex */
public class Container<T extends Actor> extends WidgetGroup {
    @Null

    /* renamed from: P */
    public T f5838P;

    /* renamed from: Q */
    public Value f5839Q;

    /* renamed from: R */
    public Value f5840R;

    /* renamed from: S */
    public Value f5841S;

    /* renamed from: T */
    public Value f5842T;

    /* renamed from: U */
    public Value f5843U;

    /* renamed from: V */
    public Value f5844V;

    /* renamed from: W */
    public Value f5845W;

    /* renamed from: X */
    public Value f5846X;

    /* renamed from: Y */
    public Value f5847Y;

    /* renamed from: Z */
    public Value f5848Z;

    /* renamed from: a0 */
    public float f5849a0;

    /* renamed from: b0 */
    public float f5850b0;

    /* renamed from: c0 */
    public int f5851c0;
    @Null

    /* renamed from: d0 */
    public Drawable f5852d0;

    /* renamed from: e0 */
    public boolean f5853e0;

    /* renamed from: f0 */
    public boolean f5854f0;

    public Container() {
        this.f5839Q = Value.minWidth;
        this.f5840R = Value.minHeight;
        this.f5841S = Value.prefWidth;
        this.f5842T = Value.prefHeight;
        Value.Fixed fixed = Value.zero;
        this.f5843U = fixed;
        this.f5844V = fixed;
        this.f5845W = fixed;
        this.f5846X = fixed;
        this.f5847Y = fixed;
        this.f5848Z = fixed;
        this.f5854f0 = true;
        setTouchable(Touchable.childrenOnly);
        setTransform(false);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActor(Actor actor) {
        throw new UnsupportedOperationException("Use Container#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorAfter(Actor actor, Actor actor2) {
        throw new UnsupportedOperationException("Use Container#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorAt(int i, Actor actor) {
        throw new UnsupportedOperationException("Use Container#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorBefore(Actor actor, Actor actor2) {
        throw new UnsupportedOperationException("Use Container#setActor.");
    }

    public Container<T> align(int i) {
        this.f5851c0 = i;
        return this;
    }

    public Container<T> background(@Null Drawable drawable) {
        setBackground(drawable);
        return this;
    }

    public Container<T> center() {
        this.f5851c0 = 1;
        return this;
    }

    public Container<T> clip() {
        setClip(true);
        return this;
    }

    public Container<T> fill() {
        this.f5849a0 = 1.0f;
        this.f5850b0 = 1.0f;
        return this;
    }

    public Container<T> fillX() {
        this.f5849a0 = 1.0f;
        return this;
    }

    public Container<T> fillY() {
        this.f5850b0 = 1.0f;
        return this;
    }

    @Null
    public T getActor() {
        return this.f5838P;
    }

    public int getAlign() {
        return this.f5851c0;
    }

    @Null
    public Drawable getBackground() {
        return this.f5852d0;
    }

    public boolean getClip() {
        return this.f5853e0;
    }

    public float getFillX() {
        return this.f5849a0;
    }

    public float getFillY() {
        return this.f5850b0;
    }

    public Value getMaxHeightValue() {
        return this.f5844V;
    }

    public Value getMaxWidthValue() {
        return this.f5843U;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        return this.f5840R.get(this.f5838P) + this.f5845W.get(this) + this.f5847Y.get(this);
    }

    public Value getMinHeightValue() {
        return this.f5840R;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        return this.f5839Q.get(this.f5838P) + this.f5846X.get(this) + this.f5848Z.get(this);
    }

    public float getPadBottom() {
        return this.f5847Y.get(this);
    }

    public Value getPadBottomValue() {
        return this.f5847Y;
    }

    public float getPadLeft() {
        return this.f5846X.get(this);
    }

    public Value getPadLeftValue() {
        return this.f5846X;
    }

    public float getPadRight() {
        return this.f5848Z.get(this);
    }

    public Value getPadRightValue() {
        return this.f5848Z;
    }

    public float getPadTop() {
        return this.f5845W.get(this);
    }

    public Value getPadTopValue() {
        return this.f5845W;
    }

    public float getPadX() {
        return this.f5846X.get(this) + this.f5848Z.get(this);
    }

    public float getPadY() {
        return this.f5845W.get(this) + this.f5847Y.get(this);
    }

    public Value getPrefHeightValue() {
        return this.f5842T;
    }

    public Value getPrefWidthValue() {
        return this.f5841S;
    }

    public Container<T> height(Value value) {
        if (value != null) {
            this.f5840R = value;
            this.f5842T = value;
            this.f5844V = value;
            return this;
        }
        throw new IllegalArgumentException("height cannot be null.");
    }

    public Container<T> maxHeight(Value value) {
        if (value != null) {
            this.f5844V = value;
            return this;
        }
        throw new IllegalArgumentException("maxHeight cannot be null.");
    }

    public Container<T> maxSize(Value value) {
        if (value != null) {
            this.f5843U = value;
            this.f5844V = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Container<T> maxWidth(Value value) {
        if (value != null) {
            this.f5843U = value;
            return this;
        }
        throw new IllegalArgumentException("maxWidth cannot be null.");
    }

    public Container<T> minHeight(Value value) {
        if (value != null) {
            this.f5840R = value;
            return this;
        }
        throw new IllegalArgumentException("minHeight cannot be null.");
    }

    public Container<T> minSize(Value value) {
        if (value != null) {
            this.f5839Q = value;
            this.f5840R = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Container<T> minWidth(Value value) {
        if (value != null) {
            this.f5839Q = value;
            return this;
        }
        throw new IllegalArgumentException("minWidth cannot be null.");
    }

    public Container<T> pad(Value value) {
        if (value != null) {
            this.f5845W = value;
            this.f5846X = value;
            this.f5847Y = value;
            this.f5848Z = value;
            return this;
        }
        throw new IllegalArgumentException("pad cannot be null.");
    }

    public Container<T> padBottom(Value value) {
        if (value != null) {
            this.f5847Y = value;
            return this;
        }
        throw new IllegalArgumentException("padBottom cannot be null.");
    }

    public Container<T> padLeft(Value value) {
        if (value != null) {
            this.f5846X = value;
            return this;
        }
        throw new IllegalArgumentException("padLeft cannot be null.");
    }

    public Container<T> padRight(Value value) {
        if (value != null) {
            this.f5848Z = value;
            return this;
        }
        throw new IllegalArgumentException("padRight cannot be null.");
    }

    public Container<T> padTop(Value value) {
        if (value != null) {
            this.f5845W = value;
            return this;
        }
        throw new IllegalArgumentException("padTop cannot be null.");
    }

    public Container<T> prefHeight(Value value) {
        if (value != null) {
            this.f5842T = value;
            return this;
        }
        throw new IllegalArgumentException("prefHeight cannot be null.");
    }

    public Container<T> prefSize(Value value) {
        if (value != null) {
            this.f5841S = value;
            this.f5842T = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Container<T> prefWidth(Value value) {
        if (value != null) {
            this.f5841S = value;
            return this;
        }
        throw new IllegalArgumentException("prefWidth cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor) {
        if (actor != null) {
            if (actor != this.f5838P) {
                return false;
            }
            setActor(null);
            return true;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public void setBackground(@Null Drawable drawable) {
        setBackground(drawable, true);
    }

    public void setRound(boolean z) {
        this.f5854f0 = z;
    }

    public Container<T> size(Value value) {
        if (value != null) {
            this.f5839Q = value;
            this.f5840R = value;
            this.f5841S = value;
            this.f5842T = value;
            this.f5843U = value;
            this.f5844V = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Container<T> width(Value value) {
        if (value != null) {
            this.f5839Q = value;
            this.f5841S = value;
            this.f5843U = value;
            return this;
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Container<T> bottom() {
        this.f5851c0 = (this.f5851c0 | 4) & (-3);
        return this;
    }

    public Container<T> clip(boolean z) {
        setClip(z);
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxHeight() {
        float f = this.f5844V.get(this.f5838P);
        if (f > 0.0f) {
            return f + this.f5845W.get(this) + this.f5847Y.get(this);
        }
        return f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxWidth() {
        float f = this.f5843U.get(this.f5838P);
        if (f > 0.0f) {
            return f + this.f5846X.get(this) + this.f5848Z.get(this);
        }
        return f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float f = this.f5842T.get(this.f5838P);
        Drawable drawable = this.f5852d0;
        if (drawable != null) {
            f = Math.max(f, drawable.getMinHeight());
        }
        return Math.max(getMinHeight(), f + this.f5845W.get(this) + this.f5847Y.get(this));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        float f = this.f5841S.get(this.f5838P);
        Drawable drawable = this.f5852d0;
        if (drawable != null) {
            f = Math.max(f, drawable.getMinWidth());
        }
        return Math.max(getMinWidth(), f + this.f5846X.get(this) + this.f5848Z.get(this));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    @Null
    public Actor hit(float f, float f2, boolean z) {
        if (this.f5853e0 && ((z && getTouchable() == Touchable.disabled) || f < 0.0f || f >= getWidth() || f2 < 0.0f || f2 >= getHeight())) {
            return null;
        }
        return super.hit(f, f2, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.Container.layout():void");
    }

    public Container<T> left() {
        this.f5851c0 = (this.f5851c0 | 8) & (-17);
        return this;
    }

    /* renamed from: q */
    public void m23838q(Batch batch, float f, float f2, float f3) {
        if (this.f5852d0 == null) {
            return;
        }
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        this.f5852d0.draw(batch, f2, f3, getWidth(), getHeight());
    }

    public Container<T> right() {
        this.f5851c0 = (this.f5851c0 | 16) & (-9);
        return this;
    }

    public void setActor(@Null T t) {
        if (t != this) {
            T t2 = this.f5838P;
            if (t == t2) {
                return;
            }
            if (t2 != null) {
                super.removeActor(t2);
            }
            this.f5838P = t;
            if (t != null) {
                super.addActor(t);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("actor cannot be the Container.");
    }

    public void setBackground(@Null Drawable drawable, boolean z) {
        if (this.f5852d0 == drawable) {
            return;
        }
        this.f5852d0 = drawable;
        if (z) {
            if (drawable == null) {
                pad(Value.zero);
            } else {
                pad(drawable.getTopHeight(), drawable.getLeftWidth(), drawable.getBottomHeight(), drawable.getRightWidth());
            }
            invalidate();
        }
    }

    public void setClip(boolean z) {
        this.f5853e0 = z;
        setTransform(z);
        invalidate();
    }

    public Container<T> top() {
        this.f5851c0 = (this.f5851c0 | 2) & (-5);
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        if (isTransform()) {
            m23865g(batch, m23863j());
            m23838q(batch, f, 0.0f, 0.0f);
            if (this.f5853e0) {
                batch.flush();
                float f2 = this.f5846X.get(this);
                float f3 = this.f5847Y.get(this);
                if (clipBegin(f2, f3, (getWidth() - f2) - this.f5848Z.get(this), (getHeight() - f3) - this.f5845W.get(this))) {
                    m23862k(batch, f);
                    batch.flush();
                    clipEnd();
                }
            } else {
                m23862k(batch, f);
            }
            m23860m(batch);
            return;
        }
        m23838q(batch, f, getX(), getY());
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void drawDebug(ShapeRenderer shapeRenderer) {
        boolean clipBegin;
        validate();
        if (isTransform()) {
            m23864h(shapeRenderer, m23863j());
            if (this.f5853e0) {
                shapeRenderer.flush();
                float f = this.f5846X.get(this);
                float f2 = this.f5847Y.get(this);
                if (this.f5852d0 == null) {
                    clipBegin = clipBegin(0.0f, 0.0f, getWidth(), getHeight());
                } else {
                    clipBegin = clipBegin(f, f2, (getWidth() - f) - this.f5848Z.get(this), (getHeight() - f2) - this.f5845W.get(this));
                }
                if (clipBegin) {
                    m23861l(shapeRenderer);
                    clipEnd();
                }
            } else {
                m23861l(shapeRenderer);
            }
            m23859n(shapeRenderer);
            return;
        }
        super.drawDebug(shapeRenderer);
    }

    public Container<T> fill(float f, float f2) {
        this.f5849a0 = f;
        this.f5850b0 = f2;
        return this;
    }

    public Container<T> maxHeight(float f) {
        this.f5844V = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> maxWidth(float f) {
        this.f5843U = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> minHeight(float f) {
        this.f5840R = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> minWidth(float f) {
        this.f5839Q = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> padBottom(float f) {
        this.f5847Y = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> padLeft(float f) {
        this.f5846X = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> padRight(float f) {
        this.f5848Z = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> padTop(float f) {
        this.f5845W = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> prefHeight(float f) {
        this.f5842T = Value.Fixed.valueOf(f);
        return this;
    }

    public Container<T> prefWidth(float f) {
        this.f5841S = Value.Fixed.valueOf(f);
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public Actor removeActorAt(int i, boolean z) {
        Actor removeActorAt = super.removeActorAt(i, z);
        if (removeActorAt == this.f5838P) {
            this.f5838P = null;
        }
        return removeActorAt;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.utils.Cullable
    public void setCullingArea(Rectangle rectangle) {
        super.setCullingArea(rectangle);
        if (this.f5849a0 == 1.0f && this.f5850b0 == 1.0f) {
            T t = this.f5838P;
            if (t instanceof Cullable) {
                ((Cullable) t).setCullingArea(rectangle);
            }
        }
    }

    public Container<T> maxSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5843U = value;
                this.f5844V = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Container<T> minSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5839Q = value;
                this.f5840R = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Container<T> prefSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5841S = value;
                this.f5842T = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor, boolean z) {
        if (actor != null) {
            if (actor != this.f5838P) {
                return false;
            }
            this.f5838P = null;
            return super.removeActor(actor, z);
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public Container<T> fill(boolean z, boolean z2) {
        this.f5849a0 = z ? 1.0f : 0.0f;
        this.f5850b0 = z2 ? 1.0f : 0.0f;
        return this;
    }

    public Container<T> height(float f) {
        height(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> width(float f) {
        width(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> pad(Value value, Value value2, Value value3, Value value4) {
        if (value != null) {
            if (value2 != null) {
                if (value3 != null) {
                    if (value4 != null) {
                        this.f5845W = value;
                        this.f5846X = value2;
                        this.f5847Y = value3;
                        this.f5848Z = value4;
                        return this;
                    }
                    throw new IllegalArgumentException("right cannot be null.");
                }
                throw new IllegalArgumentException("bottom cannot be null.");
            }
            throw new IllegalArgumentException("left cannot be null.");
        }
        throw new IllegalArgumentException("top cannot be null.");
    }

    public Container<T> fill(boolean z) {
        this.f5849a0 = z ? 1.0f : 0.0f;
        this.f5850b0 = z ? 1.0f : 0.0f;
        return this;
    }

    public Container<T> maxSize(float f) {
        maxSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> minSize(float f) {
        minSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> prefSize(float f, float f2) {
        prefSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Container<T> size(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5839Q = value;
                this.f5840R = value2;
                this.f5841S = value;
                this.f5842T = value2;
                this.f5843U = value;
                this.f5844V = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Container(@Null T t) {
        this();
        setActor(t);
    }

    public Container<T> maxSize(float f, float f2) {
        maxSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Container<T> minSize(float f, float f2) {
        minSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Container<T> prefSize(float f) {
        prefSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> pad(float f) {
        Value.Fixed valueOf = Value.Fixed.valueOf(f);
        this.f5845W = valueOf;
        this.f5846X = valueOf;
        this.f5847Y = valueOf;
        this.f5848Z = valueOf;
        return this;
    }

    public Container<T> size(float f) {
        size(Value.Fixed.valueOf(f));
        return this;
    }

    public Container<T> size(float f, float f2) {
        size(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Container<T> pad(float f, float f2, float f3, float f4) {
        this.f5845W = Value.Fixed.valueOf(f);
        this.f5846X = Value.Fixed.valueOf(f2);
        this.f5847Y = Value.Fixed.valueOf(f3);
        this.f5848Z = Value.Fixed.valueOf(f4);
        return this;
    }
}
