package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class MoveByAction extends RelativeTemporalAction {

    /* renamed from: v */
    public float f5729v;

    /* renamed from: w */
    public float f5730w;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.RelativeTemporalAction
    /* renamed from: d */
    public void mo23851d(float f) {
        this.f5618b.moveBy(this.f5729v * f, this.f5730w * f);
    }

    public float getAmountX() {
        return this.f5729v;
    }

    public float getAmountY() {
        return this.f5730w;
    }

    public void setAmountX(float f) {
        this.f5729v = f;
    }

    public void setAmountY(float f) {
        this.f5730w = f;
    }

    public void setAmount(float f, float f2) {
        this.f5729v = f;
        this.f5730w = f2;
    }
}
