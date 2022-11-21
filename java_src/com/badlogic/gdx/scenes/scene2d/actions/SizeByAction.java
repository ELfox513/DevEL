package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public class SizeByAction extends RelativeTemporalAction {

    /* renamed from: v */
    public float f5759v;

    /* renamed from: w */
    public float f5760w;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.RelativeTemporalAction
    /* renamed from: d */
    public void mo23851d(float f) {
        this.f5618b.sizeBy(this.f5759v * f, this.f5760w * f);
    }

    public float getAmountHeight() {
        return this.f5760w;
    }

    public float getAmountWidth() {
        return this.f5759v;
    }

    public void setAmountHeight(float f) {
        this.f5760w = f;
    }

    public void setAmountWidth(float f) {
        this.f5759v = f;
    }

    public void setAmount(float f, float f2) {
        this.f5759v = f;
        this.f5760w = f2;
    }
}
