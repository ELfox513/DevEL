package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Slider */
/* loaded from: classes.dex */
public class Slider extends ProgressBar {

    /* renamed from: X */
    public int f6048X;

    /* renamed from: Y */
    public int f6049Y;

    /* renamed from: Z */
    public boolean f6050Z;

    /* renamed from: a0 */
    public Interpolation f6051a0;

    /* renamed from: b0 */
    public float[] f6052b0;

    /* renamed from: c0 */
    public float f6053c0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Slider$SliderStyle */
    /* loaded from: classes.dex */
    public static class SliderStyle extends ProgressBar.ProgressBarStyle {
        @Null
        public Drawable backgroundDown;
        @Null
        public Drawable backgroundOver;
        @Null
        public Drawable knobAfterDown;
        @Null
        public Drawable knobAfterOver;
        @Null
        public Drawable knobBeforeDown;
        @Null
        public Drawable knobBeforeOver;
        @Null
        public Drawable knobDown;
        @Null
        public Drawable knobOver;

        public SliderStyle() {
        }

        public SliderStyle(@Null Drawable drawable, @Null Drawable drawable2) {
            super(drawable, drawable2);
        }

        public SliderStyle(SliderStyle sliderStyle) {
            super(sliderStyle);
            this.backgroundOver = sliderStyle.backgroundOver;
            this.backgroundDown = sliderStyle.backgroundDown;
            this.knobOver = sliderStyle.knobOver;
            this.knobDown = sliderStyle.knobDown;
            this.knobBeforeOver = sliderStyle.knobBeforeOver;
            this.knobBeforeDown = sliderStyle.knobBeforeDown;
            this.knobAfterOver = sliderStyle.knobAfterOver;
            this.knobAfterDown = sliderStyle.knobAfterDown;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Slider(float r7, float r8, float r9, boolean r10, com.badlogic.gdx.scenes.scene2d.p033ui.Skin r11) {
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
            java.lang.Class<com.badlogic.gdx.scenes.scene2d.ui.Slider$SliderStyle> r1 = com.badlogic.gdx.scenes.scene2d.p033ui.Slider.SliderStyle.class
            java.lang.Object r11 = r11.get(r0, r1)
            r5 = r11
            com.badlogic.gdx.scenes.scene2d.ui.Slider$SliderStyle r5 = (com.badlogic.gdx.scenes.scene2d.p033ui.Slider.SliderStyle) r5
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.Slider.<init>(float, float, float, boolean, com.badlogic.gdx.scenes.scene2d.ui.Skin):void");
    }

    public boolean isDragging() {
        return this.f6049Y != -1;
    }

    public boolean isOver() {
        return this.f6050Z;
    }

    public void setButton(int i) {
        this.f6048X = i;
    }

    public void setVisualInterpolationInverse(Interpolation interpolation) {
        this.f6051a0 = interpolation;
    }

    public void setVisualPercent(float f) {
        float f2 = this.f5943J;
        setValue(f2 + ((this.f5944K - f2) * this.f6051a0.apply(f)));
    }

    public Slider(float f, float f2, float f3, boolean z, Skin skin, String str) {
        this(f, f2, f3, z, (SliderStyle) skin.get(str, SliderStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar
    public SliderStyle getStyle() {
        return (SliderStyle) super.getStyle();
    }

    /* renamed from: o */
    public float m23787o(float f) {
        float[] fArr = this.f6052b0;
        if (fArr != null && fArr.length != 0) {
            float f2 = 0.0f;
            int i = 0;
            float f3 = -1.0f;
            while (true) {
                float[] fArr2 = this.f6052b0;
                if (i >= fArr2.length) {
                    break;
                }
                float f4 = fArr2[i];
                float abs = Math.abs(f - f4);
                if (abs <= this.f6053c0 && (f3 == -1.0f || abs < f3)) {
                    f2 = f4;
                    f3 = abs;
                }
                i++;
            }
            if (f3 != -1.0f) {
                return f2;
            }
            return f;
        }
        return f;
    }

    public void setSnapToValues(@Null float[] fArr, float f) {
        this.f6052b0 = fArr;
        this.f6053c0 = f;
    }

    public Slider(float f, float f2, float f3, boolean z, SliderStyle sliderStyle) {
        super(f, f2, f3, z, sliderStyle);
        this.f6048X = -1;
        this.f6049Y = -1;
        this.f6051a0 = Interpolation.linear;
        addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Slider.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f4, float f5, int i, @Null Actor actor) {
                if (i == -1) {
                    Slider.this.f6050Z = true;
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f4, float f5, int i, @Null Actor actor) {
                if (i == -1) {
                    Slider.this.f6050Z = false;
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f4, float f5, int i) {
                Slider.this.m23788n(f4, f5);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f4, float f5, int i, int i2) {
                Slider slider = Slider.this;
                if (slider.f5954U) {
                    return false;
                }
                int i3 = slider.f6048X;
                if ((i3 != -1 && i3 != i2) || slider.f6049Y != -1) {
                    return false;
                }
                slider.f6049Y = i;
                slider.m23788n(f4, f5);
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f4, float f5, int i, int i2) {
                Slider slider = Slider.this;
                if (i != slider.f6049Y) {
                    return;
                }
                slider.f6049Y = -1;
                if (inputEvent.isTouchFocusCancel() || !Slider.this.m23788n(f4, f5)) {
                    ChangeListener.ChangeEvent changeEvent = (ChangeListener.ChangeEvent) Pools.obtain(ChangeListener.ChangeEvent.class);
                    Slider.this.fire(changeEvent);
                    Pools.free(changeEvent);
                }
            }
        });
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar
    @Null
    /* renamed from: i */
    public Drawable mo23792i() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        SliderStyle sliderStyle = (SliderStyle) super.getStyle();
        if (this.f5954U && (drawable3 = sliderStyle.disabledBackground) != null) {
            return drawable3;
        }
        if (isDragging() && (drawable2 = sliderStyle.backgroundDown) != null) {
            return drawable2;
        }
        if (this.f6050Z && (drawable = sliderStyle.backgroundOver) != null) {
            return drawable;
        }
        return sliderStyle.background;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar
    /* renamed from: j */
    public Drawable mo23791j() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        SliderStyle sliderStyle = (SliderStyle) super.getStyle();
        if (this.f5954U && (drawable3 = sliderStyle.disabledKnobAfter) != null) {
            return drawable3;
        }
        if (isDragging() && (drawable2 = sliderStyle.knobAfterDown) != null) {
            return drawable2;
        }
        if (this.f6050Z && (drawable = sliderStyle.knobAfterOver) != null) {
            return drawable;
        }
        return sliderStyle.knobAfter;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar
    /* renamed from: k */
    public Drawable mo23790k() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        SliderStyle sliderStyle = (SliderStyle) super.getStyle();
        if (this.f5954U && (drawable3 = sliderStyle.disabledKnobBefore) != null) {
            return drawable3;
        }
        if (isDragging() && (drawable2 = sliderStyle.knobBeforeDown) != null) {
            return drawable2;
        }
        if (this.f6050Z && (drawable = sliderStyle.knobBeforeOver) != null) {
            return drawable;
        }
        return sliderStyle.knobBefore;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ProgressBar
    @Null
    /* renamed from: l */
    public Drawable mo23789l() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        SliderStyle sliderStyle = (SliderStyle) super.getStyle();
        if (this.f5954U && (drawable3 = sliderStyle.disabledKnob) != null) {
            return drawable3;
        }
        if (isDragging() && (drawable2 = sliderStyle.knobDown) != null) {
            return drawable2;
        }
        if (this.f6050Z && (drawable = sliderStyle.knobOver) != null) {
            return drawable;
        }
        return sliderStyle.knob;
    }

    /* renamed from: n */
    public boolean m23788n(float f, float f2) {
        float minWidth;
        float apply;
        float f3;
        float minHeight;
        Drawable drawable = getStyle().knob;
        Drawable mo23792i = mo23792i();
        float f4 = this.f5948O;
        float minValue = getMinValue();
        float maxValue = getMaxValue();
        if (this.f5949P) {
            float height = (getHeight() - mo23792i.getTopHeight()) - mo23792i.getBottomHeight();
            if (drawable == null) {
                minHeight = 0.0f;
            } else {
                minHeight = drawable.getMinHeight();
            }
            float bottomHeight = (f2 - mo23792i.getBottomHeight()) - (0.5f * minHeight);
            this.f5948O = bottomHeight;
            float f5 = height - minHeight;
            apply = minValue + ((maxValue - minValue) * this.f6051a0.apply(bottomHeight / f5));
            float max = Math.max(Math.min(0.0f, mo23792i.getBottomHeight()), this.f5948O);
            this.f5948O = max;
            this.f5948O = Math.min(f5, max);
        } else {
            float width = (getWidth() - mo23792i.getLeftWidth()) - mo23792i.getRightWidth();
            if (drawable == null) {
                minWidth = 0.0f;
            } else {
                minWidth = drawable.getMinWidth();
            }
            float leftWidth = (f - mo23792i.getLeftWidth()) - (0.5f * minWidth);
            this.f5948O = leftWidth;
            float f6 = width - minWidth;
            apply = minValue + ((maxValue - minValue) * this.f6051a0.apply(leftWidth / f6));
            float max2 = Math.max(Math.min(0.0f, mo23792i.getLeftWidth()), this.f5948O);
            this.f5948O = max2;
            this.f5948O = Math.min(f6, max2);
        }
        if (!Gdx.input.isKeyPressed(59) && !Gdx.input.isKeyPressed(60)) {
            f3 = m23787o(apply);
        } else {
            f3 = apply;
        }
        boolean value = setValue(f3);
        if (f3 == apply) {
            this.f5948O = f4;
        }
        return value;
    }
}
