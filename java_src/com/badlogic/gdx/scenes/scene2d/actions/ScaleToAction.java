package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class ScaleToAction extends TemporalAction {

    /* renamed from: u */
    public float f5754u;

    /* renamed from: v */
    public float f5755v;

    /* renamed from: w */
    public float f5756w;

    /* renamed from: x */
    public float f5757x;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        float f2;
        float f3;
        if (f == 0.0f) {
            f3 = this.f5754u;
            f2 = this.f5755v;
        } else if (f == 1.0f) {
            f3 = this.f5756w;
            f2 = this.f5757x;
        } else {
            float f4 = this.f5754u;
            float f5 = f4 + ((this.f5756w - f4) * f);
            float f6 = this.f5755v;
            f2 = f6 + ((this.f5757x - f6) * f);
            f3 = f5;
        }
        this.f5618b.setScale(f3, f2);
    }

    public float getX() {
        return this.f5756w;
    }

    public float getY() {
        return this.f5757x;
    }

    public void setScale(float f, float f2) {
        this.f5756w = f;
        this.f5757x = f2;
    }

    public void setX(float f) {
        this.f5756w = f;
    }

    public void setY(float f) {
        this.f5757x = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5754u = this.f5618b.getScaleX();
        this.f5755v = this.f5618b.getScaleY();
    }

    public void setScale(float f) {
        this.f5756w = f;
        this.f5757x = f;
    }
}
