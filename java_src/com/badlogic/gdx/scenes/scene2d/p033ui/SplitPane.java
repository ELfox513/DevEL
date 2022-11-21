package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.SplitPane */
/* loaded from: classes.dex */
public class SplitPane extends WidgetGroup {

    /* renamed from: P */
    public SplitPaneStyle f6055P;
    @Null

    /* renamed from: Q */
    public Actor f6056Q;
    @Null

    /* renamed from: R */
    public Actor f6057R;

    /* renamed from: S */
    public boolean f6058S;

    /* renamed from: T */
    public float f6059T;

    /* renamed from: U */
    public float f6060U;

    /* renamed from: V */
    public float f6061V;

    /* renamed from: W */
    public final Rectangle f6062W;

    /* renamed from: X */
    public final Rectangle f6063X;

    /* renamed from: Y */
    public final Rectangle f6064Y;

    /* renamed from: Z */
    public boolean f6065Z;

    /* renamed from: a0 */
    public final Rectangle f6066a0;

    /* renamed from: b0 */
    public Vector2 f6067b0;

    /* renamed from: c0 */
    public Vector2 f6068c0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.SplitPane$SplitPaneStyle */
    /* loaded from: classes.dex */
    public static class SplitPaneStyle {
        public Drawable handle;

        public SplitPaneStyle() {
        }

        public SplitPaneStyle(Drawable drawable) {
            this.handle = drawable;
        }

        public SplitPaneStyle(SplitPaneStyle splitPaneStyle) {
            this.handle = splitPaneStyle.handle;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SplitPane(@com.badlogic.gdx.utils.Null com.badlogic.gdx.scenes.scene2d.Actor r9, @com.badlogic.gdx.utils.Null com.badlogic.gdx.scenes.scene2d.Actor r10, boolean r11, com.badlogic.gdx.scenes.scene2d.p033ui.Skin r12) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "default-"
            r0.append(r1)
            if (r11 == 0) goto Lf
            java.lang.String r1 = "vertical"
            goto L11
        Lf:
            java.lang.String r1 = "horizontal"
        L11:
            r0.append(r1)
            java.lang.String r7 = r0.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r2.<init>(r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.SplitPane.<init>(com.badlogic.gdx.scenes.scene2d.Actor, com.badlogic.gdx.scenes.scene2d.Actor, boolean, com.badlogic.gdx.scenes.scene2d.ui.Skin):void");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public void addActor(Actor actor) {
        throw new UnsupportedOperationException("Use SplitPane#setWidget.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public void addActorAt(int i, Actor actor) {
        throw new UnsupportedOperationException("Use SplitPane#setWidget.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public void addActorBefore(Actor actor, Actor actor2) {
        throw new UnsupportedOperationException("Use SplitPane#setWidget.");
    }

    public float getMaxSplitAmount() {
        return this.f6061V;
    }

    public float getMinSplitAmount() {
        return this.f6060U;
    }

    public float getSplitAmount() {
        return this.f6059T;
    }

    public SplitPaneStyle getStyle() {
        return this.f6055P;
    }

    public boolean isCursorOverHandle() {
        return this.f6065Z;
    }

    public boolean isVertical() {
        return this.f6058S;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor) {
        if (actor != null) {
            if (actor == this.f6056Q) {
                setFirstWidget(null);
                return true;
            }
            if (actor == this.f6057R) {
                setSecondWidget(null);
            }
            return true;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public void setMaxSplitAmount(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            this.f6061V = f;
            return;
        }
        throw new GdxRuntimeException("maxAmount has to be >= 0 and <= 1");
    }

    public void setMinSplitAmount(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            this.f6060U = f;
            return;
        }
        throw new GdxRuntimeException("minAmount has to be >= 0 and <= 1");
    }

    /* renamed from: t */
    public final void m23783t() {
        addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.SplitPane.1

            /* renamed from: b */
            public int f6069b = -1;

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                SplitPane splitPane = SplitPane.this;
                splitPane.f6065Z = splitPane.f6064Y.contains(f, f2);
                return false;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (i == this.f6069b) {
                    this.f6069b = -1;
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (this.f6069b != -1) {
                    return false;
                }
                if ((i == 0 && i2 != 0) || !SplitPane.this.f6064Y.contains(f, f2)) {
                    return false;
                }
                this.f6069b = i;
                SplitPane.this.f6067b0.set(f, f2);
                SplitPane splitPane = SplitPane.this;
                Vector2 vector2 = splitPane.f6068c0;
                Rectangle rectangle = splitPane.f6064Y;
                vector2.set(rectangle.f5523x, rectangle.f5524y);
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
                if (i != this.f6069b) {
                    return;
                }
                SplitPane splitPane = SplitPane.this;
                Drawable drawable = splitPane.f6055P.handle;
                if (!splitPane.f6058S) {
                    float width = splitPane.getWidth() - drawable.getMinWidth();
                    Vector2 vector2 = SplitPane.this.f6068c0;
                    float f3 = vector2.f5527x + (f - splitPane.f6067b0.f5527x);
                    vector2.f5527x = f3;
                    float min = Math.min(width, Math.max(0.0f, f3));
                    SplitPane splitPane2 = SplitPane.this;
                    splitPane2.f6059T = min / width;
                    splitPane2.f6067b0.set(f, f2);
                } else {
                    float height = splitPane.getHeight() - drawable.getMinHeight();
                    Vector2 vector22 = SplitPane.this.f6068c0;
                    float f4 = vector22.f5528y + (f2 - splitPane.f6067b0.f5528y);
                    vector22.f5528y = f4;
                    float min2 = Math.min(height, Math.max(0.0f, f4));
                    SplitPane splitPane3 = SplitPane.this;
                    splitPane3.f6059T = 1.0f - (min2 / height);
                    splitPane3.f6067b0.set(f, f2);
                }
                SplitPane.this.invalidate();
            }
        });
    }

    public SplitPane(@Null Actor actor, @Null Actor actor2, boolean z, Skin skin, String str) {
        this(actor, actor2, z, (SplitPaneStyle) skin.get(str, SplitPaneStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        float f;
        Actor actor = this.f6056Q;
        float f2 = 0.0f;
        if (actor instanceof Layout) {
            f = ((Layout) actor).getMinHeight();
        } else {
            f = 0.0f;
        }
        Actor actor2 = this.f6057R;
        if (actor2 instanceof Layout) {
            f2 = ((Layout) actor2).getMinHeight();
        }
        if (!this.f6058S) {
            return Math.max(f, f2);
        }
        return f + this.f6055P.handle.getMinHeight() + f2;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        float f;
        Actor actor = this.f6056Q;
        float f2 = 0.0f;
        if (actor instanceof Layout) {
            f = ((Layout) actor).getMinWidth();
        } else {
            f = 0.0f;
        }
        Actor actor2 = this.f6057R;
        if (actor2 instanceof Layout) {
            f2 = ((Layout) actor2).getMinWidth();
        }
        if (this.f6058S) {
            return Math.max(f, f2);
        }
        return f + this.f6055P.handle.getMinWidth() + f2;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float height;
        Actor actor = this.f6056Q;
        float f = 0.0f;
        if (actor == null) {
            height = 0.0f;
        } else if (actor instanceof Layout) {
            height = ((Layout) actor).getPrefHeight();
        } else {
            height = actor.getHeight();
        }
        Actor actor2 = this.f6057R;
        if (actor2 != null) {
            if (actor2 instanceof Layout) {
                f = ((Layout) actor2).getPrefHeight();
            } else {
                f = actor2.getHeight();
            }
        }
        if (!this.f6058S) {
            return Math.max(height, f);
        }
        return height + this.f6055P.handle.getMinHeight() + f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        float width;
        Actor actor = this.f6056Q;
        float f = 0.0f;
        if (actor == null) {
            width = 0.0f;
        } else if (actor instanceof Layout) {
            width = ((Layout) actor).getPrefWidth();
        } else {
            width = actor.getWidth();
        }
        Actor actor2 = this.f6057R;
        if (actor2 != null) {
            if (actor2 instanceof Layout) {
                f = ((Layout) actor2).getPrefWidth();
            } else {
                f = actor2.getWidth();
            }
        }
        if (this.f6058S) {
            return Math.max(width, f);
        }
        return width + this.f6055P.handle.getMinWidth() + f;
    }

    /* renamed from: q */
    public final void m23786q() {
        Drawable drawable = this.f6055P.handle;
        float height = getHeight();
        float width = getWidth() - drawable.getMinWidth();
        float f = (int) (this.f6059T * width);
        float minWidth = drawable.getMinWidth();
        this.f6062W.set(0.0f, 0.0f, f, height);
        this.f6063X.set(f + minWidth, 0.0f, width - f, height);
        this.f6064Y.set(f, 0.0f, minWidth, height);
    }

    /* renamed from: r */
    public final void m23785r() {
        Drawable drawable = this.f6055P.handle;
        float width = getWidth();
        float height = getHeight();
        float minHeight = height - drawable.getMinHeight();
        float f = (int) (this.f6059T * minHeight);
        float f2 = minHeight - f;
        float minHeight2 = drawable.getMinHeight();
        this.f6062W.set(0.0f, height - f, width, f);
        this.f6063X.set(0.0f, 0.0f, width, f2);
        this.f6064Y.set(0.0f, f2, width, minHeight2);
    }

    /* renamed from: s */
    public void m23784s() {
        float f = this.f6060U;
        float f2 = this.f6061V;
        if (this.f6058S) {
            float height = getHeight() - this.f6055P.handle.getMinHeight();
            Actor actor = this.f6056Q;
            if (actor instanceof Layout) {
                f = Math.max(f, Math.min(((Layout) actor).getMinHeight() / height, 1.0f));
            }
            Actor actor2 = this.f6057R;
            if (actor2 instanceof Layout) {
                f2 = Math.min(f2, 1.0f - Math.min(((Layout) actor2).getMinHeight() / height, 1.0f));
            }
        } else {
            float width = getWidth() - this.f6055P.handle.getMinWidth();
            Actor actor3 = this.f6056Q;
            if (actor3 instanceof Layout) {
                f = Math.max(f, Math.min(((Layout) actor3).getMinWidth() / width, 1.0f));
            }
            Actor actor4 = this.f6057R;
            if (actor4 instanceof Layout) {
                f2 = Math.min(f2, 1.0f - Math.min(((Layout) actor4).getMinWidth() / width, 1.0f));
            }
        }
        if (f > f2) {
            this.f6059T = (f + f2) * 0.5f;
        } else {
            this.f6059T = Math.max(Math.min(this.f6059T, f2), f);
        }
    }

    public void setFirstWidget(@Null Actor actor) {
        Actor actor2 = this.f6056Q;
        if (actor2 != null) {
            super.removeActor(actor2);
        }
        this.f6056Q = actor;
        if (actor != null) {
            super.addActor(actor);
        }
        invalidate();
    }

    public void setSecondWidget(@Null Actor actor) {
        Actor actor2 = this.f6057R;
        if (actor2 != null) {
            super.removeActor(actor2);
        }
        this.f6057R = actor;
        if (actor != null) {
            super.addActor(actor);
        }
        invalidate();
    }

    public void setSplitAmount(float f) {
        this.f6059T = f;
        invalidate();
    }

    public void setStyle(SplitPaneStyle splitPaneStyle) {
        this.f6055P = splitPaneStyle;
        invalidateHierarchy();
    }

    public void setVertical(boolean z) {
        if (this.f6058S == z) {
            return;
        }
        this.f6058S = z;
        invalidateHierarchy();
    }

    public SplitPane(@Null Actor actor, @Null Actor actor2, boolean z, SplitPaneStyle splitPaneStyle) {
        this.f6059T = 0.5f;
        this.f6061V = 1.0f;
        this.f6062W = new Rectangle();
        this.f6063X = new Rectangle();
        this.f6064Y = new Rectangle();
        this.f6066a0 = new Rectangle();
        this.f6067b0 = new Vector2();
        this.f6068c0 = new Vector2();
        this.f6058S = z;
        setStyle(splitPaneStyle);
        setFirstWidget(actor);
        setSecondWidget(actor2);
        setSize(getPrefWidth(), getPrefHeight());
        m23783t();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        Stage stage = getStage();
        if (stage == null) {
            return;
        }
        validate();
        Color color = getColor();
        float f2 = color.f3889a * f;
        m23865g(batch, m23863j());
        Actor actor = this.f6056Q;
        if (actor != null && actor.isVisible()) {
            batch.flush();
            stage.calculateScissors(this.f6062W, this.f6066a0);
            if (ScissorStack.pushScissors(this.f6066a0)) {
                this.f6056Q.draw(batch, f2);
                batch.flush();
                ScissorStack.popScissors();
            }
        }
        Actor actor2 = this.f6057R;
        if (actor2 != null && actor2.isVisible()) {
            batch.flush();
            stage.calculateScissors(this.f6063X, this.f6066a0);
            if (ScissorStack.pushScissors(this.f6066a0)) {
                this.f6057R.draw(batch, f2);
                batch.flush();
                ScissorStack.popScissors();
            }
        }
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, f2);
        Drawable drawable = this.f6055P.handle;
        Rectangle rectangle = this.f6064Y;
        drawable.draw(batch, rectangle.f5523x, rectangle.f5524y, rectangle.width, rectangle.height);
        m23860m(batch);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        m23784s();
        if (!this.f6058S) {
            m23786q();
        } else {
            m23785r();
        }
        Actor actor = this.f6056Q;
        if (actor != null) {
            Rectangle rectangle = this.f6062W;
            actor.setBounds(rectangle.f5523x, rectangle.f5524y, rectangle.width, rectangle.height);
            if (actor instanceof Layout) {
                ((Layout) actor).validate();
            }
        }
        Actor actor2 = this.f6057R;
        if (actor2 != null) {
            Rectangle rectangle2 = this.f6063X;
            actor2.setBounds(rectangle2.f5523x, rectangle2.f5524y, rectangle2.width, rectangle2.height);
            if (actor2 instanceof Layout) {
                ((Layout) actor2).validate();
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public Actor removeActorAt(int i, boolean z) {
        Actor removeActorAt = super.removeActorAt(i, z);
        if (removeActorAt == this.f6056Q) {
            super.removeActor(removeActorAt, z);
            this.f6056Q = null;
            invalidate();
        } else if (removeActorAt == this.f6057R) {
            super.removeActor(removeActorAt, z);
            this.f6057R = null;
            invalidate();
        }
        return removeActorAt;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor, boolean z) {
        if (actor != null) {
            if (actor == this.f6056Q) {
                super.removeActor(actor, z);
                this.f6056Q = null;
                invalidate();
                return true;
            } else if (actor == this.f6057R) {
                super.removeActor(actor, z);
                this.f6057R = null;
                invalidate();
                return true;
            } else {
                return false;
            }
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }
}
