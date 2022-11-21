package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Disableable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ProgressBar */
/* loaded from: classes.dex */
public class ProgressBar extends Widget implements Disableable {

    /* renamed from: I */
    public ProgressBarStyle f5942I;

    /* renamed from: J */
    public float f5943J;

    /* renamed from: K */
    public float f5944K;

    /* renamed from: L */
    public float f5945L;

    /* renamed from: M */
    public float f5946M;

    /* renamed from: N */
    public float f5947N;

    /* renamed from: O */
    public float f5948O;

    /* renamed from: P */
    public final boolean f5949P;

    /* renamed from: Q */
    public float f5950Q;

    /* renamed from: R */
    public float f5951R;

    /* renamed from: S */
    public Interpolation f5952S;

    /* renamed from: T */
    public Interpolation f5953T;

    /* renamed from: U */
    public boolean f5954U;

    /* renamed from: V */
    public boolean f5955V;

    /* renamed from: W */
    public boolean f5956W;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ProgressBar$ProgressBarStyle */
    /* loaded from: classes.dex */
    public static class ProgressBarStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable disabledBackground;
        @Null
        public Drawable disabledKnob;
        @Null
        public Drawable disabledKnobAfter;
        @Null
        public Drawable disabledKnobBefore;
        @Null
        public Drawable knob;
        @Null
        public Drawable knobAfter;
        @Null
        public Drawable knobBefore;

        public ProgressBarStyle() {
        }

        public ProgressBarStyle(@Null Drawable drawable, @Null Drawable drawable2) {
            this.background = drawable;
            this.knob = drawable2;
        }

        public ProgressBarStyle(ProgressBarStyle progressBarStyle) {
            this.background = progressBarStyle.background;
            this.disabledBackground = progressBarStyle.disabledBackground;
            this.knob = progressBarStyle.knob;
            this.disabledKnob = progressBarStyle.disabledKnob;
            this.knobBefore = progressBarStyle.knobBefore;
            this.disabledKnobBefore = progressBarStyle.disabledKnobBefore;
            this.knobAfter = progressBarStyle.knobAfter;
            this.disabledKnobAfter = progressBarStyle.disabledKnobAfter;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ProgressBar(float r7, float r8, float r9, boolean r10, com.badlogic.gdx.scenes.scene2d.p033ui.Skin r11) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "default-"
            r0.append(r1)
            if (r10 == 0) goto Lf
            java.lang.String r1 = "vertical"
            goto L11
        Lf:
            java.lang.String r1 = "horizontal"
        L11:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.Class<com.badlogic.gdx.scenes.scene2d.ui.ProgressBar$ProgressBarStyle> r1 = com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar.ProgressBarStyle.class
            java.lang.Object r11 = r11.get(r0, r1)
            r5 = r11
            com.badlogic.gdx.scenes.scene2d.ui.ProgressBar$ProgressBarStyle r5 = (com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar.ProgressBarStyle) r5
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar.<init>(float, float, float, boolean, com.badlogic.gdx.scenes.scene2d.ui.Skin):void");
    }

    /* renamed from: g */
    public float m23818g(float f) {
        return MathUtils.clamp(f, this.f5943J, this.f5944K);
    }

    public float getMaxValue() {
        return this.f5944K;
    }

    public float getMinValue() {
        return this.f5943J;
    }

    public float getStepSize() {
        return this.f5945L;
    }

    public ProgressBarStyle getStyle() {
        return this.f5942I;
    }

    public float getValue() {
        return this.f5946M;
    }

    public boolean isAnimating() {
        return this.f5951R > 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public boolean isDisabled() {
        return this.f5954U;
    }

    public boolean isVertical() {
        return this.f5949P;
    }

    /* renamed from: m */
    public float m23816m(float f) {
        return Math.round(f / this.f5945L) * this.f5945L;
    }

    public void setAnimateDuration(float f) {
        this.f5950Q = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public void setDisabled(boolean z) {
        this.f5954U = z;
    }

    public void setProgrammaticChangeEvents(boolean z) {
        this.f5956W = z;
    }

    public void setRound(boolean z) {
        this.f5955V = z;
    }

    public void setStepSize(float f) {
        if (f > 0.0f) {
            this.f5945L = f;
            return;
        }
        throw new IllegalArgumentException("steps must be > 0: " + f);
    }

    public void setVisualInterpolation(Interpolation interpolation) {
        this.f5953T = interpolation;
    }

    public void updateVisualValue() {
        this.f5951R = 0.0f;
    }

    public ProgressBar(float f, float f2, float f3, boolean z, Skin skin, String str) {
        this(f, f2, f3, z, (ProgressBarStyle) skin.get(str, ProgressBarStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float minHeight;
        float minWidth;
        float f2;
        float f3;
        Drawable drawable;
        float f4;
        float f5;
        float f6;
        Drawable drawable2 = this.f5942I.knob;
        Drawable mo23789l = mo23789l();
        Drawable mo23792i = mo23792i();
        Drawable mo23790k = mo23790k();
        Drawable mo23791j = mo23791j();
        Color color = getColor();
        float x = getX();
        float y = getY();
        float width = getWidth();
        float height = getHeight();
        if (drawable2 == null) {
            minHeight = 0.0f;
        } else {
            minHeight = drawable2.getMinHeight();
        }
        if (drawable2 == null) {
            minWidth = 0.0f;
        } else {
            minWidth = drawable2.getMinWidth();
        }
        float visualPercent = getVisualPercent();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        if (this.f5949P) {
            if (mo23792i != null) {
                drawable = mo23789l;
                f4 = 0.0f;
                m23817h(batch, mo23792i, x + ((width - mo23792i.getMinWidth()) * 0.5f), y, mo23792i.getMinWidth(), height);
                float topHeight = mo23792i.getTopHeight();
                f5 = mo23792i.getBottomHeight();
                height -= topHeight + f5;
            } else {
                drawable = mo23789l;
                f4 = 0.0f;
                f5 = 0.0f;
            }
            float f7 = height - minHeight;
            float clamp = MathUtils.clamp(f7 * visualPercent, f4, f7);
            this.f5948O = f5 + clamp;
            float f8 = minHeight * 0.5f;
            if (mo23790k != null) {
                m23817h(batch, mo23790k, x + ((width - mo23790k.getMinWidth()) * 0.5f), y + f5, mo23790k.getMinWidth(), clamp + f8);
            }
            if (mo23791j != null) {
                float minWidth2 = x + ((width - mo23791j.getMinWidth()) * 0.5f);
                float f9 = this.f5948O + y + f8;
                float minWidth3 = mo23791j.getMinWidth();
                if (this.f5955V) {
                    f6 = Math.round(clamp - f8);
                } else {
                    f6 = clamp - f8;
                }
                m23817h(batch, mo23791j, minWidth2, f9, minWidth3, f7 - f6);
            }
            if (drawable != null) {
                float minWidth4 = drawable.getMinWidth();
                float minHeight2 = drawable.getMinHeight();
                m23817h(batch, drawable, x + ((width - minWidth4) * 0.5f), y + this.f5948O + ((minHeight - minHeight2) * 0.5f), minWidth4, minHeight2);
                return;
            }
            return;
        }
        if (mo23792i != null) {
            m23817h(batch, mo23792i, x, Math.round(((height - mo23792i.getMinHeight()) * 0.5f) + y), width, Math.round(mo23792i.getMinHeight()));
            f2 = mo23792i.getLeftWidth();
            width -= mo23792i.getRightWidth() + f2;
        } else {
            f2 = 0.0f;
        }
        float f10 = width - minWidth;
        float clamp2 = MathUtils.clamp(f10 * visualPercent, 0.0f, f10);
        this.f5948O = f2 + clamp2;
        float f11 = minWidth * 0.5f;
        if (mo23790k != null) {
            m23817h(batch, mo23790k, x + f2, y + ((height - mo23790k.getMinHeight()) * 0.5f), clamp2 + f11, mo23790k.getMinHeight());
        }
        if (mo23791j != null) {
            float f12 = this.f5948O + x + f11;
            float minHeight3 = y + ((height - mo23791j.getMinHeight()) * 0.5f);
            if (this.f5955V) {
                f3 = Math.round(clamp2 - f11);
            } else {
                f3 = clamp2 - f11;
            }
            m23817h(batch, mo23791j, f12, minHeight3, f10 - f3, mo23791j.getMinHeight());
        }
        if (mo23789l != null) {
            float minWidth5 = mo23789l.getMinWidth();
            float minHeight4 = mo23789l.getMinHeight();
            m23817h(batch, mo23789l, x + this.f5948O + ((minWidth - minWidth5) * 0.5f), y + ((height - minHeight4) * 0.5f), minWidth5, minHeight4);
        }
    }

    public float getPercent() {
        float f = this.f5943J;
        float f2 = this.f5944K;
        if (f == f2) {
            return 0.0f;
        }
        return (this.f5946M - f) / (f2 - f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        float minHeight;
        if (this.f5949P) {
            return 140.0f;
        }
        Drawable drawable = this.f5942I.knob;
        Drawable mo23792i = mo23792i();
        float f = 0.0f;
        if (drawable == null) {
            minHeight = 0.0f;
        } else {
            minHeight = drawable.getMinHeight();
        }
        if (mo23792i != null) {
            f = mo23792i.getMinHeight();
        }
        return Math.max(minHeight, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        float minWidth;
        if (this.f5949P) {
            Drawable drawable = this.f5942I.knob;
            Drawable mo23792i = mo23792i();
            float f = 0.0f;
            if (drawable == null) {
                minWidth = 0.0f;
            } else {
                minWidth = drawable.getMinWidth();
            }
            if (mo23792i != null) {
                f = mo23792i.getMinWidth();
            }
            return Math.max(minWidth, f);
        }
        return 140.0f;
    }

    public float getVisualPercent() {
        if (this.f5943J == this.f5944K) {
            return 0.0f;
        }
        Interpolation interpolation = this.f5953T;
        float visualValue = getVisualValue();
        float f = this.f5943J;
        return interpolation.apply((visualValue - f) / (this.f5944K - f));
    }

    public float getVisualValue() {
        float f = this.f5951R;
        if (f > 0.0f) {
            return this.f5952S.apply(this.f5947N, this.f5946M, 1.0f - (f / this.f5950Q));
        }
        return this.f5946M;
    }

    /* renamed from: h */
    public final void m23817h(Batch batch, Drawable drawable, float f, float f2, float f3, float f4) {
        if (this.f5955V) {
            f = Math.round(f);
            f2 = Math.round(f2);
            f3 = Math.round(f3);
            f4 = Math.round(f4);
        }
        drawable.draw(batch, f, f2, f3, f4);
    }

    @Null
    /* renamed from: i */
    public Drawable mo23792i() {
        Drawable drawable;
        if (this.f5954U && (drawable = this.f5942I.disabledBackground) != null) {
            return drawable;
        }
        return this.f5942I.background;
    }

    /* renamed from: j */
    public Drawable mo23791j() {
        Drawable drawable;
        if (this.f5954U && (drawable = this.f5942I.disabledKnobAfter) != null) {
            return drawable;
        }
        return this.f5942I.knobAfter;
    }

    /* renamed from: k */
    public Drawable mo23790k() {
        Drawable drawable;
        if (this.f5954U && (drawable = this.f5942I.disabledKnobBefore) != null) {
            return drawable;
        }
        return this.f5942I.knobBefore;
    }

    @Null
    /* renamed from: l */
    public Drawable mo23789l() {
        Drawable drawable;
        if (this.f5954U && (drawable = this.f5942I.disabledKnob) != null) {
            return drawable;
        }
        return this.f5942I.knob;
    }

    public void setAnimateInterpolation(Interpolation interpolation) {
        if (interpolation != null) {
            this.f5952S = interpolation;
            return;
        }
        throw new IllegalArgumentException("animateInterpolation cannot be null.");
    }

    public void setRange(float f, float f2) {
        if (f <= f2) {
            this.f5943J = f;
            this.f5944K = f2;
            float f3 = this.f5946M;
            if (f3 < f) {
                setValue(f);
                return;
            } else if (f3 > f2) {
                setValue(f2);
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("min must be <= max: " + f + " <= " + f2);
    }

    public void setStyle(ProgressBarStyle progressBarStyle) {
        if (progressBarStyle != null) {
            this.f5942I = progressBarStyle;
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public ProgressBar(float f, float f2, float f3, boolean z, ProgressBarStyle progressBarStyle) {
        Interpolation interpolation = Interpolation.linear;
        this.f5952S = interpolation;
        this.f5953T = interpolation;
        this.f5955V = true;
        this.f5956W = true;
        if (f > f2) {
            throw new IllegalArgumentException("max must be > min. min,max: " + f + ", " + f2);
        } else if (f3 > 0.0f) {
            setStyle(progressBarStyle);
            this.f5943J = f;
            this.f5944K = f2;
            this.f5945L = f3;
            this.f5949P = z;
            this.f5946M = f;
            setSize(getPrefWidth(), getPrefHeight());
        } else {
            throw new IllegalArgumentException("stepSize must be > 0: " + f3);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        float f2 = this.f5951R;
        if (f2 > 0.0f) {
            this.f5951R = f2 - f;
            Stage stage = getStage();
            if (stage != null && stage.getActionsRequestRendering()) {
                Gdx.graphics.requestRendering();
            }
        }
    }

    public boolean setValue(float f) {
        float m23818g = m23818g(m23816m(f));
        float f2 = this.f5946M;
        if (m23818g == f2) {
            return false;
        }
        float visualValue = getVisualValue();
        this.f5946M = m23818g;
        if (this.f5956W) {
            ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
            boolean fire = fire(changeEvent);
            Pools.free(changeEvent);
            if (fire) {
                this.f5946M = f2;
                return false;
            }
        }
        float f3 = this.f5950Q;
        if (f3 > 0.0f) {
            this.f5947N = visualValue;
            this.f5951R = f3;
            return true;
        }
        return true;
    }
}
