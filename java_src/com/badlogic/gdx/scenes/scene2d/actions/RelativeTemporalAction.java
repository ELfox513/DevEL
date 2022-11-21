package com.badlogic.gdx.scenes.scene2d.actions;
/* loaded from: classes.dex */
public abstract class RelativeTemporalAction extends TemporalAction {

    /* renamed from: u */
    public float f5738u;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5738u = 0.0f;
    }

    /* renamed from: d */
    public abstract void mo23851d(float f);

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        mo23851d(f - this.f5738u);
        this.f5738u = f;
    }
}
