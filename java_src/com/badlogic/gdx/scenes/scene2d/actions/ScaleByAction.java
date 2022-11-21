package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class ScaleByAction extends RelativeTemporalAction {

    /* renamed from: v */
    public float f5752v;

    /* renamed from: w */
    public float f5753w;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.RelativeTemporalAction
    /* renamed from: d */
    public void mo23851d(float f) {
        this.f5618b.scaleBy(this.f5752v * f, this.f5753w * f);
    }

    public float getAmountX() {
        return this.f5752v;
    }

    public float getAmountY() {
        return this.f5753w;
    }

    public void setAmount(float f, float f2) {
        this.f5752v = f;
        this.f5753w = f2;
    }

    public void setAmountX(float f) {
        this.f5752v = f;
    }

    public void setAmountY(float f) {
        this.f5753w = f;
    }

    public void setAmount(float f) {
        this.f5752v = f;
        this.f5753w = f;
    }
}
