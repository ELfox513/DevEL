package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class FloatAction extends TemporalAction {

    /* renamed from: u */
    public float f5722u;

    /* renamed from: v */
    public float f5723v;

    /* renamed from: w */
    public float f5724w;

    public FloatAction() {
        this.f5722u = 0.0f;
        this.f5723v = 1.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5724w = this.f5722u;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        if (f == 0.0f) {
            this.f5724w = this.f5722u;
        } else if (f == 1.0f) {
            this.f5724w = this.f5723v;
        } else {
            float f2 = this.f5722u;
            this.f5724w = f2 + ((this.f5723v - f2) * f);
        }
    }

    public float getEnd() {
        return this.f5723v;
    }

    public float getStart() {
        return this.f5722u;
    }

    public float getValue() {
        return this.f5724w;
    }

    public void setEnd(float f) {
        this.f5723v = f;
    }

    public void setStart(float f) {
        this.f5722u = f;
    }

    public void setValue(float f) {
        this.f5724w = f;
    }

    public FloatAction(float f, float f2) {
        this.f5722u = f;
        this.f5723v = f2;
    }

    public FloatAction(float f, float f2, float f3) {
        super(f3);
        this.f5722u = f;
        this.f5723v = f2;
    }

    public FloatAction(float f, float f2, float f3, @Null Interpolation interpolation) {
        super(f3, interpolation);
        this.f5722u = f;
        this.f5723v = f2;
    }
}
