package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.math.MathUtils;
/* loaded from: classes.dex */
public class RotateToAction extends TemporalAction {

    /* renamed from: u */
    public float f5747u;

    /* renamed from: v */
    public float f5748v;

    /* renamed from: w */
    public boolean f5749w;

    public RotateToAction() {
        this.f5749w = false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5747u = this.f5618b.getRotation();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        float f2;
        if (f == 0.0f) {
            f2 = this.f5747u;
        } else if (f == 1.0f) {
            f2 = this.f5748v;
        } else if (this.f5749w) {
            f2 = MathUtils.lerpAngleDeg(this.f5747u, this.f5748v, f);
        } else {
            float f3 = this.f5747u;
            f2 = f3 + ((this.f5748v - f3) * f);
        }
        this.f5618b.setRotation(f2);
    }

    public float getRotation() {
        return this.f5748v;
    }

    public boolean isUseShortestDirection() {
        return this.f5749w;
    }

    public void setRotation(float f) {
        this.f5748v = f;
    }

    public void setUseShortestDirection(boolean z) {
        this.f5749w = z;
    }

    public RotateToAction(boolean z) {
        this.f5749w = z;
    }
}
