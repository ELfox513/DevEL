package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ScrollPane */
/* loaded from: classes.dex */
public class ScrollPane extends WidgetGroup {

    /* renamed from: A0 */
    public float f5957A0;

    /* renamed from: B0 */
    public float f5958B0;

    /* renamed from: C0 */
    public float f5959C0;

    /* renamed from: D0 */
    public boolean f5960D0;

    /* renamed from: E0 */
    public boolean f5961E0;

    /* renamed from: F0 */
    public boolean f5962F0;

    /* renamed from: G0 */
    public boolean f5963G0;

    /* renamed from: H0 */
    public boolean f5964H0;

    /* renamed from: I0 */
    public boolean f5965I0;

    /* renamed from: J0 */
    public boolean f5966J0;

    /* renamed from: K0 */
    public int f5967K0;

    /* renamed from: P */
    public ScrollPaneStyle f5968P;

    /* renamed from: Q */
    public Actor f5969Q;

    /* renamed from: R */
    public final Rectangle f5970R;

    /* renamed from: S */
    public final Rectangle f5971S;

    /* renamed from: T */
    public final Rectangle f5972T;

    /* renamed from: U */
    public final Rectangle f5973U;

    /* renamed from: V */
    public final Rectangle f5974V;

    /* renamed from: W */
    public final Rectangle f5975W;

    /* renamed from: X */
    public ActorGestureListener f5976X;

    /* renamed from: Y */
    public boolean f5977Y;

    /* renamed from: Z */
    public boolean f5978Z;

    /* renamed from: a0 */
    public boolean f5979a0;

    /* renamed from: b0 */
    public boolean f5980b0;

    /* renamed from: c0 */
    public float f5981c0;

    /* renamed from: d0 */
    public float f5982d0;

    /* renamed from: e0 */
    public float f5983e0;

    /* renamed from: f0 */
    public float f5984f0;

    /* renamed from: g0 */
    public float f5985g0;

    /* renamed from: h0 */
    public float f5986h0;

    /* renamed from: i0 */
    public boolean f5987i0;

    /* renamed from: j0 */
    public boolean f5988j0;

    /* renamed from: k0 */
    public final Vector2 f5989k0;

    /* renamed from: l0 */
    public boolean f5990l0;

    /* renamed from: m0 */
    public boolean f5991m0;

    /* renamed from: n0 */
    public boolean f5992n0;

    /* renamed from: o0 */
    public float f5993o0;

    /* renamed from: p0 */
    public float f5994p0;

    /* renamed from: q0 */
    public float f5995q0;

    /* renamed from: r0 */
    public float f5996r0;

    /* renamed from: s0 */
    public boolean f5997s0;

    /* renamed from: t0 */
    public boolean f5998t0;

    /* renamed from: u0 */
    public float f5999u0;

    /* renamed from: v0 */
    public float f6000v0;

    /* renamed from: w0 */
    public float f6001w0;

    /* renamed from: x0 */
    public float f6002x0;

    /* renamed from: y0 */
    public boolean f6003y0;

    /* renamed from: z0 */
    public boolean f6004z0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ScrollPane$ScrollPaneStyle */
    /* loaded from: classes.dex */
    public static class ScrollPaneStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable corner;
        @Null
        public Drawable hScroll;
        @Null
        public Drawable hScrollKnob;
        @Null
        public Drawable vScroll;
        @Null
        public Drawable vScrollKnob;

        public ScrollPaneStyle() {
        }

        public ScrollPaneStyle(@Null Drawable drawable, @Null Drawable drawable2, @Null Drawable drawable3, @Null Drawable drawable4, @Null Drawable drawable5) {
            this.background = drawable;
            this.hScroll = drawable2;
            this.hScrollKnob = drawable3;
            this.vScroll = drawable4;
            this.vScrollKnob = drawable5;
        }

        public ScrollPaneStyle(ScrollPaneStyle scrollPaneStyle) {
            this.background = scrollPaneStyle.background;
            this.corner = scrollPaneStyle.corner;
            this.hScroll = scrollPaneStyle.hScroll;
            this.hScrollKnob = scrollPaneStyle.hScrollKnob;
            this.vScroll = scrollPaneStyle.vScroll;
            this.vScrollKnob = scrollPaneStyle.vScrollKnob;
        }
    }

    public ScrollPane(@Null Actor actor) {
        this(actor, new ScrollPaneStyle());
    }

    /* renamed from: A */
    public void m23815A(float f) {
        this.f5983e0 = f;
    }

    /* renamed from: B */
    public void m23814B(float f) {
        this.f5984f0 = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActor(Actor actor) {
        throw new UnsupportedOperationException("Use ScrollPane#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorAfter(Actor actor, Actor actor2) {
        throw new UnsupportedOperationException("Use ScrollPane#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorAt(int i, Actor actor) {
        throw new UnsupportedOperationException("Use ScrollPane#setActor.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    @Deprecated
    public void addActorBefore(Actor actor, Actor actor2) {
        throw new UnsupportedOperationException("Use ScrollPane#setActor.");
    }

    public void cancel() {
        this.f5967K0 = -1;
        this.f5987i0 = false;
        this.f5988j0 = false;
        this.f5976X.getGestureDetector().cancel();
    }

    @Null
    public Actor getActor() {
        return this.f5969Q;
    }

    public boolean getFadeScrollBars() {
        return this.f5990l0;
    }

    public float getMaxX() {
        return this.f5985g0;
    }

    public float getMaxY() {
        return this.f5986h0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        return 0.0f;
    }

    public float getOverscrollDistance() {
        return this.f5957A0;
    }

    public float getScrollHeight() {
        return this.f5970R.height;
    }

    public float getScrollWidth() {
        return this.f5970R.width;
    }

    public float getScrollX() {
        return this.f5981c0;
    }

    public float getScrollY() {
        return this.f5982d0;
    }

    public ScrollPaneStyle getStyle() {
        return this.f5968P;
    }

    public boolean getVariableSizeKnobs() {
        return this.f5966J0;
    }

    public float getVelocityX() {
        return this.f6001w0;
    }

    public float getVelocityY() {
        return this.f6002x0;
    }

    public float getVisualScrollX() {
        if (this.f5977Y) {
            return this.f5983e0;
        }
        return 0.0f;
    }

    public float getVisualScrollY() {
        if (this.f5978Z) {
            return this.f5984f0;
        }
        return 0.0f;
    }

    @Null
    @Deprecated
    public Actor getWidget() {
        return this.f5969Q;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    @Null
    public Actor hit(float f, float f2, boolean z) {
        if (f >= 0.0f && f < getWidth() && f2 >= 0.0f && f2 < getHeight()) {
            if (z && getTouchable() == Touchable.enabled && isVisible()) {
                if (this.f5977Y && this.f5987i0 && this.f5971S.contains(f, f2)) {
                    return this;
                }
                if (this.f5978Z && this.f5988j0 && this.f5973U.contains(f, f2)) {
                    return this;
                }
            }
            return super.hit(f, f2, z);
        }
        return null;
    }

    public boolean isBottomEdge() {
        return !this.f5978Z || this.f5982d0 >= this.f5986h0;
    }

    public boolean isDragging() {
        return this.f5967K0 != -1;
    }

    public boolean isFlinging() {
        return this.f6000v0 > 0.0f;
    }

    public boolean isForceScrollX() {
        return this.f5960D0;
    }

    public boolean isForceScrollY() {
        return this.f5961E0;
    }

    public boolean isLeftEdge() {
        return !this.f5977Y || this.f5981c0 <= 0.0f;
    }

    public boolean isPanning() {
        return this.f5976X.getGestureDetector().isPanning();
    }

    public boolean isRightEdge() {
        return !this.f5977Y || this.f5981c0 >= this.f5985g0;
    }

    public boolean isScrollX() {
        return this.f5977Y;
    }

    public boolean isScrollY() {
        return this.f5978Z;
    }

    public boolean isScrollingDisabledX() {
        return this.f5962F0;
    }

    public boolean isScrollingDisabledY() {
        return this.f5963G0;
    }

    public boolean isTopEdge() {
        return !this.f5978Z || this.f5982d0 <= 0.0f;
    }

    /* renamed from: q */
    public void m23813q() {
        addCaptureListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.1

            /* renamed from: b */
            public float f6005b;

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                ScrollPane scrollPane = ScrollPane.this;
                if (scrollPane.f5998t0) {
                    return false;
                }
                scrollPane.setScrollbarsVisible(true);
                return false;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                ScrollPane scrollPane = ScrollPane.this;
                int i3 = -1;
                if (scrollPane.f5967K0 != -1) {
                    return false;
                }
                if (i == 0 && i2 != 0) {
                    return false;
                }
                if (scrollPane.getStage() != null) {
                    ScrollPane.this.getStage().setScrollFocus(ScrollPane.this);
                }
                ScrollPane scrollPane2 = ScrollPane.this;
                if (!scrollPane2.f5998t0) {
                    scrollPane2.setScrollbarsVisible(true);
                }
                ScrollPane scrollPane3 = ScrollPane.this;
                if (scrollPane3.f5993o0 == 0.0f) {
                    return false;
                }
                if (scrollPane3.f5992n0 && scrollPane3.f5977Y && scrollPane3.f5971S.contains(f, f2)) {
                    inputEvent.stop();
                    ScrollPane.this.setScrollbarsVisible(true);
                    if (ScrollPane.this.f5972T.contains(f, f2)) {
                        ScrollPane.this.f5989k0.set(f, f2);
                        ScrollPane scrollPane4 = ScrollPane.this;
                        this.f6005b = scrollPane4.f5972T.f5523x;
                        scrollPane4.f5987i0 = true;
                        scrollPane4.f5967K0 = i;
                        return true;
                    }
                    ScrollPane scrollPane5 = ScrollPane.this;
                    float f3 = scrollPane5.f5981c0;
                    float f4 = scrollPane5.f5970R.width;
                    if (f >= scrollPane5.f5972T.f5523x) {
                        i3 = 1;
                    }
                    scrollPane5.setScrollX(f3 + (f4 * i3));
                    return true;
                }
                ScrollPane scrollPane6 = ScrollPane.this;
                if (!scrollPane6.f5992n0 || !scrollPane6.f5978Z || !scrollPane6.f5973U.contains(f, f2)) {
                    return false;
                }
                inputEvent.stop();
                ScrollPane.this.setScrollbarsVisible(true);
                if (ScrollPane.this.f5974V.contains(f, f2)) {
                    ScrollPane.this.f5989k0.set(f, f2);
                    ScrollPane scrollPane7 = ScrollPane.this;
                    this.f6005b = scrollPane7.f5974V.f5524y;
                    scrollPane7.f5988j0 = true;
                    scrollPane7.f5967K0 = i;
                    return true;
                }
                ScrollPane scrollPane8 = ScrollPane.this;
                float f5 = scrollPane8.f5982d0;
                float f6 = scrollPane8.f5970R.height;
                if (f2 < scrollPane8.f5974V.f5524y) {
                    i3 = 1;
                }
                scrollPane8.setScrollY(f5 + (f6 * i3));
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
                ScrollPane scrollPane = ScrollPane.this;
                if (i != scrollPane.f5967K0) {
                    return;
                }
                if (scrollPane.f5987i0) {
                    float f3 = this.f6005b + (f - scrollPane.f5989k0.f5527x);
                    this.f6005b = f3;
                    float max = Math.max(scrollPane.f5971S.f5523x, f3);
                    ScrollPane scrollPane2 = ScrollPane.this;
                    Rectangle rectangle = scrollPane2.f5971S;
                    float min = Math.min((rectangle.f5523x + rectangle.width) - scrollPane2.f5972T.width, max);
                    ScrollPane scrollPane3 = ScrollPane.this;
                    Rectangle rectangle2 = scrollPane3.f5971S;
                    float f4 = rectangle2.width - scrollPane3.f5972T.width;
                    if (f4 != 0.0f) {
                        scrollPane3.setScrollPercentX((min - rectangle2.f5523x) / f4);
                    }
                    ScrollPane.this.f5989k0.set(f, f2);
                } else if (scrollPane.f5988j0) {
                    float f5 = this.f6005b + (f2 - scrollPane.f5989k0.f5528y);
                    this.f6005b = f5;
                    float max2 = Math.max(scrollPane.f5973U.f5524y, f5);
                    ScrollPane scrollPane4 = ScrollPane.this;
                    Rectangle rectangle3 = scrollPane4.f5973U;
                    float min2 = Math.min((rectangle3.f5524y + rectangle3.height) - scrollPane4.f5974V.height, max2);
                    ScrollPane scrollPane5 = ScrollPane.this;
                    Rectangle rectangle4 = scrollPane5.f5973U;
                    float f6 = rectangle4.height - scrollPane5.f5974V.height;
                    if (f6 != 0.0f) {
                        scrollPane5.setScrollPercentY(1.0f - ((min2 - rectangle4.f5524y) / f6));
                    }
                    ScrollPane.this.f5989k0.set(f, f2);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                ScrollPane scrollPane = ScrollPane.this;
                if (i != scrollPane.f5967K0) {
                    return;
                }
                scrollPane.cancel();
            }
        });
    }

    /* renamed from: r */
    public void m23812r() {
        addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.3
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean scrolled(InputEvent inputEvent, float f, float f2, float f3, float f4) {
                ScrollPane.this.setScrollbarsVisible(true);
                ScrollPane scrollPane = ScrollPane.this;
                boolean z = scrollPane.f5978Z;
                if (!z && !scrollPane.f5977Y) {
                    return false;
                }
                if (z) {
                    if (!scrollPane.f5977Y && f4 == 0.0f) {
                        f4 = f3;
                    }
                    f4 = f3;
                    f3 = f4;
                } else {
                    if (scrollPane.f5977Y && f3 == 0.0f) {
                        f3 = f4;
                    }
                    f4 = f3;
                    f3 = f4;
                }
                scrollPane.setScrollY(scrollPane.f5982d0 + (scrollPane.m23807w() * f3));
                ScrollPane scrollPane2 = ScrollPane.this;
                scrollPane2.setScrollX(scrollPane2.f5981c0 + (scrollPane2.m23808v() * f4));
                return true;
            }
        });
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor) {
        if (actor != null) {
            if (actor != this.f5969Q) {
                return false;
            }
            setActor(null);
            return true;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public void scrollTo(float f, float f2, float f3, float f4) {
        scrollTo(f, f2, f3, f4, false, false);
    }

    public void setCancelTouchFocus(boolean z) {
        this.f5997s0 = z;
    }

    public void setClamp(boolean z) {
        this.f5964H0 = z;
    }

    public void setFlickScrollTapSquareSize(float f) {
        this.f5976X.getGestureDetector().setTapSquareSize(f);
    }

    public void setFlingTime(float f) {
        this.f5999u0 = f;
    }

    public void setScrollBarTouch(boolean z) {
        this.f5992n0 = z;
    }

    public void setScrollPercentX(float f) {
        m23806x(this.f5985g0 * MathUtils.clamp(f, 0.0f, 1.0f));
    }

    public void setScrollPercentY(float f) {
        m23805y(this.f5986h0 * MathUtils.clamp(f, 0.0f, 1.0f));
    }

    public void setScrollX(float f) {
        m23806x(MathUtils.clamp(f, 0.0f, this.f5985g0));
    }

    public void setScrollY(float f) {
        m23805y(MathUtils.clamp(f, 0.0f, this.f5986h0));
    }

    public void setSmoothScrolling(boolean z) {
        this.f5991m0 = z;
    }

    public void setVariableSizeKnobs(boolean z) {
        this.f5966J0 = z;
    }

    public void setVelocityX(float f) {
        this.f6001w0 = f;
    }

    public void setVelocityY(float f) {
        this.f6002x0 = f;
    }

    @Deprecated
    public void setWidget(@Null Actor actor) {
        setActor(actor);
    }

    /* renamed from: t */
    public void m23810t(Batch batch, float f, float f2, float f3, float f4) {
        boolean z;
        Drawable drawable;
        if (f4 <= 0.0f) {
            return;
        }
        batch.setColor(f, f2, f3, f4);
        boolean z2 = true;
        if (this.f5977Y && this.f5972T.width > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        z2 = (!this.f5978Z || this.f5974V.height <= 0.0f) ? false : false;
        if (z) {
            if (z2 && (drawable = this.f5968P.corner) != null) {
                Rectangle rectangle = this.f5971S;
                float f5 = rectangle.f5524y;
                Rectangle rectangle2 = this.f5973U;
                drawable.draw(batch, rectangle.f5523x + rectangle.width, f5, rectangle2.width, rectangle2.f5524y);
            }
            Drawable drawable2 = this.f5968P.hScroll;
            if (drawable2 != null) {
                Rectangle rectangle3 = this.f5971S;
                drawable2.draw(batch, rectangle3.f5523x, rectangle3.f5524y, rectangle3.width, rectangle3.height);
            }
            Drawable drawable3 = this.f5968P.hScrollKnob;
            if (drawable3 != null) {
                Rectangle rectangle4 = this.f5972T;
                drawable3.draw(batch, rectangle4.f5523x, rectangle4.f5524y, rectangle4.width, rectangle4.height);
            }
        }
        if (z2) {
            Drawable drawable4 = this.f5968P.vScroll;
            if (drawable4 != null) {
                Rectangle rectangle5 = this.f5973U;
                drawable4.draw(batch, rectangle5.f5523x, rectangle5.f5524y, rectangle5.width, rectangle5.height);
            }
            Drawable drawable5 = this.f5968P.vScrollKnob;
            if (drawable5 != null) {
                Rectangle rectangle6 = this.f5974V;
                drawable5.draw(batch, rectangle6.f5523x, rectangle6.f5524y, rectangle6.width, rectangle6.height);
            }
        }
    }

    /* renamed from: u */
    public ActorGestureListener m23809u() {
        return new ActorGestureListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
            public void pan(InputEvent inputEvent, float f, float f2, float f3, float f4) {
                ScrollPane.this.setScrollbarsVisible(true);
                ScrollPane scrollPane = ScrollPane.this;
                if (!scrollPane.f5977Y) {
                    f3 = 0.0f;
                }
                if (!scrollPane.f5978Z) {
                    f4 = 0.0f;
                }
                scrollPane.f5981c0 -= f3;
                scrollPane.f5982d0 += f4;
                scrollPane.m23811s();
                ScrollPane scrollPane2 = ScrollPane.this;
                if (scrollPane2.f5997s0) {
                    if (f3 != 0.0f || f4 != 0.0f) {
                        scrollPane2.cancelTouchFocus();
                    }
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
            public void fling(InputEvent inputEvent, float f, float f2, int i) {
                float f3;
                f = (Math.abs(f) <= 150.0f || !ScrollPane.this.f5977Y) ? 0.0f : 0.0f;
                if (Math.abs(f2) > 150.0f && ScrollPane.this.f5978Z) {
                    f3 = -f2;
                } else {
                    f3 = 0.0f;
                }
                if (f != 0.0f || f3 != 0.0f) {
                    ScrollPane scrollPane = ScrollPane.this;
                    if (scrollPane.f5997s0) {
                        scrollPane.cancelTouchFocus();
                    }
                    ScrollPane scrollPane2 = ScrollPane.this;
                    scrollPane2.fling(scrollPane2.f5999u0, f, f3);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener, com.badlogic.gdx.scenes.scene2d.EventListener
            public boolean handle(Event event) {
                if (super.handle(event)) {
                    if (((InputEvent) event).getType() == InputEvent.Type.touchDown) {
                        ScrollPane.this.f6000v0 = 0.0f;
                        return true;
                    }
                    return true;
                } else if ((event instanceof InputEvent) && ((InputEvent) event).isTouchFocusCancel()) {
                    ScrollPane.this.cancel();
                    return false;
                } else {
                    return false;
                }
            }
        };
    }

    /* renamed from: v */
    public float m23808v() {
        float f = this.f5970R.width;
        return Math.min(f, Math.max(0.9f * f, this.f5985g0 * 0.1f) / 4.0f);
    }

    /* renamed from: w */
    public float m23807w() {
        float f = this.f5970R.height;
        return Math.min(f, Math.max(0.9f * f, this.f5986h0 * 0.1f) / 4.0f);
    }

    /* renamed from: x */
    public void m23806x(float f) {
        this.f5981c0 = f;
    }

    /* renamed from: y */
    public void m23805y(float f) {
        this.f5982d0 = f;
    }

    public ScrollPane(@Null Actor actor, Skin skin) {
        this(actor, (ScrollPaneStyle) skin.get(ScrollPaneStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        if (this.f5969Q == null) {
            return;
        }
        validate();
        m23865g(batch, m23863j());
        if (this.f5977Y) {
            Rectangle rectangle = this.f5972T;
            Rectangle rectangle2 = this.f5971S;
            rectangle.f5523x = rectangle2.f5523x + ((int) ((rectangle2.width - rectangle.width) * getVisualScrollPercentX()));
        }
        if (this.f5978Z) {
            Rectangle rectangle3 = this.f5974V;
            Rectangle rectangle4 = this.f5973U;
            rectangle3.f5524y = rectangle4.f5524y + ((int) ((rectangle4.height - rectangle3.height) * (1.0f - getVisualScrollPercentY())));
        }
        m23804z();
        Color color = getColor();
        float f2 = color.f3889a * f;
        if (this.f5968P.background != null) {
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, f2);
            this.f5968P.background.draw(batch, 0.0f, 0.0f, getWidth(), getHeight());
        }
        batch.flush();
        Rectangle rectangle5 = this.f5970R;
        if (clipBegin(rectangle5.f5523x, rectangle5.f5524y, rectangle5.width, rectangle5.height)) {
            m23862k(batch, f);
            batch.flush();
            clipEnd();
        }
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, f2);
        if (this.f5990l0) {
            f2 *= Interpolation.fade.apply(this.f5993o0 / this.f5994p0);
        }
        m23810t(batch, color.f3892r, color.f3891g, color.f3890b, f2);
        m23860m(batch);
    }

    public void fling(float f, float f2, float f3) {
        this.f6000v0 = f;
        this.f6001w0 = f2;
        this.f6002x0 = f3;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float f;
        Actor actor = this.f5969Q;
        float f2 = 0.0f;
        if (actor instanceof Layout) {
            f = ((Layout) actor).getPrefHeight();
        } else if (actor != null) {
            f = actor.getHeight();
        } else {
            f = 0.0f;
        }
        Drawable drawable = this.f5968P.background;
        if (drawable != null) {
            f = Math.max(f + drawable.getTopHeight() + drawable.getBottomHeight(), drawable.getMinHeight());
        }
        if (this.f5977Y) {
            Drawable drawable2 = this.f5968P.hScrollKnob;
            if (drawable2 != null) {
                f2 = drawable2.getMinHeight();
            }
            Drawable drawable3 = this.f5968P.hScroll;
            if (drawable3 != null) {
                f2 = Math.max(f2, drawable3.getMinHeight());
            }
            return f + f2;
        }
        return f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        float f;
        Actor actor = this.f5969Q;
        float f2 = 0.0f;
        if (actor instanceof Layout) {
            f = ((Layout) actor).getPrefWidth();
        } else if (actor != null) {
            f = actor.getWidth();
        } else {
            f = 0.0f;
        }
        Drawable drawable = this.f5968P.background;
        if (drawable != null) {
            f = Math.max(f + drawable.getLeftWidth() + drawable.getRightWidth(), drawable.getMinWidth());
        }
        if (this.f5978Z) {
            Drawable drawable2 = this.f5968P.vScrollKnob;
            if (drawable2 != null) {
                f2 = drawable2.getMinWidth();
            }
            Drawable drawable3 = this.f5968P.vScroll;
            if (drawable3 != null) {
                f2 = Math.max(f2, drawable3.getMinWidth());
            }
            return f + f2;
        }
        return f;
    }

    public float getScrollBarHeight() {
        float f = 0.0f;
        if (!this.f5977Y) {
            return 0.0f;
        }
        Drawable drawable = this.f5968P.hScrollKnob;
        if (drawable != null) {
            f = drawable.getMinHeight();
        }
        Drawable drawable2 = this.f5968P.hScroll;
        if (drawable2 != null) {
            return Math.max(f, drawable2.getMinHeight());
        }
        return f;
    }

    public float getScrollBarWidth() {
        float f = 0.0f;
        if (!this.f5978Z) {
            return 0.0f;
        }
        Drawable drawable = this.f5968P.vScrollKnob;
        if (drawable != null) {
            f = drawable.getMinWidth();
        }
        Drawable drawable2 = this.f5968P.vScroll;
        if (drawable2 != null) {
            return Math.max(f, drawable2.getMinWidth());
        }
        return f;
    }

    public float getScrollPercentX() {
        float f = this.f5985g0;
        if (f == 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp(this.f5981c0 / f, 0.0f, 1.0f);
    }

    public float getScrollPercentY() {
        float f = this.f5986h0;
        if (f == 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp(this.f5982d0 / f, 0.0f, 1.0f);
    }

    public float getVisualScrollPercentX() {
        float f = this.f5985g0;
        if (f == 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp(this.f5983e0 / f, 0.0f, 1.0f);
    }

    public float getVisualScrollPercentY() {
        float f = this.f5986h0;
        if (f == 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp(this.f5984f0 / f, 0.0f, 1.0f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float width;
        float height;
        boolean z;
        boolean z2;
        float f7;
        float max;
        float max2;
        float f8;
        float f9;
        Rectangle rectangle;
        Rectangle rectangle2;
        float f10;
        float f11;
        Rectangle rectangle3;
        Rectangle rectangle4;
        ScrollPaneStyle scrollPaneStyle = this.f5968P;
        Drawable drawable = scrollPaneStyle.background;
        Drawable drawable2 = scrollPaneStyle.hScrollKnob;
        Drawable drawable3 = scrollPaneStyle.vScrollKnob;
        if (drawable != null) {
            f2 = drawable.getLeftWidth();
            f3 = drawable.getRightWidth();
            f4 = drawable.getTopHeight();
            f = drawable.getBottomHeight();
        } else {
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
            f4 = 0.0f;
        }
        float width2 = getWidth();
        float height2 = getHeight() - f4;
        this.f5970R.set(f2, f, (width2 - f2) - f3, height2 - f);
        if (this.f5969Q == null) {
            return;
        }
        if (drawable2 != null) {
            f5 = drawable2.getMinHeight();
        } else {
            f5 = 0.0f;
        }
        Drawable drawable4 = this.f5968P.hScroll;
        if (drawable4 != null) {
            f5 = Math.max(f5, drawable4.getMinHeight());
        }
        if (drawable3 != null) {
            f6 = drawable3.getMinWidth();
        } else {
            f6 = 0.0f;
        }
        Drawable drawable5 = this.f5968P.vScroll;
        if (drawable5 != null) {
            f6 = Math.max(f6, drawable5.getMinWidth());
        }
        Actor actor = this.f5969Q;
        if (actor instanceof Layout) {
            Layout layout = (Layout) actor;
            width = layout.getPrefWidth();
            height = layout.getPrefHeight();
        } else {
            width = actor.getWidth();
            height = this.f5969Q.getHeight();
        }
        if (!this.f5960D0 && (width <= this.f5970R.width || this.f5962F0)) {
            z = false;
        } else {
            z = true;
        }
        this.f5977Y = z;
        if (!this.f5961E0 && (height <= this.f5970R.height || this.f5963G0)) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.f5978Z = z2;
        if (!this.f5965I0) {
            if (z2) {
                Rectangle rectangle5 = this.f5970R;
                float f12 = rectangle5.width - f6;
                rectangle5.width = f12;
                f7 = f;
                if (!this.f5979a0) {
                    rectangle5.f5523x += f6;
                }
                if (!z && width > f12 && !this.f5962F0) {
                    this.f5977Y = true;
                }
            } else {
                f7 = f;
            }
            if (this.f5977Y) {
                Rectangle rectangle6 = this.f5970R;
                float f13 = rectangle6.height - f5;
                rectangle6.height = f13;
                if (this.f5980b0) {
                    rectangle6.f5524y += f5;
                }
                if (!z2 && height > f13 && !this.f5963G0) {
                    this.f5978Z = true;
                    rectangle6.width -= f6;
                    if (!this.f5979a0) {
                        rectangle6.f5523x += f6;
                    }
                }
            }
        } else {
            f7 = f;
        }
        if (this.f5962F0) {
            max = this.f5970R.width;
        } else {
            max = Math.max(this.f5970R.width, width);
        }
        if (this.f5963G0) {
            max2 = this.f5970R.height;
        } else {
            max2 = Math.max(this.f5970R.height, height);
        }
        Rectangle rectangle7 = this.f5970R;
        float f14 = max - rectangle7.width;
        this.f5985g0 = f14;
        this.f5986h0 = max2 - rectangle7.height;
        m23806x(MathUtils.clamp(this.f5981c0, 0.0f, f14));
        m23805y(MathUtils.clamp(this.f5982d0, 0.0f, this.f5986h0));
        if (this.f5977Y) {
            if (drawable2 != null) {
                if (this.f5965I0) {
                    f10 = f2;
                } else {
                    f10 = this.f5970R.f5523x;
                }
                if (this.f5980b0) {
                    f11 = f7;
                } else {
                    f11 = height2 - f5;
                }
                this.f5971S.set(f10, f11, this.f5970R.width, f5);
                if (this.f5978Z && this.f5965I0) {
                    Rectangle rectangle8 = this.f5971S;
                    rectangle8.width -= f6;
                    if (!this.f5979a0) {
                        rectangle8.f5523x += f6;
                    }
                }
                if (this.f5966J0) {
                    this.f5972T.width = Math.max(drawable2.getMinWidth(), (int) ((this.f5971S.width * this.f5970R.width) / max));
                } else {
                    this.f5972T.width = drawable2.getMinWidth();
                }
                Rectangle rectangle9 = this.f5972T;
                if (rectangle9.width > max) {
                    rectangle9.width = 0.0f;
                }
                rectangle9.height = drawable2.getMinHeight();
                this.f5972T.f5523x = this.f5971S.f5523x + ((int) ((rectangle4.width - rectangle3.width) * getScrollPercentX()));
                this.f5972T.f5524y = this.f5971S.f5524y;
            } else {
                this.f5971S.set(0.0f, 0.0f, 0.0f, 0.0f);
                this.f5972T.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
        if (this.f5978Z) {
            if (drawable3 != null) {
                if (this.f5979a0) {
                    f8 = (width2 - f3) - f6;
                } else {
                    f8 = f2;
                }
                if (this.f5965I0) {
                    f9 = f7;
                } else {
                    f9 = this.f5970R.f5524y;
                }
                this.f5973U.set(f8, f9, f6, this.f5970R.height);
                if (this.f5977Y && this.f5965I0) {
                    Rectangle rectangle10 = this.f5973U;
                    rectangle10.height -= f5;
                    if (this.f5980b0) {
                        rectangle10.f5524y += f5;
                    }
                }
                this.f5974V.width = drawable3.getMinWidth();
                if (this.f5966J0) {
                    this.f5974V.height = Math.max(drawable3.getMinHeight(), (int) ((this.f5973U.height * this.f5970R.height) / max2));
                } else {
                    this.f5974V.height = drawable3.getMinHeight();
                }
                Rectangle rectangle11 = this.f5974V;
                if (rectangle11.height > max2) {
                    rectangle11.height = 0.0f;
                }
                if (this.f5979a0) {
                    f2 = (width2 - f3) - drawable3.getMinWidth();
                }
                rectangle11.f5523x = f2;
                this.f5974V.f5524y = this.f5973U.f5524y + ((int) ((rectangle2.height - rectangle.height) * (1.0f - getScrollPercentY())));
            } else {
                this.f5973U.set(0.0f, 0.0f, 0.0f, 0.0f);
                this.f5974V.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
        m23804z();
        Actor actor2 = this.f5969Q;
        if (actor2 instanceof Layout) {
            actor2.setSize(max, max2);
            ((Layout) this.f5969Q).validate();
        }
    }

    /* renamed from: s */
    public void m23811s() {
        float clamp;
        float clamp2;
        if (!this.f5964H0) {
            return;
        }
        if (this.f6003y0) {
            float f = this.f5981c0;
            float f2 = this.f5957A0;
            clamp = MathUtils.clamp(f, -f2, this.f5985g0 + f2);
        } else {
            clamp = MathUtils.clamp(this.f5981c0, 0.0f, this.f5985g0);
        }
        m23806x(clamp);
        if (this.f6004z0) {
            float f3 = this.f5982d0;
            float f4 = this.f5957A0;
            clamp2 = MathUtils.clamp(f3, -f4, this.f5986h0 + f4);
        } else {
            clamp2 = MathUtils.clamp(this.f5982d0, 0.0f, this.f5986h0);
        }
        m23805y(clamp2);
    }

    public void scrollTo(float f, float f2, float f3, float f4, boolean z, boolean z2) {
        float clamp;
        float clamp2;
        validate();
        float f5 = this.f5981c0;
        if (z) {
            clamp = f + ((f3 - this.f5970R.width) / 2.0f);
        } else {
            clamp = MathUtils.clamp(f5, (f3 + f) - this.f5970R.width, f);
        }
        m23806x(MathUtils.clamp(clamp, 0.0f, this.f5985g0));
        float f6 = this.f5982d0;
        float f7 = this.f5986h0 - f2;
        if (z2) {
            clamp2 = f7 + ((this.f5970R.height + f4) / 2.0f);
        } else {
            clamp2 = MathUtils.clamp(f6, f4 + f7, f7 + this.f5970R.height);
        }
        m23805y(MathUtils.clamp(clamp2, 0.0f, this.f5986h0));
    }

    public void setActor(@Null Actor actor) {
        Actor actor2 = this.f5969Q;
        if (actor2 != this) {
            if (actor2 != null) {
                super.removeActor(actor2);
            }
            this.f5969Q = actor;
            if (actor != null) {
                super.addActor(actor);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("actor cannot be the ScrollPane.");
    }

    public void setFadeScrollBars(boolean z) {
        if (this.f5990l0 == z) {
            return;
        }
        this.f5990l0 = z;
        if (!z) {
            this.f5993o0 = this.f5994p0;
        }
        invalidate();
    }

    public void setFlickScroll(boolean z) {
        if (this.f5998t0 == z) {
            return;
        }
        this.f5998t0 = z;
        if (z) {
            addListener(this.f5976X);
        } else {
            removeListener(this.f5976X);
        }
        invalidate();
    }

    public void setForceScroll(boolean z, boolean z2) {
        this.f5960D0 = z;
        this.f5961E0 = z2;
    }

    public void setOverscroll(boolean z, boolean z2) {
        this.f6003y0 = z;
        this.f6004z0 = z2;
    }

    public void setScrollBarPositions(boolean z, boolean z2) {
        this.f5980b0 = z;
        this.f5979a0 = z2;
    }

    public void setScrollbarsOnTop(boolean z) {
        this.f5965I0 = z;
        invalidate();
    }

    public void setScrollbarsVisible(boolean z) {
        if (z) {
            this.f5993o0 = this.f5994p0;
            this.f5995q0 = this.f5996r0;
            return;
        }
        this.f5993o0 = 0.0f;
        this.f5995q0 = 0.0f;
    }

    public void setScrollingDisabled(boolean z, boolean z2) {
        if (z == this.f5962F0 && z2 == this.f5963G0) {
            return;
        }
        this.f5962F0 = z;
        this.f5963G0 = z2;
        invalidate();
    }

    public void setStyle(ScrollPaneStyle scrollPaneStyle) {
        if (scrollPaneStyle != null) {
            this.f5968P = scrollPaneStyle;
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public void setupFadeScrollBars(float f, float f2) {
        this.f5994p0 = f;
        this.f5996r0 = f2;
    }

    public void setupOverscroll(float f, float f2, float f3) {
        this.f5957A0 = f;
        this.f5958B0 = f2;
        this.f5959C0 = f3;
    }

    public void updateVisualScroll() {
        this.f5983e0 = this.f5981c0;
        this.f5984f0 = this.f5982d0;
    }

    /* renamed from: z */
    public final void m23804z() {
        int i;
        float f;
        Rectangle rectangle = this.f5970R;
        float f2 = rectangle.f5523x;
        if (this.f5977Y) {
            i = (int) this.f5983e0;
        } else {
            i = 0;
        }
        float f3 = f2 - i;
        float f4 = rectangle.f5524y;
        if (this.f5978Z) {
            f = this.f5986h0 - this.f5984f0;
        } else {
            f = this.f5986h0;
        }
        float f5 = f4 - ((int) f);
        this.f5969Q.setPosition(f3, f5);
        Actor actor = this.f5969Q;
        if (actor instanceof Cullable) {
            Rectangle rectangle2 = this.f5975W;
            Rectangle rectangle3 = this.f5970R;
            rectangle2.f5523x = rectangle3.f5523x - f3;
            rectangle2.f5524y = rectangle3.f5524y - f5;
            rectangle2.width = rectangle3.width;
            rectangle2.height = rectangle3.height;
            ((Cullable) actor).setCullingArea(rectangle2);
        }
    }

    public ScrollPane(@Null Actor actor, Skin skin, String str) {
        this(actor, (ScrollPaneStyle) skin.get(str, ScrollPaneStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        boolean z;
        Stage stage;
        super.act(f);
        boolean isPanning = this.f5976X.getGestureDetector().isPanning();
        float f2 = this.f5993o0;
        boolean z2 = true;
        if (f2 > 0.0f && this.f5990l0 && !isPanning && !this.f5987i0 && !this.f5988j0) {
            float f3 = this.f5995q0 - f;
            this.f5995q0 = f3;
            if (f3 <= 0.0f) {
                this.f5993o0 = Math.max(0.0f, f2 - f);
            }
            z = true;
        } else {
            z = false;
        }
        if (this.f6000v0 > 0.0f) {
            setScrollbarsVisible(true);
            float f4 = this.f6000v0 / this.f5999u0;
            this.f5981c0 -= (this.f6001w0 * f4) * f;
            this.f5982d0 -= (this.f6002x0 * f4) * f;
            m23811s();
            float f5 = this.f5981c0;
            float f6 = this.f5957A0;
            if (f5 == (-f6)) {
                this.f6001w0 = 0.0f;
            }
            if (f5 >= this.f5985g0 + f6) {
                this.f6001w0 = 0.0f;
            }
            float f7 = this.f5982d0;
            if (f7 == (-f6)) {
                this.f6002x0 = 0.0f;
            }
            if (f7 >= this.f5986h0 + f6) {
                this.f6002x0 = 0.0f;
            }
            float f8 = this.f6000v0 - f;
            this.f6000v0 = f8;
            if (f8 <= 0.0f) {
                this.f6001w0 = 0.0f;
                this.f6002x0 = 0.0f;
            }
            z = true;
        }
        if (this.f5991m0 && this.f6000v0 <= 0.0f && !isPanning && ((!this.f5987i0 || (this.f5977Y && this.f5985g0 / (this.f5971S.width - this.f5972T.width) > this.f5970R.width * 0.1f)) && (!this.f5988j0 || (this.f5978Z && this.f5986h0 / (this.f5973U.height - this.f5974V.height) > this.f5970R.height * 0.1f)))) {
            float f9 = this.f5983e0;
            float f10 = this.f5981c0;
            if (f9 != f10) {
                if (f9 < f10) {
                    m23815A(Math.min(f10, f9 + Math.max(f * 200.0f, (f10 - f9) * 7.0f * f)));
                } else {
                    m23815A(Math.max(f10, f9 - Math.max(f * 200.0f, ((f9 - f10) * 7.0f) * f)));
                }
                z = true;
            }
            float f11 = this.f5984f0;
            float f12 = this.f5982d0;
            if (f11 != f12) {
                if (f11 < f12) {
                    m23814B(Math.min(f12, f11 + Math.max(200.0f * f, (f12 - f11) * 7.0f * f)));
                } else {
                    m23814B(Math.max(f12, f11 - Math.max(200.0f * f, ((f11 - f12) * 7.0f) * f)));
                }
                z = true;
            }
        } else {
            float f13 = this.f5983e0;
            float f14 = this.f5981c0;
            if (f13 != f14) {
                m23815A(f14);
            }
            float f15 = this.f5984f0;
            float f16 = this.f5982d0;
            if (f15 != f16) {
                m23814B(f16);
            }
        }
        if (!isPanning) {
            if (this.f6003y0 && this.f5977Y) {
                float f17 = this.f5981c0;
                if (f17 < 0.0f) {
                    setScrollbarsVisible(true);
                    float f18 = this.f5981c0;
                    float f19 = this.f5958B0;
                    float f20 = f18 + ((f19 + (((this.f5959C0 - f19) * (-f18)) / this.f5957A0)) * f);
                    this.f5981c0 = f20;
                    if (f20 > 0.0f) {
                        m23806x(0.0f);
                    }
                } else if (f17 > this.f5985g0) {
                    setScrollbarsVisible(true);
                    float f21 = this.f5981c0;
                    float f22 = this.f5958B0;
                    float f23 = this.f5985g0;
                    float f24 = f21 - ((f22 + (((this.f5959C0 - f22) * (-(f23 - f21))) / this.f5957A0)) * f);
                    this.f5981c0 = f24;
                    if (f24 < f23) {
                        m23806x(f23);
                    }
                }
                z = true;
            }
            if (this.f6004z0 && this.f5978Z) {
                float f25 = this.f5982d0;
                if (f25 < 0.0f) {
                    setScrollbarsVisible(true);
                    float f26 = this.f5982d0;
                    float f27 = this.f5958B0;
                    float f28 = f26 + ((f27 + (((this.f5959C0 - f27) * (-f26)) / this.f5957A0)) * f);
                    this.f5982d0 = f28;
                    if (f28 > 0.0f) {
                        m23805y(0.0f);
                    }
                } else if (f25 > this.f5986h0) {
                    setScrollbarsVisible(true);
                    float f29 = this.f5982d0;
                    float f30 = this.f5958B0;
                    float f31 = this.f5986h0;
                    float f32 = f29 - ((f30 + (((this.f5959C0 - f30) * (-(f31 - f29))) / this.f5957A0)) * f);
                    this.f5982d0 = f32;
                    if (f32 < f31) {
                        m23805y(f31);
                    }
                }
                if (!z2 && (stage = getStage()) != null && stage.getActionsRequestRendering()) {
                    Gdx.graphics.requestRendering();
                    return;
                }
                return;
            }
        }
        z2 = z;
        if (!z2) {
        }
    }

    public void cancelTouchFocus() {
        Stage stage = getStage();
        if (stage != null) {
            stage.cancelTouchFocusExcept(this.f5976X, this);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void drawDebug(ShapeRenderer shapeRenderer) {
        mo23712a(shapeRenderer);
        m23864h(shapeRenderer, m23863j());
        Rectangle rectangle = this.f5970R;
        if (clipBegin(rectangle.f5523x, rectangle.f5524y, rectangle.width, rectangle.height)) {
            m23861l(shapeRenderer);
            shapeRenderer.flush();
            clipEnd();
        }
        m23859n(shapeRenderer);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public Actor removeActorAt(int i, boolean z) {
        Actor removeActorAt = super.removeActorAt(i, z);
        if (removeActorAt == this.f5969Q) {
            this.f5969Q = null;
        }
        return removeActorAt;
    }

    public ScrollPane(@Null Actor actor, ScrollPaneStyle scrollPaneStyle) {
        this.f5970R = new Rectangle();
        this.f5971S = new Rectangle();
        this.f5972T = new Rectangle();
        this.f5973U = new Rectangle();
        this.f5974V = new Rectangle();
        this.f5975W = new Rectangle();
        this.f5979a0 = true;
        this.f5980b0 = true;
        this.f5989k0 = new Vector2();
        this.f5990l0 = true;
        this.f5991m0 = true;
        this.f5992n0 = true;
        this.f5994p0 = 1.0f;
        this.f5996r0 = 1.0f;
        this.f5997s0 = true;
        this.f5998t0 = true;
        this.f5999u0 = 1.0f;
        this.f6003y0 = true;
        this.f6004z0 = true;
        this.f5957A0 = 50.0f;
        this.f5958B0 = 30.0f;
        this.f5959C0 = 200.0f;
        this.f5964H0 = true;
        this.f5966J0 = true;
        this.f5967K0 = -1;
        if (scrollPaneStyle != null) {
            this.f5968P = scrollPaneStyle;
            setActor(actor);
            setSize(150.0f, 150.0f);
            m23813q();
            ActorGestureListener m23809u = m23809u();
            this.f5976X = m23809u;
            addListener(m23809u);
            m23812r();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor, boolean z) {
        if (actor != null) {
            if (actor != this.f5969Q) {
                return false;
            }
            this.f5969Q = null;
            return super.removeActor(actor, z);
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }
}
