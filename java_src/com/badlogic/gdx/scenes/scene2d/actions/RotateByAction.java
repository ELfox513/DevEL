package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class RotateByAction extends RelativeTemporalAction {

    /* renamed from: v */
    public float f5746v;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.RelativeTemporalAction
    /* renamed from: d */
    public void mo23851d(float f) {
        this.f5618b.rotateBy(this.f5746v * f);
    }

    public float getAmount() {
        return this.f5746v;
    }

    public void setAmount(float f) {
        this.f5746v = f;
    }
}
