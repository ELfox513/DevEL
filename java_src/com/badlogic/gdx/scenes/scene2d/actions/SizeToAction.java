package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class SizeToAction extends TemporalAction {

    /* renamed from: u */
    public float f5761u;

    /* renamed from: v */
    public float f5762v;

    /* renamed from: w */
    public float f5763w;

    /* renamed from: x */
    public float f5764x;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        float f2;
        float f3;
        if (f == 0.0f) {
            f3 = this.f5761u;
            f2 = this.f5762v;
        } else if (f == 1.0f) {
            f3 = this.f5763w;
            f2 = this.f5764x;
        } else {
            float f4 = this.f5761u;
            float f5 = f4 + ((this.f5763w - f4) * f);
            float f6 = this.f5762v;
            f2 = f6 + ((this.f5764x - f6) * f);
            f3 = f5;
        }
        this.f5618b.setSize(f3, f2);
    }

    public float getHeight() {
        return this.f5764x;
    }

    public float getWidth() {
        return this.f5763w;
    }

    public void setHeight(float f) {
        this.f5764x = f;
    }

    public void setWidth(float f) {
        this.f5763w = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5761u = this.f5618b.getWidth();
        this.f5762v = this.f5618b.getHeight();
    }

    public void setSize(float f, float f2) {
        this.f5763w = f;
        this.f5764x = f2;
    }
}
